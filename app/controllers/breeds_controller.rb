class BreedsController < ApplicationController
  def index
    response = HTTP.get("https://api.thedogapi.com/v1/breeds?api_key=#{Rails.application.credentials.dog_app[:api_key]}")
    render json: response.parse(:json)
  end
end
