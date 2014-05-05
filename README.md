kermit
======

* Auther: Louis Coilliot - Marco Mornati
* website: http://www.kermit.fr
* Source: https://github.com/kermitfr/


About
===

KermIT is an opensource IT management solution.

KermIT integrates best of breed opensource components with a Web user interface and dashboard to provide a central management solution for IT systems and applications.

It provides a consistent, secure framework and a scalable architecture.

It manages Linux, Unix and Windows systems.

KermIT relies in the backend on Puppet and MCollective.

The license of the developments is the GPL v.3 for the generic part of the source code.

Check the screencasts !

Architecture
===

KermIT integrates best of breed opensource components with a WebUI

  * Puppet
    * template-centric
    * deployment of the solution
    * configuration templates
    * categorization of managed nodes
  * MCollective
    * action-centric
    * communication between the nodes and the NOC(s)
    * orchestration tool
  * a WebUI developed with the Django web python framework and some AJAX
  * a REST server for communication b/t frontend & backend loosely coupled, language agnostic and resilient with Phusion Passenger
