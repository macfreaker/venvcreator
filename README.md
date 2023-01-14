# ***venvcreator***
## ***The Python Environment creator***
A script to create a Python virtual environment, also activates that environment, and creates empty files .gitignore, .dockerignore, README.md, app.py, and Dockerfile. Optionally installs Flask or Streamlit and opens the current directory in Visual Studio Code.
>For the bash shell you need to make it executable with following command:
>`sudo chmod +x venvcreator.sh`
>Then copy the file to ***/usr/local/bin/*** for systemwide use!
## Usage:
### bash
`./venvcreator.sh env_name [flask|streamlit] [vscode]`
### or
### PowerShell
`.\venvcreator.ps1 env_name [flask|streamlit] [vscode]`
| Argument     | Description |
| ----------- | ----------- |
| ***env_name***| name of the virtual environment to be created.    |
| ***flask or streamlit***  | (Optional) installs Flask or Streamlit in the virtual environment.       |
| ***vscode*** | (Optional) opens the current directory in Visual Studio Code. |

`./venvcreator.sh -H or --help` or `./venvcreator.ps1 -H or --help`

| Argument     | Description |
| ----------- | ----------- |
| ***-H or --help***  |  shows help for this script. |

## Example
`./venvcreator.sh myenv flask vscode`
> This will create a virtual environment named myenv, install Flask and open the current directory in Visual Studio Code.
## Requirements
- Python 3 which is licensed under the Python Software Foundation License
  [https://docs.python.org/3/license.html](https://docs.python.org/3/license.html)
- Visual Studio Code (if ***vscode*** argument is passed)
## Licenses
- Python 3: [Python Software Foundation License](https://docs.python.org/3/license.html)
- VSCode: [Mit License](https://github.com/microsoft/vscode/blob/main/LICENSE.txt)
- Streamlit:[Apache License 2.0](https://github.com/streamlit/streamlit/blob/develop/LICENSE)
- Flask: [BSD 3-Clausse License](https://github.com/pallets/flask/blob/main/LICENSE.rst)
Please note that the use of the above open-source software is subject to their respective license agreements.
## Note
- The command ***code .*** will only work if the Visual Studio Code command line interface is installed on your system and that the current directory is not a symlinked directory.
- Make sure that the script runs in the appropriate shell, bash for macOS and linux, powershell for windows.
