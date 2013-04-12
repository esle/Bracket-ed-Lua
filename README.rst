About
=======

Based on Lua 5.2.2

Compatible with original Lua - **except for one thing: you cannot do** ``f{x=1,y=2}`` **stuff now, use** ``f({x=1,y=2})`` **instead**

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
    for i=1,10 do
        print(g())
    end


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

Working well - I think

