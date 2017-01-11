# Documentation index


## Short guides

- [Getting started with a LaTeX document](GettingStartedLaTeX.md)
- [Getting started with an OCaml program](GettingStartedOCaml.md)


## Starting points for users

The file [README](../README.md) contains instructions to
[download](Download.md) and [install](../INSTALL.md) the package and your
are now probably interested in getting started:

 - Learn how to [Prepare LaTeX documents](LaTeXDocument.md) documents,
   with support for METAPOST figures, bibliographies, and documents
   spreading acroess several files or directories (like a thesis).

 - Useful scripts support you if you
   [develop OCaml Software](DevelopOCamlSoftware.md) taking care of the
   compilation of programs, libraries and toplevels.  Dependencies are
   automatically generated with `ocamldep` and parallel builds are
   supported.

 - As a UNIX user you are likely to
   [develop shell scripts and libraries](DevelopShellScripts.md) or to
   have several [configuration files](ManageDotFiles.md) so we help you
   taking care of them.

 - It is easy to [install elisp macros](DevelopElispMacros.md)
   supporting your software project or being a project on their own.

The following list consists of projects using **BSD Owl Scripts** as
build system.  Studiying these examples is a good starting point to
start using **BSD Owl Scripts**:

- [Anvil](https://github.com/michipili/anvil), Bourne shell scripts
- [Gasoline](https://github.com/michipili/gasoline), OCaml
- [Rashell](https://github.com/michipili/rashell), OCaml
- [Blueprint](https://github.com/michipili/blueprint), Metapost macros


## Starting points for developers and porters

Be sure to [setup your environment appropriately](Developer.md) and to
read the [short description of concepts](BuildConcepts.md) for our build
system.  Happy hacking!
