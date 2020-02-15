# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup paths
export GOPATH=/Users/martin/go
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:$GOPATH/bin:$PATH

# Add gcloud completions
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Set bundles
antigen bundle brew
antigen bundle copyfile
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle kubectl
antigen bundle pyenv
antigen bundle yarn
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Switch on .nvmrc
export NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm

# Load the theme.
antigen theme romkatv/powerlevel10k

antigen apply

# Set aliases
for f in /Users/martin/dotfiles/zsh/aliases/*.zsh; do source $f; done

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Prevent error from .nvmrc switching
export POWERLEVEL9K_INSTANT_PROMPT=quiet