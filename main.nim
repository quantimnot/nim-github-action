import
  std/[jscore, jsconsole, jsffi, times, os]

let
  core = require"@actions/core"
  github = require"@actions/github"

try:
  # `who-to-greet` input defined in action metadata file
  let nameToGreet = core.getInput"who-to-greet"
  for env in envPairs():
    echo env
  console.log(nameToGreet)
  # console.log &("Hello ", nameToGreet, "!")
  let time = getClockStr()
  core.setOutput("time", time)
  # Get the JSON webhook payload for the event that triggered the workflow
  # let payload = JSON.stringify(github.context.payload).to string
  # console.log &("The event payload: ", payload)
except CatchableError:
  core.setFailed(getCurrentExceptionMsg())
