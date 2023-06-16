class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/trails" do
    trails = Trail.all
    trails.to_json
  end

  post "/trails" do
    new_trail = Trail.create({
      trail_name: params[:trail_name],
      length: params[:length],
      elevation: params[:elevation],
      location: params[:location],
      difficulty: params[:difficulty]
    })
    new_trail.to_json
  end

end
