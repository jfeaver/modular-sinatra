class SinatraApp
  class ApplicationController
    get '/' do
      response = (session[:game] ? session[:game].name : 'boo')
      haml response
    end
  end
end
