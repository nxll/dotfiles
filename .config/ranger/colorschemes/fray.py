#FRAY
#nxll <nxll@teknik.io>

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
    progress_bar_color = black

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                bg = black
                attr = bold
            else:
                attr = normal
            if context.empty or context.error:
                bg = red
            if context.border:
                fg = black
            if context.media:
                if context.image:
                    fg = cyan
                else:
                    fg = cyan
            if context.container:
                fg = blue
            if context.directory:
                fg = white
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                fg = cyan
            if context.socket:
                fg = magenta
            if context.fifo or context.device:
                fg = blue
                if context.device:
                    fg = cyan
            if context.link:
                fg = context.good and cyan or magenta
            if context.tag_marker and not context.selected:
                if fg in (red, magenta):
                    fg = white
                else:
                    fg = red
            if not context.selected and (context.cut or context.copied):
                fg = black
            if context.main_column:
                if context.selected:
                    fg = green
                if context.marked:
                    fg = green
            if context.badinfo:
                if attr & reverse:
                    bg = magenta
                else:
                    fg = magenta

        elif context.in_titlebar:
            fg = green
            if context.hostname:
                fg = green
            elif context.directory:
                fg = white
            elif context.tab:
                if context.good:
                    bg = black
            elif context.link:
                fg = green

        elif context.in_statusbar:
            bg = default
            if context.permissions:
                if context.good:
                    fg = green
                elif context.bad:
                    fg = green
            if context.marked:
                bg = black
                fg = 235
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = red
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = blue
            if context.vcscommit:
                fg = yellow


        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = white

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color


        if context.vcsfile and not context.selected:
            fg = green
            if context.vcsconflict:
                fg = magenta
            elif context.vcschanged:
                fg = red
            elif context.vcsunknown:
                fg = red
            elif context.vcsstaged:
                fg = green
            elif context.vcssync:
                fg = green
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            fg = green
            if context.vcssync:
                fg = green
            elif context.vcsbehind:
                fg = red
            elif context.vcsahead:
                fg = blue
            elif context.vcsdiverged:
                fg = magenta
            elif context.vcsunknown:
                fg = red

        return fg, bg, attr
