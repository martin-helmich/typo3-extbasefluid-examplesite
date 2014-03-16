TYPO3 Extbase example site
==========================

What is this?
-------------

This repository contains an example [TYPO3 CMS](http://typo3.org) site for
use with the book [Zukunftssichere TYPO3-Extensions mit Extbase & Fluid](http://www.oreilly.de/catalog/typo3ext2ger/),
published by O'Reilly.

This site contains two TYPO3 extensions based on Extbase:

- [inventory](html/typo3conf/ext/inventory) is a simple extension that demonstrates
  the use of the *extension_builder* extension.
- [sjr_offers](https://github.com/martin-helmich/typo3-sjroffers) is a real-life
  extension that demonstrates the more advanced concepts of Extbase extension
  development.

Usage
-----

This repository contains a [vagrant configuration file](Vagrantfile) that allows
to easily setup a virtual machine containing this site. You can start the machine
with `vagrant up` and then access it via `http://localhost:8080` in your browser.

You can access the TYPO3 backend with the username *admin* and password *admin*.
