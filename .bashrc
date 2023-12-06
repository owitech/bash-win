# .bash_logout

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi

complete -C '/c/Program\ Files/Amazon/AWSCLIV2/aws_completer' aws

# Load Angular CLI autocompletion.
#source <(ng completion script)

###-begin-cdk-completions-###
_cdk_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(cdk --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi

    return 0
}
complete -o default -F _cdk_yargs_completions cdk
###-end-cdk-completions-###

source /c/conda/etc/profile.d/conda.sh

