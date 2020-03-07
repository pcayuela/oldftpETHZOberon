(* OBERON System 3, Release 2.3.

MimeArchive.Mod copyright (C) 2000 Peter Lyall Easthope.  All rights reserved.
mailto: peter_easthope@gulfnet.pinc.com.

*)

MODULE MimeArchive;
(** Build a multipart MIME archive file conforming to RFC 1341 residing 
	at http://www.ietf.org/.

	Compiler.Compile @ this module and then execute MimeArchive.Build 
	to create a multipart MIME archive containing base64 encodings of files.  
	The files put into the archive are named by the constants File1 .. FileN.  
	The file names recorded in the archive are in the constants Name1 .. 
	NameN.  The archive is stored in the file named in the constant ArchFile. 
	
	You will not want the selection of files which I insert in the archive.
	Edit the definitions of file names under CONST and edit the the code in 
	the body of the Build procedure to suit your requirements. N can be
	whatever is needed. *)

	IMPORT Base64, Files, Oberon, Texts; (* Texts.Mod is helpful. *)
	CONST
		Boundary = "simple boundary";  (* Boundary to separate MIME parts. *)

(* These names specify the files to be put into the archive. *)
		File1 = "readme.kfc";   (* The first file to be encoded. *)
		Name1 = "readme.kfc";  (* The name to be shown in the MIME archive. *)
		File2 = "datefil0.5";
		Name2 = "datefil0.5";
		File3 = "ktfc0d5.txt";
		Name3 = "ktfc0d5.txt";
		File4 = "mailout.dist";
		Name4 = "mailout";
		File5 = "prolog0.5.dist";
		Name5 = "prolog0.5";
		File6 = "scan0.5.dist";
		Name6 = "scan0.5";
		File7 = "sr0.5";  (* The last file to be encoded. *)
		Name7 = "sr0.5";  (* The name to be shown in the MIME archive. *)

		ArchFile = "test.64";  (* The archive file. *)
		(* ArchFile = "ktfc0d5.64";   The archive file. *)

