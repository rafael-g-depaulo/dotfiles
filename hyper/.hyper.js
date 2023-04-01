"use strict";
// // Future versions of Hyper may add additional config options,
// // which will not automatically be merged into this file.
// // See https://hyper.is#cfg for all currently supported options.
module.exports = {
  config: {
    // // choose either `'stable'` for receiving highly polished,
    // // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',
    // // default font size in pixels for all tabs
    fontSize: 18,
    // // font family with optional fallbacks
    fontFamily: '"FiraCode Nerd Font", "FiraCode Nerd Font Regular", "Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    // // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',
    // // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',
    // // line height as a relative unit
    lineHeight: 1,
    // // letter spacing as a relative unit
    letterSpacing: 0,
    // // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    // // cursorColor: 'rgba(248,28,229,0.8)',
    // // terminal text color under BLOCK cursor
    // // cursorAccentColor: '#000',
    // // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',
    // // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,
    // // color of the text
    // // foregroundColor: '#fff',
    // // terminal background color
    // // opacity is only supported on macOS
    // // backgroundColor: '#000',
    // // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',
    // // border color (window, tabs)
    borderColor: '#fff',
    // // custom CSS to embed in the main window
    // // css: '.splitpane_divider { background-color: white !important; }',
    // // custom CSS to embed in the terminal window
    termCSS: '',
    // // set custom startup directory (must be an absolute path)
    workingDirectory: '',
    // // if you're using a Linux setup which show native menus, set to false
    // // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',
    // // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',
    // // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '36px 14px',
    // // the full list. if you're going to provide the full color palette,
    // // including the 6 x 6 color cubes and the grayscale map, just provide
    // // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
      limeGreen: '#32CD32',
      lightCoral: '#F08080',
    },
    // //? POKEMON PLUGIN CONFIG
    pokemon: [
      'bulbasaur',
      // // 'ivysaur',
      // // 'grass',
      // // "random",
    ],
    // // pokemon: 'gengar',
    unibody: 'true',
    poketab: 'false',
    // //? POKEMON PLUGIN CONFIG

    // // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // // if left empty, your system's login shell will be used by default
    // //
    // // Windows
    // // - Make sure to use a full path if the binary name doesn't work
    // // - Remove `--login` in shellArgs
    // //
    // Windows Subsystem for Linux (WSL) - previously Bash on Windows
    // // - Example: `C:\\Windows\\System32\\wsl.exe`
    // //
    // // Git-bash on Windows
    // // - Example: `C:\\Program Files\\Git\\bin\\bash.exe`
    // //
    // // PowerShell on Windows
    // // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    // //
    // // Cygwin
    // // - Example: `C:\\cygwin64\\bin\\bash.exe`
    // shell: 'C:/Windows/System32/wsl.exe', // WSL ONLY
    // // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // // by default `['--login']` will be used
    shellArgs: [],
    // // for environment variables
    env: {},
    // // Supported Options:
    // //  1. 'SOUND' -> Enables the bell as a sound
    // //  2. false: turns off the bell
    bell: 'SOUND',
    // // An absolute file path to a sound file on the machine.
    // // bellSoundURL: '/path/to/sound/file',
    // // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,
    // // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
    // // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: false,
    // // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: 'vertical',
    // // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // // rendering (slower, but supports transparent backgrounds)
    webGLRenderer: false,
    // // keypress required for weblink activation: [ctrl|alt|meta|shift]
    // // todo: does not pick up config changes automatically, need to restart terminal :/
    webLinksActivationKey: '',
    // // if `false` (without backticks and without quotes), Hyper will use ligatures provided by some fonts
    disableLigatures: false,
    // // set to true to disable auto updates
    disableAutoUpdates: false,
    // // for advanced config flags please refer to https://hyper.is/#cfg

    // // pane navigation stuff
    paneNavigation: {
      hotkeys: {
        navigation: {
          // up: 'ctrl+shift+up',  // LINUX ONLY
          // down: 'ctrl+shift+down',  // LINUX ONLY
          // left: 'ctrl+shift+left',  // LINUX ONLY
          // right: 'ctrl+shift+right'  // LINUX ONLY
        },
        // // jump_prefix: 'ctrl+alt', // completed with 1-9 digits
        // // permutation_modifier: 'shift', // Added to jump and navigation hotkeys for pane permutation
        // // maximize: 'meta+enter'
      },
      focusOnMouseHover: false,
      // inactivePaneOpacity: 0.7 // Set to 1 to disable inactive panes dimming
    },
    hyperTransparent: {
      opacity: 0.2,
      vibrancy: '' // ['', 'dark', 'medium-light', 'ultra-dark']
    },
    hyperBorder: {
      borderColors: ['#fc1da7', '#fba506'],
      borderWidth: '0px',
      adminBorderWidth: '8px'
    },
  },
  // // a list of plugins to fetch and install from npm
  // // format: [@org/]project[#version]
  // // examples:
  // //   `hyperpower`
  // //   `@company/project`
  // //   `project#1.0.1`

  plugins: [
    // "hypercwd",
    // "hyper-opacity", // doesn't work on linux
    // "hyper-transparent", // should work on linux but doesn't ??
    "hyper-highlight-active-pane",
    // "hyper-fading-scrollbar",
    // "hyper-tabs-enhanced",
    "hyper-pane",
    "hyper-font-ligatures",
    "hyperborder-elevated", 
    // "hyper-blend",
    "hyper-tabs-autohide",
    "hyperterm-cursor",

    // themes
    // "hyper-pokemon",
    // "shades-of-purple-hyper",
    // "hyper-one-dark",
    "hyper-dracula",
  ],
  // // in development, you can create a directory under
  // // `~/.hyper_plugins/local/` and include it here
  // // to load it and avoid it being `npm install`ed
  localPlugins: [],
  keymaps: {
    // // Example
    // // 'window:devtools': 'cmd+shift+o',
  },
};
// //# sourceMappingURL=config-default.js.map
