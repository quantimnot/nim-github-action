import
  std/[jscore, jsconsole, jsffi]

let
  core = require"@actions/core"
  github = require"@actions/github"

try:
  console.log("I'm executed after main.js")
except:
  core.setFailed(getCurrentExceptionMsg())
