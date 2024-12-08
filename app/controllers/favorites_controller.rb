class FavoritesController < ApplicationController
  def create
    # 現在のmuseumを取得する
    museum = Museum.find(params[:museum_id])
    # このmuseumのidでfavoriteを作成する
    favorite = current_user.favorites.new(museum_id: museum.id)
    # 保存する
    respond_to do |format|
      if favorite.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.update("museum_favorite_-#{museum.id}", partial: 'favorites/btn', locals: { museum: museum })
        end
      else
        format.html { redirect_to museums, alert: 'Failed to favorite.' }
      end
    end
  end

  def destroy
    museum = Museum.find(params[:museum_id])
    favorite = current_user.favorites.find_by(museum_id: museum.id)
    respond_to do |format|
      if favorite.destroy
        format.turbo_stream do
          render turbo_stream: turbo_stream.update("museum_favorite_-#{museum.id}", partial: 'favorites/btn', locals: { museum: museum })
        end
      else
        format.html { redirect_to museums, alert: 'Failed to favorite.' }
      end
    end
  end
end
