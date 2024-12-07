class FavoritesController < ApplicationController
  def create
    # 現在のmuseumを取得する
    museum = Museum.find(params[:museum_id])
    # このmuseumのidでfavoriteを作成する
    favorite = current_user.favorites.new(museum_id: museum.id)
    # 保存する
    favorite.save
    redirect_to museums_path
  end

  def destroy
    museum = Museum.find(params[:museum_id])
    favorite = current_user.favorites.find_by(museum_id: museum.id)
    favorite.destroy
    redirect_to museums_path
  end
end
