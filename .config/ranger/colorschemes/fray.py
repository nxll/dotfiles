# Copyright (C) 2009-2013  Roman Zimbelmann <hut@lavabit.com>
# This software is distributed under the terms of the GNU GPL version 3.

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
                bg = 234
                attr = bold
            else:
                attr = normal
            if context.empty or context.error:
                bg = red
            if context.border:
                fg = 234
            if context.media:
                if context.image:
                    fg = yellow
                else:
                    fg = yellow
            if context.container:
                fg = red
            if context.directory:
                fg = white
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                fg = yellow
            if context.socket:
                fg = magenta
            if context.fifo or context.device:
                fg = yellow
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
                    fg = yellow
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
                    bg = green
            elif context.link:
                fg = green

        elif context.in_statusbar:
            bg = 234
            if context.permissions:
                if context.good:
                    fg = green
                elif context.bad:
                    fg = green
            if context.marked:
                bg = 234
                fg = yellow
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
