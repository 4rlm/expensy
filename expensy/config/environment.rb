
############# FLAT IRON ################
require 'bundler'
Bundler.require

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/development.sqlite"
# )

############# DBC ################
# APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
# APP_NAME = APP_ROOT.basename.to_s
#
# db = URI.parse(ENV['DATABASE_URL'] || "postgres://localhost/#{APP_NAME}_#{Sinatra::Application.environment}")

# DB_NAME = db.path[1..-1]

# ActiveRecord::Base.establish_connection(
#   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#   :host     => db.host,
#   :port     => db.port,
#   :username => db.user,
#   :password => db.password,
#   :database => 'abc_123',
#   :encoding => 'utf8'
# )

############# SINATRA ################
configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'unicode',
    database: 'abc_123',
    pool: 2
  }
end

configure :production do
  set :database, {
    adapter: 'postgresql',
    encoding: 'unicode',
    database: 'abc_123',
    pool: 2
  }
end

#####################################

require_all 'app'
