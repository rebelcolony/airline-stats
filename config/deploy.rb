set :application, "airline-stats"
set :repository,  "git@github.com:rebelcolony/airline-stats.git"

set :scm, :git
set :scm_verbose, true
default_run_options[:pty] = true
set :branch, "master"

set :address, "airline-stats.com"
                                     
role :web, address                   
role :app, address                   
role :db,  address, :primary => true 

set :deploy_via, :remote_cache
set :user, root

# SSH Keys
ssh_options[:keys] = %w(/Users/alastairbrunton/.ssh/rebel)
ssh_options[:port] = 22

after "deploy:update_code", "recipiez:rename_db_file" 

