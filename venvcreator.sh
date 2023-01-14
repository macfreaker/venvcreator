#!/bin/bash

# Clear the screen!
clear

if [ "$1" == "--help" ] || [ "$1" == "-H" ] || [ $# -eq 0 ]; then
echo -e "\033[0;33m Usage: envcreator.sh env_name [flask|streamlit] [vscode] \033[0m"
echo -e "\033[0;36m env_name: name of the virtual environment to be created \033[0m"
echo -e "\033[0;36m flask|streamlit: Optional, installs Flask or Streamlit in the virtual environment \033[0m"
echo -e "\033[0;33m vscode: Optional, opens the current directory in Visual Studio Code \033[0m"
echo -e "\033[0;37m --help or -H: shows help for this script \033[0m"
exit 0
fi

env_name=$1

if [ "$2" != "flask" ] && [ "$2" != "streamlit" ]; then
echo "Invalid argument. Please specify either 'flask' or 'streamlit' as the second argument."
exit 1
fi

# Create the python environment
python3 -m venv $env_name

# Activate the environment
source $env_name/bin/activate

# Create empty files
touch .gitignore .dockerignore README.md app.py Dockerfile

if [ "$3" == "vscode" ]; then
# Open the current directory in Visual Studio Code
code .
else
echo "The current directory will not be opened in Visual Studio Code."
fi

if [ "$2" == "flask" ]; then
# Install Flask in the virtual environment
pip3 install Flask
elseif [ "$2" == "streamlit" ]; then
# Install Streamlit in the virtual environment
pip3 install streamlit
fi  