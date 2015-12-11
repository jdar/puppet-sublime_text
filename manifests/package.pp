# Public: Install a Sublime Text package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
# revision - The ref, branch or tag containing the package.
#
# Examples
#
#   sublime_text::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text::package($source='',$revision='master') {
  require sublime_text::config

  repository { "${sublime_text::config::packagedir}/${name}":
    source => $source,
    revision => $revision
  }
}
