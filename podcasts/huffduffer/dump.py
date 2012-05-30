#!/usr/bin/python
"parse XML (RSS feed) from http://huffduffer.com "
import os
import sys
import xml.etree.ElementTree as ET

if len(sys.argv) < 2:
    sys.exit('Usage: %s huffduffer.xml' % sys.argv[0])
if not os.path.exists(sys.argv[1]):
    sys.exit('Huffduffer XML file "%s" was not found' % sys.argv[1])

tree = ET.parse(sys.argv[1])

for item in tree.findall("channel/item"):
    #ET.dump(item)
    print item.findtext("title")
