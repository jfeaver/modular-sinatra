class SinatraApp < Sinatra::Base
  @@my_app = {}
  def self.new(*) self < SinatraApp ? super : Rack::URLMap.new(@@my_app) end
  def self.map(url) @@my_app[url] = self end

  enable :sessions
  use Rack::Flash

  class GameController < SinatraApp
    map '/game'
  end

end
