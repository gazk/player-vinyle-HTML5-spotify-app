# github settings
default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :branch, "master"
set :deploy_via, :remote_cache
set :git_enable_submodules, 0

set :application, "player-vinyle-HTML5"
set :repository,  "git@github.com:alexisjanvier/player-vinyle-HTML5.git"

set :scm, "git"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "le-vinyle"  # The server's user for deploys
set :deploy_to, "/home/le-vinyle/platine.le-vinyle.com"
set :use_sudo, false
set :port, 1605
role :web, "platine.le-vinyle.com"                          # Your HTTP server, Apache/etc
role :app, "platine.le-vinyle.com"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end