class FeaturesController < ApplicationController
  def index
    @features = Feature.load
  end

  def edit
    @feature = Feature.new params[:file]
  end

  def show
    @feature = Feature.new params[:file]
  end

  def update
    @feature = Feature.new params[:file]
    @feature.write params[:content]
    @feature.commit

    redirect_to root_url, :notice => "Feature updated"
  end

  def push
    Feature.push

    redirect_to root_url, :notice => "Pushed features"
  end
end
