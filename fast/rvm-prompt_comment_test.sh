source "$rvm_path/scripts/rvm"

command rvm install 1.8.7
command rvm install 1.9.2
command rvm install 1.9.3

rvm 1.9.1 do rvm-prompt      # match=/Ruby (ruby-)?1.9.1(-p[[:digit:]]+)? is not installed./
rvm 1.9.2 do rvm-prompt      # match=/^ruby-1.9.2-p[[:digit:]]+$/
rvm 1.9.3 do rvm-prompt i    # match=/^ruby$/
rvm 1.9.3 do rvm-prompt i v  # match=/^ruby-1.9.3$/
rvm 1.9.3 do rvm-prompt v    # match=/^1.9.3$/
rvm 1.9.3 do rvm-prompt v p  # match=/^1.9.3-p[[:digit:]]+$/
rvm system do rvm-prompt     # match=/^$/
rvm system do rvm-prompt s v # match=/^system$/
rvm 1.8.7 do rvm-prompt s v  # match=/^1.8.7$/
