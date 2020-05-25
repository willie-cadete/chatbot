require 'factory_bot'

#Rspec without
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  configure.before(:suite) do
    FactoryBot.find_definitions
  end
end