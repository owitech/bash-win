#PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h:\[\e[33;1m\]\w\[\e[m\]\$ "

complete -C '/c/Program\ Files/Amazon/AWSCLIV2/aws_completer' aws

# Load Angular CLI autocompletion.
source <(ng completion script)

