pull() {
    
    if [[ $(git status --porcelain=v1 2>/dev/null | wc -l) -gt 0 ]]; then
        echo "Untracked changes: $(git update-index --refresh)"
        echo "commit[1] or stash[2] changes"
        printf '%s ' "Please select an option 1[commit local changes] 2[stash local changes] "
        read cSOption
        case $cSOption in
            1)
                git add .
                printf '%s ' "Please provide your git commit message"
                read gitcmsg
                git commit --allow-empty -a -m $gitcmsg
                pullRemoteBranch
            ;;
            2)
                printf '%s ' "Please provide your git stash message"
                read gitcmsg
                git stash push -m $gitcmsg
                pullRemoteBranch
            ;;
        esac
        
    else
        pullRemoteBranch
    fi
    
}

