session_root "~/Work/Research/rails-books/"

if initialize_session "Read Rails"; then

  new_window "commands"

  new_window "vim"
  run_cmd "vim"

  select_window 0
fi

finalize_and_go_to_session
