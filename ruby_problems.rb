class RubyProblems < Sinatra::Base

  before do
    @name = params[:name] || "World"
  end

  get "/one" do
    slim :one
  end

end

run RubyProblems.run!
