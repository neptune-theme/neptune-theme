name = 'Neptune-light'
neptune_dir = join_paths(gtk_theme_dir, name)

# static asset files to copy
index_sources = [
  'index.theme',
]

# Install index file
install_data(index_sources, install_dir: neptune_dir)

subdir('gnome-shell')
subdir('gtk-2.0')
subdir('gtk-3.0')
