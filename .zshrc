# System
alias ls="ls -lGH"
alias e="exit"
alias c="cd"
function cd() {
    builtin cd "$@"

    if [ -f ".nvmrc" ]; then
        echo "Found .nvmrc file, using nvm to switch node version"
        nvm install
        nvm use

        if[ -f "./yarn.lock" ] ; then
            echo "Found yarn.lock file, enabling yarn"
            corepack enable && yarn set version stable
        fi
    fi
}

# Git
alias g="git"
alias ga="git add -A"
alias gcb="git checkout -b"
alias gsw="git switch"
alias grc="git rebase --continue"
alias gcc="git rm -r --cached . && git add . && git commit -m 'fixed untracked files'"

# npm
alias n="npm"
alias ni="npm install"
alias nl="npm run lint"
alias nt="npm run test"
alias ns="npm start"
alias nd="npm run dev"

# Yarn
alias y="yarn"
alias yi="yarn install"
alias yl="yarn lint"
alias yt="yarn test"
alias ys="yarn start"
alias yd="yarn dev"

# JWT
decode_jwt(){
    decode_base64_url $(echo -n $2 | cut -d "." -f $1) | jq .
}
alias jwt="decode_jwt 1"
alias jwt_header="decode_jwt 2"

# Fun
alias sll="while true; do sl -e || break; done"
