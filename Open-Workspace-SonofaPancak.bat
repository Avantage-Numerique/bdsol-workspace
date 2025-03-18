::Obsidian path
start "" /B C:\Users\yourUserName\AppData\Local\Obsidian\Obsidian.exe

::Docker path
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"

::2 cmd for app and api with size, git pull and git status
start "cmd - APP" cmd.exe /K "cd /d C:\Documents\yourPath\Programmation\bdsol-workspace\app && mode con: cols=120 lines=32 && git pull && git status"
start "cmd - API" cmd.exe /K "cd /d C:\Documents\yourPath\Programmation\bdsol-workspace\api && mode con: cols=120 lines=32 && git pull && git status"

::Start Code editor (vscode)
start "" "C:\Program Files\Microsoft VS Code\Code.exe" "C:\Documents\yourPath\Programmation\bdsol-workspace"

::Start Chrome pages
start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://docs.google.com/spreadsheets/your/first/url" "https://app.asana.com/your/second/url"
