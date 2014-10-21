#! /usr/bin/env python
# -*- coding: utf-8 -*-
import sys, libxml2

def open(xml_file, query):  
  doc = libxml2.parseFile (xml_file) 
  ctxt = doc.xpathNewContext()
  students = ctxt.xpathEval(query)
  print students
  ctxt.xpathFreeContext()
  doc.freeDoc()

def main(argv):
  queries = ["/bookstore/*",
	     "//book[@cover]",
    	     "//book[child::year = '2003']", 
             "//book[child::price>=30 and child::price<40 ]/title"]
  for s in queries:
    print s
    print
    open(argv[1], s)
    print

if __name__ == '__main__':
	main(sys.argv)
