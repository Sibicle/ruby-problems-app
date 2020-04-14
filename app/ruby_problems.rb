class MyApp < Sinatra::Base

  before do
    @name = params[:name] || "World"
  end

  get "/" do
    "Hello #{@name}!"
  end

end

run MyApp.run!
