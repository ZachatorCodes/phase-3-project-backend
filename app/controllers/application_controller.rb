require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Trail Routes
  
  get "/trails" do
    trails = Trail.all
    trails.to_json(include: :reviews)
  end

  get "/trails/:id" do
    trail = Trail.find(params[:id])
    trail.to_json(include: :reviews)
  end

  delete '/trails/:id' do
    trail_to_delete = Trail.find(params[:id])
    trail_to_delete.destroy
    trail_to_delete.to_json
  end

  post "/trails" do
    new_trail = Trail.create({
      trail_name: params[:trail_name],
      length: params[:length],
      elevation: params[:elevation],
      location: params[:location],
      difficulty: params[:difficulty]
    })
    new_trail.to_json(include: :reviews)
  end

  patch '/trails/:id' do
    trail_to_update = Trail.find(params[:id])
    trail_to_update.update({
      trail_name: params[:trail_name],
      length: params[:length],
      elevation: params[:elevation],
      location: params[:location],
      difficulty: params[:difficulty]
    })
    trail_to_update.to_json
  end

  # Review Routes

  post '/trails/:trail_id/reviews' do
    # binding.pry
    new_review = Review.create({
      rating: params[:rating],
      comment: params[:comment],
      trail_id: params[:trail_id]
    })
    new_review.to_json
  end

end
