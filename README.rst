Paradigms of AI Programming Source Code
=======================================

This page is the index for the Lisp source code files for the book *Paradigms
of Artificial Intelligence Programming*. The code is offered as open source
freeware under `this license`_. You can browse all the files in the github
repository.

Installation Instructions
-------------------------

#.  ``git clone`` the source code from the github repository.

#.  You must have a lisp compiler/interpreter.

#.  To test all the code, start lisp in the project directory and do the
    following at the interactive prompt:

.. code:: lisp

    (load "auxfns.lisp")
    (requires "examples")
    (do-examples :all)

This should print out a long list of inputs and outputs, and the last
output should be the total number of errors. If all goes well, this should be
"0".

Use
---

To use the code, edit any of the files or add new files. You will always
have to do ``(load "auxfns.lisp")`` first, and you will typically have to do
``(requires "file")``, for various instances of *file* that you want to use.

The function "requires" is used for a primitive form of control over what files
require other files to be loaded first. If "requires" does not work properly on
your system you may have to alter its definition, in the file "auxfns.lisp".
For more complicated use of these files, you should follow the guidelines for
organizing files explained in Chapter 24.

The function ``do-examples``, which takes as an argument either ``:all`` or a
chapter number or a list of chapter numbers, can be used to see examples of the
use of various functions. For example, ``(do-examples 1)`` shows the examples
from chapter 1.

The Files
---------

The index below gives the chapter in the book, file name, and short description
for each file.

Chapter Filename        Description
======= ========        ===========
        README.rst      This file: explanation and index
        examples.lisp   A list of example inputs taken from the book
        tutor.lisp      An interpreter for running the examples
        auxfns.lisp     Auxiliary functions; load this before anything else
1       intro.lisp      A few simple definitions
2       simple.lisp     Random sentence generator (two versions)
3       overview.lisp   14 versions of LENGTH and other examples
4       gps1.lisp       Simple version of General Problem Solver
4       gps.lisp        Final version of General Problem Solver
5       eliza1.lisp     Basic version of Eliza program
5       eliza.lisp      Eliza with more rules; different reader
6       patmatch.lisp   Pattern Matching Utility
6       eliza-pm.lisp   Version of Eliza using utilities
6       search.lisp     Search Utility
6       gps-srch.lisp   Version of GPS using the search utility
7       student.lisp    The Student Program
8       macsyma.lisp    The Macsyma Program
8       macsymar.lisp   Simplification and integration rules for Macsyma
9-10                    no files; important functions in auxfns.lisp
11      unify.lisp      Unification functions
11      prolog1.lisp    First version of Prolog interpreter
11      prolog.lisp     Final version of Prolog interpreter
12      prologc1.lisp   First version of Prolog compiler
12      prologc2.lisp   Second version of Prolog compiler
12      prologc.lisp    Final version of Prolog compiler
12      prologcp.lisp   Primitives for Prolog compiler
13      clos.lisp       Some object-oriented and CLOS code
14      krep1.lisp      Knowledge Representation code: first version
14      krep2.lisp      Knowledge Representation code with conjunctions
14      krep.lisp       Final KR code: worlds and attached functions
15      cmacsyma.lisp   Efficient Macsyma with canonical form
16      mycin.lisp      The Emycin expert system shell
16      mycin-r.lisp    Some rules for a medical application of emycin
17      waltz.lisp      A Line-Labeling program using the Waltz algorithm
18      othello.lisp    The Othello playing program and some strategies
18      othello2.lisp   Additional strategies for Othello
18      edge-tab.lisp   Edge table for Iago strategy
19      syntax1.lisp    Syntactic Parser
19      syntax2.lisp    Syntactic Parser with semantics
19      syntax3.lisp    Syntactic Parser with semantics and preferences
20      unifgram.lisp   Unification Parser
21      grammar.lisp    Comprehensive grammar of English
21      lexicon.lisp    Sample Lexicon of English
22      interp1.lisp    Scheme interpreter, including version with macros
22      interp2.lisp    A tail recurive Scheme interpreter
22      interp3.lisp    A Scheme interpreter that handles call/cc
23      compile1.lisp   Simple Scheme compiler
23      compile2.lisp   Compiler with tail recursion and primitives
23      compile3.lisp   Compiler with peephole optimizer
23      compopt.lisp    Peephole optimizers for compile3.lisp
24      loop.lisp       Load this first if your Lisp doesn't support ANSI LOOP

.. Links:
.. _this license: LICENSE.rst
