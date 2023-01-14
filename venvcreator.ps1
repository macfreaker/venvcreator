# clear the screen!
Clear-Host

if ($args[0] -eq "--help" -or $args[0] -eq "-H" -or $args.Count -eq 0) {
    Write-Host " Usage: venvcreator.ps1 env_name [flask|streamlit] [vscode]" -ForegroundColor Yellow
    Write-Host " env_name: name of the virtual environment to be created" -ForegroundColor Cyan
    Write-Host " flask|streamlit: Optional, installs Flask or Streamlit in the virtual environment" -ForegroundColor White
    Write-Host " vscode: Optional, opens the current directory in Visual Studio Code" -ForegroundColor Yellow
    exit 0
}

$env_name = $args[0]

if ($args[1] -ne "flask" -and $args[1] -ne "streamlit") {
    Write-Host "Invalid argument. Please specify either 'flask' or 'streamlit' as the second argument." -ForegroundColor Red
    exit 1
}

# Create the python environment
python -m venv $env_name

# Activate the environment
& "$env_name\Scripts\Activate.ps1"

# Create empty files
New-Item -ItemType File -Path ".gitignore", ".dockerignore", "README.md", "app.py", "Dockerfile"

if ($args[2] -eq "vscode") {
    # Open the current directory in Visual Studio Code
    code .
} else {
Write-Host "The current directory will not be opened in Visual Studio Code."
}

if ($args[1] -eq "flask") {
# Install Flask in the virtual environment
pip install Flask
} elseif ($args[1] -eq "streamlit") {
# Install Streamlit in the virtual environment
pip install streamlit
}
