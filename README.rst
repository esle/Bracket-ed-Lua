About
=======

Based on Lua 5.2.0

Done some tweaks on lparser.c and nothing else

Why
=======

I do this just for fun

Well, not just for fun actually - using ``{`` and ``}`` notation, I can benefit
more from VIM, e.g. ``%``, ``[[``, ``]]``, ``gd`` &etc.

- and I love VIM

Samples
=========

::

    local f = function() {
        local i=0;
        return function() {
            i=i+1;
            return i;
        }
    }
    local g = f()
    for i=1,10 {
        print(g())
    }


::

    local i=0
    while i<10 {
        if i<5 {
            print('a')
        } elseif i<7 {
            print('b')
        } else {
            print('c')
        }
        i=i+1
    }

State
========

Almost working

