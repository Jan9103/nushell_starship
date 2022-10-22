export-env {
	let-env STARSHIP_SHELL = 'nu'
	let-env STARSHIP_SESSION_KEY = (random chars -l 16)
	let-env PROMPT_MULTILINE_INDICATOR = (^/usr/local/bin/starship prompt --continuation)

	let-env PROMPT_INDICATOR = ''

	let-env PROMPT_COMMAND = {
		^/usr/local/bin/starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
	}

	let-env PROMPT_COMMAND_RIGHT = {''}
}
