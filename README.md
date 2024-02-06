# Git Bash
Archivos no rastreados
- `.bash_history`

Archivos por completar
- `.bash_aliases`
- `.bash_logout`

## WSL2
```sh
wsl --list --online
wsl --list --verbose

wsl --install -d kali-linux
wsl --shutdown kali-linux
wsl --shutdown ubuntu
```

## Conda config
- `conda info --envs`
- `conda config --set auto_activate_base False`
- touch ~/.condarc

```sh
channels:
  - conda-forge
  - defaults

envs_dirs:
  - E:\conda-envs

auto_activate_base: false
aggressive_update_packages: []
auto_update_conda: false
```
