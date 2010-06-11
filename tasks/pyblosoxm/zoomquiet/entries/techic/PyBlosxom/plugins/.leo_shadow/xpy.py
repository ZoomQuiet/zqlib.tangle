#@+leo-ver=4-thin
#@+node:ZoomQuiet.20060122150604:@shadow py.py
# -*- coding: utf-8 -*-
#@<< py declarations >>
#@+node:ZoomQuiet.20060122150604.1:<< py declarations >>
"""Python Source Parser

usage MoinMoin Parser

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright 2004, 2005 Wari Wahab
"""
#@-node:ZoomQuiet.20060122150604.1:<< py declarations >>
#@nl
## Leo: tab_width=-4 page_width=80
__version__ = "Jul 02, 2004 (Friday)"
__author__ = "Wari.Wahab"
__url__ = "http://pyblosxom.sourceforge.net/blog/registry/text/py"
__description__ = "MoinMoin - Python Source Parser."

#@+others
#@+node:ZoomQuiet.20060122150604.2:cb_entryparser
def cb_entryparser(args):
    args['py'] = parse
    return args
#@-node:ZoomQuiet.20060122150604.2:cb_entryparser
#@+node:ZoomQuiet.20060122150604.3:parse
def parse(filename, request):
    import os, sys
    from StringIO import StringIO

    # open own source
    config = request.getConfiguration()
    source = open(filename).read()
    out = StringIO()

    # write colorized version to "python.html"
    Parser(source, out).format(None, None)

    entryData = {'body' : out.getvalue(),
                 'title' : filename.replace(config['datadir'], '')}

    return entryData
#@-node:ZoomQuiet.20060122150604.3:parse
#@+node:ZoomQuiet.20060122150604.4:class Parser


# Imports
import cgi, string, sys, cStringIO, os
import keyword, token, tokenize


#############################################################################
### Python Source Parser (does Hilighting)
#############################################################################

_KEYWORD = token.NT_OFFSET + 1
_TEXT    = token.NT_OFFSET + 2

_colors = {
    token.NUMBER:       '#0080C0',
    token.OP:           '#0000C0',
    token.STRING:       '#004080',
    tokenize.COMMENT:   '#008000',
    token.NAME:         '#000000',
    token.ERRORTOKEN:   '#FF8080',
    _KEYWORD:           '#C00000',
    _TEXT:              '#000000',
}

LINEFEED = os.linesep


class Parser:
    """ Send colored python source.
    """
    #@	@+others
    #@+node:ZoomQuiet.20060122150604.5:__init__
    def __init__(self, raw, out = sys.stdout):
        """ Store the source text.
        """
        self.raw = string.strip(string.expandtabs(raw))
        self.out = out
    #@-node:ZoomQuiet.20060122150604.5:__init__
    #@+node:ZoomQuiet.20060122150604.6:format
    def format(self, formatter, form):
        """ Parse and send the colored source.
        """
        # store line offsets in self.lines
        self.lines = [0, 0]
        pos = 0
        while 1:
            pos = string.find(self.raw, LINEFEED, pos) + 1
            if not pos: break
            self.lines.append(pos)
        self.lines.append(len(self.raw))

        # parse the source and write it
        self.pos = 0
        text = cStringIO.StringIO(self.raw)
        self.out.write('<pre><font face="Lucida,Courier New">')
        try:
            tokenize.tokenize(text.readline, self)
        except tokenize.TokenError, ex:
            msg = ex[0]
            line = ex[1][0]
            self.out.write("<h3>ERROR: %s</h3>%s%s" % (
                msg, self.raw[self.lines[line]:], LINEFEED))
        self.out.write('</font></pre>')
        #self.out.write(self.lines)
    #@-node:ZoomQuiet.20060122150604.6:format
    #@+node:ZoomQuiet.20060122150604.7:__call__
    def __call__(self, toktype, toktext, (srow,scol), (erow,ecol), line):
        """ Token handler.
        """
        if 0:
            print "type", toktype, token.tok_name[toktype], "text", toktext,
            print "start", srow,scol, "end", erow,ecol, "<br />"

        # calculate new positions
        oldpos = self.pos
        newpos = self.lines[srow] + scol
        self.pos = newpos + len(toktext)

        # handle newlines
        if toktype in [token.NEWLINE, tokenize.NL]:
            self.out.write(LINEFEED)
            return

        # send the original whitespace, if needed
        if newpos > oldpos:
            self.out.write(self.raw[oldpos:newpos])

        # skip indenting tokens
        if toktype in [token.INDENT, token.DEDENT]:
            self.pos = newpos
            return

        # map token type to a color group
        if token.LPAR <= toktype and toktype <= token.OP:
            toktype = token.OP
        elif toktype == token.NAME and keyword.iskeyword(toktext):
            toktype = _KEYWORD
        color = _colors.get(toktype, _colors[_TEXT])

        style = ''
        if toktype == token.ERRORTOKEN:
            style = ' style="border: solid 1.5pt #FF0000;"'

        # send text
        self.out.write('<font color="%s"%s>' % (color, style))
        self.out.write(cgi.escape(toktext))
        self.out.write('</font>')
    #@-node:ZoomQuiet.20060122150604.7:__call__
    #@-others
#@-node:ZoomQuiet.20060122150604.4:class Parser
#@-others
#@-node:ZoomQuiet.20060122150604:@shadow py.py
#@-leo