This directory contains template files for a D.Phil thesis in Particle Physics.
The basic structure is as follows:

* The top level LaTeX file is thesis.tex. This includes each chapter and other
  sections as required. Two "\documentclass" declarations are provided, one for
  the final library version (single sided) and one suitable for double sided
  printing.

* preamble.tex contains the "\usepackage" statements and defines the page size
  and margins. Three options are given for bound single side (final library)
  copies, bound double side and unbound double side versions.

* Global macros are in commands.tex. This includes a consistent way to start 
  new chapters and sections (including setting the page headings to the chapter
  and section titles) and defining section labels. An additional command 
  "\cabs" is provided to add a small abstract-like block at the beginning of
  each chapter. Other global macros can be added here as required.

* As the title and abstract must be included in two separate places (bound into
  the thesis and on a separate page), the thesis title, author details and
  the abstract text are defined in covertex.tex. This is just for convenience -
  the text could be cut-and-paste between the thesis and abstract as required.
  The file abstract.tex then defines a separate document for the stand-alone 
  abstract required for the final library copy of the thesis.

* titleandcontents.tex includes the title page (using the macros in 
  covertex.tex) and makes the title page, abstract, dedication and 
  acknowledgements (if required) before including the table of contents, list
  of figures and list of tables. Suitable page numbering and layer is also 
  defined for each section.

* In glossary.tex, a manually built description list of glossary items is 
  defined, again with suitable page numbering and layout.

* Each chapter is then included in turn. One example, chapter1.tex, using the 
  \newchapter, \newsection and \cabs commands from commands.tex is included.
  An example figure, equation and table is given in this chapter. Similarly,
  an example appendix, appendix1.tex, is also included.

* bibliography.tex defines a biblography using the BiBTeX database in 
  references.bib and the thesis.bst style. By adding suitable references in
  the BiBTeX database and \cite commands in the text, the full bibliography 
  will be built by this section.

* Finally, there are a few (optional) labelling conventions - chapter labels
  are prefixed with "c:", section labels with "s:", figure labels with "f:",
  table labels with "t:" and equation labels with "e:".

The thesis can be built with the following commands (on Unix/Linux/Windows):

> latex thesis
> bibtex thesis
> latex thesis
> latex thesis
> dvips thesis.dvi

---
These files were prepared by David Bailey <d.bailey2@physics.ox.ac.uk>

His complete thesis (giving more LaTeX examples, a complete Makefile and perl
scripts for splitting the output into printable sections) can be found at:

http://antares.in2p3.fr/users/bailey/thesis/index.html

---

The template thesis is available on the Windows system in
  S:\PPThesis\Template
The full source mentioned above has been copied to
  S:\PPThesis\Source
 on the Windows system.

To use either the template or the full source copy the complete folder tree
 into your own area and use with the commands given above or with the WinTeX
 package. 

---


