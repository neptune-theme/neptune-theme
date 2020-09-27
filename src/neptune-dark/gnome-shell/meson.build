shell_dir = join_paths(neptune_dir_dark, 'gnome-shell')

# generated .css files from .scss
theme_files = [
    'gnome-shell',
]
# theme sources .scss files
theme_sources = [
  'sass/_common.scss',
  'sass/_colors.scss',
  'sass/_drawing.scss',
  'sass/_widgets.scss',
]

# static files to copy
data_sources = [
  'assets/calendar-today.svg',
  'assets/checkbox-off-focused.svg',
  'assets/checkbox-off.svg',
  'assets/checkbox.svg',
  'assets/dash-placeholder.svg',
  'assets/no-events.svg',
  'assets/no-notifications.svg',
  'pad-osd.css',
  'assets/process-working.svg',
  'assets/toggle-off.svg',
  'assets/toggle-off-dark.svg',
  'assets/toggle-off-hc.svg',
  'assets/toggle-on.svg',
  'assets/toggle-on-dark.svg',
  'assets/toggle-on-hc.svg',
  'assets/icons/scalable/actions/pointer-double-click-symbolic.svg',
  'assets/icons/scalable/actions/pointer-drag-symbolic.svg',
  'assets/icons/scalable/actions/pointer-primary-click-symbolic.svg',
  'assets/icons/scalable/actions/pointer-secondary-click-symbolic.svg',
  'assets/icons/scalable/status/eye-not-looking-symbolic.svg',
  'assets/icons/scalable/status/eye-open-negative-filled-symbolic.svg',
  'assets/icons/scalable/status/keyboard-caps-lock-filled-symbolic.svg',
  'assets/icons/scalable/status/keyboard-enter-symbolic.svg',
  'assets/icons/scalable/status/keyboard-hide-symbolic.svg',
  'assets/icons/scalable/status/keyboard-layout-filled-symbolic.svg',
  'assets/icons/scalable/status/keyboard-shift-filled-symbolic.svg',
  'assets/icons/scalable/status/message-indicator-symbolic.svg',
]

# destination directory
install_dir = shell_dir

# generate .css files
foreach f : theme_files
    theme_sources += [f + '.scss']
endforeach
theme_sources = files(theme_sources)
foreach f : theme_files
    custom_target('generate_dark' + f,
        input: f + '.scss',
        output: f + '.css',
        depend_files: theme_sources,
        command: [sassc, '-a', '@INPUT@', '@OUTPUT@'],
        build_by_default: true,
        install: true,
        install_dir: install_dir,
    )
endforeach

# install static data files
install_data(data_sources, install_dir: install_dir)
