# Source: https://gist.github.com/KELiON/4721946
function _git_branch_name
  echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (git status -s --ignore-submodules=dirty ^/dev/null)
end

function _rb_prompt
  echo (rbenv version | awk '{print ($1 != "system") ? $1 : ""}')
end

function fish_prompt
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l arrow "$red➜ $normal"
  set -l cwd $green(prompt_pwd)

  set -l sep "$blue | $normal"

  set -l ruby_version (_rb_prompt)
  if [ -n "$ruby_version" ]
    set ruby_version "$sep$red$ruby_version$normal"
  end

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$sep$git_branch"
    if [ (_is_git_dirty) ]
      set -l dirty "$yellow✗$normal"
      set git_info "$git_info$dirty"
    else
      set -l clean "$green✔︎$normal"
      set git_info "$git_info$clean"
    end
  end

  echo -s $cwd $git_info $ruby_version \n $arrow
end
