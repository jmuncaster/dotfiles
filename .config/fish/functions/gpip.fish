function gpip -d 'Get the current git branch (or commitish)'
  set -lx PIP_REQUIRE_VIRTUALENV false
  pip $argv
end
