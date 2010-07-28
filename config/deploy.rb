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
set :user, "kevin"

# SSH Keys
set :ssh_options, { :forward_agent => true }

ssh_options[:port] = 8888
ssh_options[:keys] = %w(/Users/kevin/.ssh/id_rsa /Users/alastairbrunton/.ssh/ndthub)

after "deploy:update_code", "recipiez:rename_db_file"
before "deploy:symlink", "deploy:change_owner" 


set :db_user, 'root'
set :db_password, 'Ve7arb'
set :db_local_user, db_user
set :db_local_password, 'pa55wd'
set :dump_dir, '/Users/alastairbrunton/dumps/'
set :database_to_dump, 'airstats'
set :db_dev, "airline_development"



namespace :deploy do
  task :restart do
    recipiez::restart_passenger
  end
  task :change_owner do
    run "chown -R kevin:kevin #{release_path}"
  end
end
