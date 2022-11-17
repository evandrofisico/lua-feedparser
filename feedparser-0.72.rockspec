#!/bin/lua
package = "feedparser"
version = "0.72"
source = {
   url="git://github.com/evandrofisico/lua-feedparser",
   tag="0.72"
}
description = {
   summary = " A decent RSS and Atom XML feed parser",
   detailed = [[ 
RSS and Atom feed parser, using expat via the luaExpat binding. 
Similar to the Universal Feed Parser (http://feedparser.org), 
but less good.]],
   homepage = "https://github.com/evandrofisico/lua-feedparser",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luaexpat"
}
build = {
   type = "builtin",
   modules = {
      feedparser = "feedparser.lua",
      ['feedparser.XMLElement'] = "feedparser/XMLElement.lua",
      ['feedparser.dateparser'] = "feedparser/dateparser.lua",
      ['feedparser.url'] = "feedparser/url.lua"
   },
   copy_directories = {
   }
}
