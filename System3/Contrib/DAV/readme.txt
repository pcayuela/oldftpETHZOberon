WebDAV versioning
Edgar Schwarz, Edgar@EdgarSchwarz.de
$VCS   2, Edgar@EdgarSchwarz.de, 28 May :0, 23:41:32 $
Draft, alpha

Requirements
- Introduction
This document describes requirements, design and implementation of a 
package to version control local and remote files with Oberon 
System3. Client and Server are based on Oberon. The protocol between 
client and server is based on WebDAV versioning (RFC 2518). So if 
sometime the full WebDAV protocol is implemented the restriction on 
Oberon can be lifted.
Questions and comment are welcome. This is far from complete, but I 
think it's a foundation on which it's possible to coordinate 
distributed development for Oberon projects which aren't simple 
enough that one lone developer can shoulder it.
- General Description
Implementing a simple remote versioning system for Oberon System3.  
WebDAV versioning is used for communicating between client and 
server. User Interface will be the  VCS.Panel.
The idea is that anybody can READ the files on the server.
For working on a project it is possible to define workspaces  (That's 
WebDAV lingo). A workspace can contain working resources (editable 
files) of versioned resources (files under version control). A 
workspace is realized at the moment just by a bunch of files having 
the workspace name as a common prefix. So it is nice if it ends with 
a '.'. If it would end with a ':' this would imply that it is a 
mounted filesystem. This is an interesting option because WebDAV 
allows collections (sort of directories) in contrast to Oberon.
Access to a workspace is controlled by a username/password pair which 
is given by an administrator of the server on request. As a test 
server at the moment for validating the whole project there is 
shaun.inf.ethz.ch. If you are interested in the project please 
contact me at Edgar@EdgarSchwarz.de. 
Having access to a workspace means that you can checkout a resource 
(create a editable working resource). Change this working resource 
and create a new version. Afterwards you can tell your collaborators 
who also work in the workspace that you created a new version and 
they can get it if they are interested. For defining a release of a 
project its enough to have a list of the files and their versions 
which belong to it. Stuff for this already exist as you can see in 
some buttons  VCS.Panel (PartVersions, CheckParts, ExtractParts). For 
checking differences between versions of resources I also have a Diff 
which not only allows to show two files side by side but also allows 
just to show the differences. It's not perfect (e.g when there are 
differences at the end of two files) but it helps to see what changed 
between two versions.
For installation instructions please have a look at paragraph 
'Installation' below.
- Functional Requirements
-- CheckOut: creating a working resource based on a version
-- CheckIn: creating a new version as a successor of the working 
resource
-- Report: get information on the existing versions
-- PropFind: get information on a specific version
- Interface Requirements
-- User Interfaces
--- GUI
For this purpose  VCS.Panel is used. It was originally developed for 
local functions only but will be extended for remote functonality.
--- CLI
The commands from the Panel also can be used individually. This will 
be put into a tool.
-- Communications Interfaces
The internet connection will work with the WebDAV protocol (loosely 
based on it at first). 
- Performance Requirements
- Design Constraints
- Other non-functional attributes
- Preliminary Object-Oriented Domain Analysis
-- Inheritance Relationships
-- Class or module descriptions
--- ObnDAV.Mod
---- Purpose
Maps WebDAV versioning requirements to the undelying versioning 
machine.
- Operationl Scenarios
- Preliminary Schedule
- Preliminary Budget
- Appendices
-- Definitions, Acronyms, Abbreviations
-- References

Design
- Introduction
The system is running with Oberon System3 and so it uses the means 
Oberon is giving to it.
- General description
The GUI is realized by a panel which calls a servive module which 
decides whether it's a local or a remote request.
- System Architecture
Overview 


- System Components
-- VCS.Panel
--- Screenshot


--- Commands
	PartVersions ^ : VCSPacket.PartVersions ^
	CheckParts ^ : VCSPacket.CheckParts ^
	ExtractParts ^ : VCSPacket.ExtractParts &ExtractOpts.Value  ^
	Report VCSNet.Report &D.Value
	CheckIn VCSNet.CheckIn &D.Value  '&A.Value ' '&Log.Value ' '&M.YesVal 
'
	PropFind VCSNet.PropFind  &D.Value  &Version.Value
	CheckOut VCSNet.CheckOut  &D.Value  &Version.Value
-- VCSNet.Mod

- Appendices

Installation
- This is a prelimimary description hoping to be still fast enough to 
become part of the next NO Beta.
It would be nice if you have a server and a client machine at hand. 
Some tests are also possible on a single machine but I will describe 
this option later if I have time and some people are interested. I 
know that only few people will have two machines at hand but I will 
describe the other stuff real soon now. I'm using port 2518 (remember 
the RFC :-) to avoid any conflicts with the normal HTTP server 
running at 80 at the moment.
 
