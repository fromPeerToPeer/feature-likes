class FeaturesController < ApplicationController
  def index
    @features = FeatureRequest.waiting
  end
end
