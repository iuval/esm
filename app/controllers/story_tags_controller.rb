class StoryTagsController < ApplicationController
  before_action :set_story_tag, only: [:show, :edit, :update, :destroy]

  # GET /story_tags
  def index
    @story_tags = StoryTag.all
  end

  # GET /story_tags/1
  def show
  end

  # GET /story_tags/new
  def new
    @story_tag = StoryTag.new
  end

  # GET /story_tags/1/edit
  def edit
  end

  # POST /story_tags
  def create
    @story_tag = StoryTag.new(story_tag_params)

    if @story_tag.save
      redirect_to @story_tag, notice: 'Story tag was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /story_tags/1
  def update
    if @story_tag.update(story_tag_params)
      redirect_to @story_tag, notice: 'Story tag was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /story_tags/1
  def destroy
    @story_tag.destroy
    redirect_to story_tags_url, notice: 'Story tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_tag
      @story_tag = StoryTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_tag_params
      params.require(:story_tag).permit(:story_id, :tag_id)
    end
end
