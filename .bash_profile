# Colores para el prompt
COLOR_BLUE="\[\e[34m\]"
COLOR_GREEN="\[\e[32m\]"
COLOR_CYAN="\[\e[36m\]"
COLOR_YELLOW="\[\e[33m\]"
COLOR_RESET="\[\e[0m\]"

# Función para obtener el nombre del directorio actual
function current_dir() {
    echo -n $(basename "${PWD}")
}

# Actualizar el prompt solo cuando cambia el directorio
update_prompt() {
    PS1="${COLOR_CYAN}\u${COLOR_RESET}@${COLOR_GREEN}\h${COLOR_RESET}:${COLOR_YELLOW}\$(current_dir)${COLOR_RESET} > "
}

# Asignar la función al evento PROMPT_COMMAND
PROMPT_COMMAND=update_prompt

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
if [ -f ~/.bash_prompt ]; then . ~/.bash_prompt; fi

export PATH=/c/Program\ Files/Amazon/AWSCLIV2/aws_completer:$PATH
export CONDA_PREFIX=/e/conda-envs

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ -f '/c/Conda/Scripts/conda.exe' ]; then
    eval "$('/c/Conda/Scripts/conda.exe' 'shell.bash' 'hook')"
fi
# <<< conda initialize <<<

