class BlogFeaturesController < ApplicationController
  before_action :set_blog_feature, only: [:show, :edit, :update, :destroy]

  # GET /blog_features
  # GET /blog_features.json
  def index
    @blog_features = BlogFeature.all
  end

  # GET /blog_features/1
  # GET /blog_features/1.json
  def show
  end

  # GET /blog_features/new
  def new
    @blog_feature = BlogFeature.new
  end

  # GET /blog_features/1/edit
  def edit
  end

  # POST /blog_features
  # POST /blog_features.json
  def create
    @blog_feature = BlogFeature.new(blog_feature_params)

    respond_to do |format|
      if @blog_feature.save
        format.html { redirect_to @blog_feature, notice: 'Blog feature was successfully created.' }
        format.json { render :show, status: :created, location: @blog_feature }
      else
        format.html { render :new }
        format.json { render json: @blog_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_features/1
  # PATCH/PUT /blog_features/1.json
  def update
    respond_to do |format|
      if @blog_feature.update(blog_feature_params)
        format.html { redirect_to @blog_feature, notice: 'Blog feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_feature }
      else
        format.html { render :edit }
        format.json { render json: @blog_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_features/1
  # DELETE /blog_features/1.json
  def destroy
    @blog_feature.destroy
    respond_to do |format|
      format.html { redirect_to blog_features_url, notice: 'Blog feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_feature
      @blog_feature = BlogFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_feature_params
      params.require(:blog_feature).permit(:title, :body)
    end
end
