session_root "~/projects/bongloy-core"

if initialize_session "bongloy"; then

  new_window "commands"
  run_cmd "./bin/rails s"

  new_window "vim Bongloy"
  run_cmd "vim"

  select_window 1
fi

finalize_and_go_to_session
