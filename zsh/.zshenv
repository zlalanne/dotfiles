export PATH=$HOME/.bin:/usr/local/bin:$HOME/go/bin:$HOME/.local/bin:${HOME}/.local/npm/bin:/snap/bin:$PATH

# Get the version two parts of the verison number of my python installation
local python_version=$(python3 --version | cut -d' ' -f2 | cut -d'.' -f1,2)

# Add my local python packages to the import path
export PYTHONPATH=${HOME}/.local/lib/python${python_version}/site-packages:${PYTHONPATH}
