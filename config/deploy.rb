set :application, "airline-stats"
set :repository,  "git@github.com:rebelcolony/airline-stats.git"
set :rails_env, "production"

set :scm, :git
set :scm_verbose, true
default_run_options[:pty] = true

set :branch, "master"
set :address, "airlinestats.org"
                                     
role :web, address                   
role :app, address                   
role :db,  address, :primary => true 

set :deploy_via, :remote_cache
set :deploy_to, "/var/www/apps/#{application}"
set :user, "root"

# SSH Keys
ssh_options[:keys] = %w(/Users/alastairbrunton/.ssh/rebel /Users/kevin/.ssh/id_rsa)
ssh_options[:port] = 8888

after "deploy:update_code", "recipiez:rename_db_file"
before "deploy:symlink", "deploy:change_owner" 

namespace :deploy do
  task :restart do
    recipiez::restart_passenger
  end
  task :change_owner do
    run "chown -R kevin:kevin #{release_path}"
  end
end
