export-env {
	load-env {
		STARSHIP_SHELL: 'nu'
		STARSHIP_SESSION_KEY: (random chars -l 16)
		PROMPT_MULTILINE_INDICATOR: (^starship prompt --continuation)

		PROMPT_INDICATOR: ''

		PROMPT_COMMAND: {
			^starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
		}

		PROMPT_COMMAND_RIGHT: {''}
	}
}
