class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1 or /reviews/1.json
  def show
    @museum = @review.museum 
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @museum = Museum.find(params[:museum_id]) 
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = current_user.reviews.new(review_params)
    @museum = Museum.find(params[:museum_id]) 
    @review.museum_id = @museum.id
    @review.save
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: t('defaults.message.created', item: Review.model_name.human) }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to action: "show", id: @review.id, notice:  t('defaults.message.updated', item: Review.model_name.human) }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy!

    respond_to do |format|
      format.html { redirect_to reviews_path, status: :see_other, notice:  t('defaults.message.destroyed', item: Review.model_name.human) }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:exhibition, :main_photo, :rating01, :body, :exhibition_rate, :museum_shop_rate, :museum_design_rate, :access_rate, sub_photos: [] )
  end
end
