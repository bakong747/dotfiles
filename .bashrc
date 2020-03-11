### Export variables
export EDITOR="code --wait"
export CHEF_KNIFE_SANDBOX_CONFIG='~/.chef/sandbox/knife-dev.rb'
export CHEF_KNIFE_LIVE_CONFIG='~/.chef/live/knife-dev.rb'

### General aliases
alias jq=/c/Users/bakong/bin/jq-win64.exe
alias cdglab="cd /c/Projects/Repositories/GitLab/"
alias cdazure="cd /c/Projects/Repositories/AzureRepos/"

### Git alias commands
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gcd="git checkout develop && git pull"
alias gcm="git checkout master && git pull"
alias gcnb="git checkout -b "

### Sops alias commands
alias sopsijoj="sops --input-type json --output-type json"

### Functions
grom () {

    branch_name="$(git rev-parse --abbrev-ref HEAD)"

    echo "Current branch: ${branch_name}"
    echo 'Executing git commands...'

    $(git checkout master && git pull origin master && git checkout ${branch_name} && git rebase -i master)

    echo 'Done'
}

grod () {

    branch_name="$(git rev-parse --abbrev-ref HEAD)"

    echo "Current branch: ${branch_name}"
    echo 'Executing git commands...'

    $(git checkout develop && git pull origin develop && git checkout ${branch_name} && git rebase -i develop)

    echo 'Done'
}
