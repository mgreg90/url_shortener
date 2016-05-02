class MyUrlShortenerController < ApplicationController

  def new

  end

  def redirect_to_user_site
    redirect_to MyUrlShortenerModel.find(params[:id])[:user_url]
  end

  def create
    p "*" * 50
    p MyUrlShortenerModel.new(my_validated_params).save
    p "*" * 50

    redirect_to '/'
  end

  def show
    p "*" * 50
    # if my_validated_params[:user_url]
    p MyUrlShortenerModel.find_by(my_validated_params[:user_url])
    # end
    p "*" * 50
  end

  private
  def my_validated_params
    p "*" * 50
    p params
    p "*" * 50
    params.permit(:user_url, :final_url)
  end
end
