session_root "~/projects/bongloy-core"

if initialize_session "Bongloy Core"; then

  new_window "rails server"
  run_cmd "./bin/rails s"

  new_window "commands"
  run_cmd "git status"

  new_window "vim Bongloy"
  run_cmd "vim"

  select_window 2
fi

finalize_and_go_to_session
