class RecommendationsController < ApplicationController
  def index
    @recommendations = RecommendationService.new(current_user).recommend_museums
  end
end
