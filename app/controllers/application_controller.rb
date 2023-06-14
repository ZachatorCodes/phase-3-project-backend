class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/trails" do
    trails = Trail.all
    trails.to_json(include: :reviews)
  end

  get "/trails/:id" do
    trail = Trail.all.find(params[:id])
    trail.to_json(include: :reviews)
  end

end
