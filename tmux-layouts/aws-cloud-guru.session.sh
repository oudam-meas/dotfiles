session_root "~/Work/Research/devops/aws_solution_architect"

if initialize_session "Aws Cloud Guru"; then

  new_window "commands"

  new_window "vim"
  run_cmd "vim"

  select_window 0
fi

finalize_and_go_to_session
