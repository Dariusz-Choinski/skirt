require 'sqlite3'
require_relative '../lib/router'

$db = SQLite3::Database.open('db/dev.db')
$db.results_as_hash = true

class Application
  def call(env)
    router = Router.new
    router.call(env)
  end
end
