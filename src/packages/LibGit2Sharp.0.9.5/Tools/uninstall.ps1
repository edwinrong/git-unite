param($installPath, $toolsPath, $package, $project)

. (Join-Path $toolsPath "GetLibGit2SharpPostBuildCmd.ps1")

# Get the current Post Build Event cmd
$currentPostBuildCmd = $project.Properties.Item("PostBuildEvent").Value

# Remove our post build command from it (if it's there)
$project.Properties.Item("PostBuildEvent").Value = $currentPostBuildCmd.Replace($LibGit2SharpPostBuildCmd, "")