(* Module Outline

	PROCEDURE Build*
		PROCEDURE WriteHeader;
		PROCEDURE WriteString(string: ARRAY OF CHAR)
		PROCEDURE WriteLn
		PROCEDURE WriteQuote
		PROCEDURE WriteStringLn(string: ARRAY OF CHAR)
		PROCEDURE WriteBoundary
		PROCEDURE WriteHBoundaryLn
		PROCEDURE WriteType(Type: ARRAY OF CHAR; Name: ARRAY OF CHAR)
		PROCEDURE WriteTextType(Name: ARRAY OF CHAR)
		PROCEDURE WriteDisposition(Name: ARRAY OF CHAR)
		PROCEDURE WriteTextPart(File, Name: ARRAY OF CHAR)
		PROCEDURE WriteClosure
		PROCEDURE StoreAscii
		PROCEDURE ReportToLog		
*)

	PROCEDURE Build*;
		VAR
			W: Texts.Writer; (* W is used to assemble strings in a buffer. *)
			T: Texts.Text;  (* The buffer and the encoded text from a file are 
									appended to T.  This is done for each file and then
									T is stored as the archive file, ArchFile. *)
			f: Files.File;
			len: LONGINT;

		PROCEDURE WriteHeader;
		BEGIN
			Texts.OpenWriter(W);  (* Text will be assembled in the buffer of W
													and then copied to T. *)
			WriteStringLn("MIME-Version: 1.0");  (* Begin putting text into W *)
			WriteString("Content-type: multipart/mixed; boundary=");
			WriteQuote; WriteBoundary; WriteQuote; WriteLn; WriteLn;
			WriteString("This is MIME archive file "); WriteString(ArchFile); WriteStringLn(".");  
			WriteStringLn("Copyright (C) Peter Lyall Easthope, 2000.  All rights reserved.");  
			WriteLn;  
			WriteStringLn("Apply a MIME base64 decoder.  MIME en/decoding programs are");  
			WriteStringLn("available for all operating systems in current use.  In MS-DOS,");  
			WriteStringLn("MIME64 written by Karl Hahn will work.  Search for mime64b.zip on");  
			WriteString("the Web.  After extracting the files, mime64 will report "); 
			WriteQuote; WriteStringLn("No MIME");  
			WriteString("base64 lines found in ktfc0d5.64"); WriteQuote; 
			WriteString(".  Don't worry about this message.");  
			Texts.Append(T, W.buf); (* Copy the buffer of W to T. *)
		END WriteHeader;

		PROCEDURE WriteString(string: ARRAY OF CHAR);
		BEGIN
			Texts.WriteString(W, string)
		END WriteString;

		PROCEDURE WriteLn;
		BEGIN
			Texts.WriteLn(W)
		END WriteLn;

		PROCEDURE WriteQuote;
		BEGIN
			Texts.Write(W, 22X)
		END WriteQuote;

		PROCEDURE WriteStringLn(string: ARRAY OF CHAR);
		BEGIN
			Texts.WriteString(W, string); WriteLn
		END WriteStringLn;

		PROCEDURE WriteBoundary;
		BEGIN
			WriteString(Boundary)
		END WriteBoundary;

		PROCEDURE WriteHBoundaryLn;
		BEGIN
			WriteString("--"); WriteBoundary; WriteLn
		END WriteHBoundaryLn;

		PROCEDURE WriteType(Type: ARRAY OF CHAR; Name: ARRAY OF CHAR);
		BEGIN
			WriteString("Content-type: "); WriteString(Type);
			WriteString("; charset=us-ascii; name=");
			WriteQuote; WriteString(Name); WriteQuote; WriteLn
		END WriteType;

		PROCEDURE WriteTextType(Name: ARRAY OF CHAR);
		BEGIN
			WriteType("text/plain", Name)
		END WriteTextType;

		PROCEDURE WriteDisposition(Name: ARRAY OF CHAR);
		BEGIN
			Texts.WriteString(W, "Content-Disposition: inline; filename=");
			WriteQuote; WriteString(Name); WriteQuote; WriteLn
		END WriteDisposition;

		PROCEDURE WriteTextPart(File, Name: ARRAY OF CHAR);
		BEGIN
			Texts.OpenWriter(W);
			WriteLn; WriteLn;
			WriteHBoundaryLn; 
			WriteTextType(Name);
			WriteDisposition(Name);
			WriteStringLn("Content-Transfer-Encoding: base64");
			WriteLn;
			Texts.Append(T, W.buf);
			f := Files.Old(File);  ASSERT(f # NIL);
			Base64.EncodeFile(f, T)
		END WriteTextPart;
	
		PROCEDURE WriteClosure;
		BEGIN
			Texts.OpenWriter(W); (* Open W again to write the closing boundary. *)
			WriteLn; WriteLn;
			WriteString("--"); WriteBoundary; WriteStringLn("--");
			Texts.Append(T, W.buf);
		END WriteClosure;

		PROCEDURE StoreAscii; (* Store T in the ArchFile with lines ending CR LF. *)
		CONST
			LF = 0AX; CR = 0DX;

		VAR
			ch: CHAR;			(* ch, r and R are used in translating the end-of-line *)
			r: Files.Rider;		(* notations from CR to CR LF. *)
			R: Texts.Reader;
		BEGIN  (* StoreAscii *)
			f := Files.New(ArchFile);
			Files.Set(r, f, 0);	(* Associate the rider with the file. *)
			Texts.OpenReader(R, T, 0); Texts.Read(R, ch);
			WHILE ~ R.eot DO
				Files.Write(r, ch); IF (ch = CR) THEN Files.Write(r, LF) END;
				Texts.Read(R, ch)
			END;
			Files.Register(f)
		END StoreAscii;

		PROCEDURE ReportToLog;
		BEGIN
			Texts.OpenWriter(W); (* Open W for the last time to report to the Log. *)
			WriteString("MIME archive stored in "); WriteStringLn(ArchFile);
			Texts.Append(Oberon.Log, W.buf)  (* Append W's text buffer to the log *)
		END ReportToLog;

	BEGIN  (* Build *)
		NEW(T); Texts.Open(T, "");  (* "" means open a new text. *)

		WriteHeader; (* Header of archive and preamble described in RFC 1341. *)

		WriteTextPart(File1, Name1);  (* Append the header and encoded text of a file to T. *)
		WriteTextPart(File2, Name2);
		WriteTextPart(File3, Name3);
		WriteTextPart(File4, Name4);
		WriteTextPart(File5, Name5);
		WriteTextPart(File6, Name6);
		WriteTextPart(File7, Name7);
			
		WriteClosure;

		StoreAscii; (* Store T in the ArchFile with lines ending CR LF. *)
		
		ReportToLog
				
	END Build;

BEGIN (* MimeArchive *)
END MimeArchive.
