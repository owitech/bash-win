# Get the aliases and functions
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Get message
if [ -f ~/.bash_prompt ]; then . ~/.bash_prompt; fi

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
    PS1="${COLOR_YELLOW}\$(current_dir)${COLOR_RESET} > "
}

# Asignar la función al evento PROMPT_COMMAND
PROMPT_COMMAND=update_prompt

# Auto-completado de aws-cli
export PATH=/c/Program\ Files/Amazon/AWSCLIV2/aws_completer:$PATH

# Configurar conda envs en Dev Drive (E:). Dev Home
export CONDA_PREFIX=/e/conda-envs

# gh completion
eval "$(gh completion -s bash)"
