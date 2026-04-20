## R CMD check results

0 errors | 0 warnings | 0 notes

* This is a resubmission.

In response to the reviewer's comment about references to the methodology used to create the package:
* I have updated the DESCRIPTION to include references to the methodology.

In response to the reviewer's comment about the use of \dontrun{} and ensuring that functions do not write by default
* Fixed the get_wdi_data function to avoid writing in a default path and that resolved every other issue. 

In response to the reviewer's comment about unsuppressible console output:
* Fixed the information messages to allow users to either suppress it or print the error messages.
* Removed cat and replaced it with the use verbose as TRUE or FALSE to print the message.

