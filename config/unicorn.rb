worker_processes 4 # amount of unicorn workers to spin up
timeout 30         # restarts workers that hang for 30 seconds
listen ENV["PORT"].to_i, :tcp_nopush => false