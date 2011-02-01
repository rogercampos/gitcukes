class FeaturesController < ApplicationController
  def index
    @features = Feature.load
  end

  def edit
    @feature = Feature.new params[:file]
  end

  def update
    @feature = Feature.new params[:file]
    @feature.write params[:content]

    redirect_to root_url, :notice => "Feature updated"
  end

  def commit
    @feature = Feature.new params[:file]
    @feature.commit

    redirect_to root_url, :notice => "Commited feature #{@feature}."
  end
end
