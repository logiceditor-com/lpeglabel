package = "LPegLabel"
version = "1.6.0.7.g197546f-1"
source = {
   url = "git://github.com/logiceditor-com/lpeglabel.git",
   branch = "v1.6.0.7.g197546f",
}
description = {
   summary = "Parsing Expression Grammars For Lua with Labeled Failures",
   detailed = [[
     LPegLabel is a conservative extension of the LPeg library that provides
     an implementation of Parsing Expression Grammars (PEGs) with labeled failures.
     By using labeled failures we can properly report syntactical errors.
     We can also recover from such errors by describing a grammar rule with
     the same name of a given label.
     LPegLabel also reports the farthest failure position in case of an ordinary failure.
   ]],
   homepage = "https://github.com/sqmedeiros/lpeglabel/",
   maintainer = "Sergio Medeiros <sqmedeiros@gmail.com>",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      lpeglabel = {
         "lplcap.c", "lplcode.c", "lplprint.c", "lpltree.c", "lplvm.c"
      },
      relabel = "relabel.lua"
   }
}
