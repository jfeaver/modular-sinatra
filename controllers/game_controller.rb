class SinatraApp
  class GameController
    get '/' do
      response = (session[:game] ? session[:game].name : 'boo')
      haml response
    end

    get '/new' do
      haml :new
    end

    post '/create' do
      unless params[:name].empty?
        session[:game] = Game.new(params[:name])
        haml "You've started a new game #{params[:name]}!"
      else
        flash[:alert] = 'You forgot your name, silly!  Please enter a name to play'
        redirect '/new'
      end
    end

    get '/reset' do
      session[:game] = nil
      haml 'Your game has been reset'
    end
  end
end
