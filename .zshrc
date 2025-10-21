# wallust theming
(cat ~/.cache/wallust/sequences &)

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

alias cse="ssh -t z5406222@login.cse.unsw.edu.au"
alias des="ssh -t lachie@192.168.0.40"
alias des_r="ssh -t lachie@cloud.lachlan.codes"
alias cse_mnt="sshfs -o idmap=user -C z5406222@login2.cse.unsw.edu.au: ~/cse"
alias cse_umnt="fusermount -u ~/cse"

alias vim="nvim"
alias htop="btop"
alias cserun="~/.cargo/bin/cserun"

source /usr/share/nvm/init-nvm.sh

SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
export SSH_AUTH_SOCK

# java
export CLASSPATH=.:/home/lachie/code:/home/lachie/cse_local/25t1/comp3131/

# pnpm
export PNPM_HOME="/home/lachie/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
