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

    File.open(@feature.absolute_path, 'w') do |f|
      f.write(params[:content].gsub("\r\n", "\n"))
    end

    redirect_to root_url, :notice => "Feature updated"
  end
end
