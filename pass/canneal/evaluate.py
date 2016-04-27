from __future__ import division
import os

#def load(fn='output.txt'):
def load(fn):
    if os.path.isfile(fn) == False:
        return -1
    
    with open(fn) as f:
        if f:
            return float(f.read())
        else:
            return -1

def score(orig, relaxed):
    a = load(relaxed)
    b = load(orig)
    if a == -1 or b == -1 or b == 0.0:
        return 1.0
    else:
        result = a / b - 1.0
        return result
