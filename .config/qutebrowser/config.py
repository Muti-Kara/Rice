config.load_autoconfig(False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.user_agent', "Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/96.0")
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
config.set('content.notifications.enabled', False, 'https://www.reddit.com')

c.url.searchengines = {'DEFAULT': 'https://www.google.com.tr/search?q={}'}

c.completion.cmd_history_max_items = 100
c.completion.delay = 0
c.completion.height = '40%'
c.completion.min_chars = 1
c.completion.quick = True
c.completion.show = 'always'
c.completion.shrink = False
c.completion.use_best_match = False
c.completion.timestamp_format = '%Y-%m-%d'
c.completion.web_history.max_items = -1 # unlimited
c.completion.open_categories = ["quickmarks", "bookmarks", "history"]
c.completion.scrollbar.padding = 1
c.completion.scrollbar.width = 8

c.fonts.completion.category = 'bold 10pt monospace'
c.fonts.completion.entry = '10pt monospace'
c.fonts.debug_console = '10pt monospace'
c.fonts.downloads = '10pt monospace'
c.fonts.hints = 'bold 10pt monospace'
c.fonts.keyhint = '10pt monospace'
c.fonts.messages.error = '10pt monospace'
c.fonts.messages.info = '10pt monospace'
c.fonts.messages.warning = '10pt monospace'
c.fonts.prompts = '10pt sans-serif'
c.fonts.statusbar = '10pt monospace'
c.fonts.web.family.cursive = ''
c.fonts.web.family.fantasy = ''
c.fonts.web.family.fixed = ''
c.fonts.web.family.sans_serif = ''
c.fonts.web.family.serif = ''
c.fonts.web.family.standard = ''
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 0
c.fonts.web.size.minimum_logical = 6

c.keyhint.delay = 0
c.keyhint.radius = 0

c.prompt.filebrowser = True
c.prompt.radius = 0

c.scrolling.bar = 'always'
c.scrolling.smooth = False

c.statusbar.widgets = ['keypress', 'url', 'scroll_raw', 'progress']
c.statusbar.padding = {'top': 1, 'bottom': 1, 'left': 0, 'right': 0}
c.statusbar.position = 'bottom'

c.tabs.background = False
c.tabs.close_mouse_button = 'middle'
c.tabs.close_mouse_button_on_bar = 'new-tab'
c.tabs.favicons.scale = 1.0
c.tabs.favicons.show = 'never'
c.tabs.indicator.padding = {'top': 2, 'bottom': 2, 'left': 0, 'right': 5}
c.tabs.indicator.width = 5
c.tabs.last_close = 'ignore'
c.tabs.mousewheel_switching = True
c.tabs.new_position.related = 'next'
c.tabs.new_position.unrelated = 'last'
c.tabs.padding = {'top': 1, 'bottom': 1, 'left': 5, 'right': 5}
c.tabs.mode_on_change = 'normal'
c.tabs.pinned.shrink = True
c.tabs.position = 'top'
c.tabs.select_on_remove = 'next'
c.tabs.show = 'never'
c.tabs.show_switching_delay = 800
c.tabs.tabs_are_windows = False
c.tabs.title.alignment = 'left'
c.tabs.title.format = '{index}.{perc_raw}| {current_title}{audio}'
c.tabs.title.format_pinned = '{index}'
c.tabs.width = '15%'
c.tabs.wrap = True

c.window.title_format = ' '
c.window.hide_decoration = True

c.zoom.default = '100%'
c.zoom.levels = ['25%', '33%', '50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']
c.zoom.mouse_divider = 512

c.statusbar.show = "never"
c.tabs.show = "always"

config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never')
config.bind('<ctrl-left>', 'tab-prev')
config.bind('<ctrl-right>', 'tab-next')
config.bind('<ctrl-up>', 'forward')
config.bind('<ctrl-down>', 'back')

c.downloads.location.directory = '~/'
c.downloads.position = 'bottom'

import dracula.draw
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

config.unbind('q')

c.colors.webpage.darkmode.enabled = False

c.input.insert_mode.leave_on_load = True
c.url.default_page = 'file:///home/yuio/.config/homepage/index.html'
c.url.start_pages = 'file:///home/yuio/.config/homepage/index.html'
