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

