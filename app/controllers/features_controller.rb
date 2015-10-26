class FeaturesController < ApplicationController
  def index
    @features = FeatureRequest.all
  end
end
