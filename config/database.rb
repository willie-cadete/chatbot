configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'chatbot_test',
    pool: 5,
    username: 'postgres',
    password: ENV['DB_PASSWORD'],
    host: 'postgres'
  }
end

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'chatbot_development',
    pool: 5,
    username: 'postgres',
    password: ENV['DB_PASSWORD'],
    host: 'postgres'
  }
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///postgres/chatbot_production')

  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: db.path[1..-1],
    pool: 5,
    username: db.user,
    password: db.password,
    host: db.host
  }
end