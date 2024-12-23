class RecommendationsController < ApplicationController
  def index
  end
  def load_content
    service = RecommendationService.new(current_user)
    @recommended_museums = service.recommend_museums
    render partial: 'recommendations/recommendations_list', locals: { recommended_museums: @recommended_museums }
  end
end
