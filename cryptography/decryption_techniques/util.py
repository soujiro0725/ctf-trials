# codign: utf-8
import string

def load(textfile):
    f = open(textfile)
    text = f.read()
    f.close()
    return "".join(text.split())

