class TechTalksController < ApplicationController
  before_action :set_tech_talk, only: [:show, :edit, :update, :destroy]

  # GET /tech_talks
  # GET /tech_talks.json
  def index
    @tech_talks = TechTalk.all
  end

  # GET /tech_talks/1
  # GET /tech_talks/1.json
  def show
  end

  # GET /tech_talks/new
  def new
    @tech_talk = TechTalk.new
  end

  # GET /tech_talks/1/edit
  def edit
  end

  # POST /tech_talks
  # POST /tech_talks.json
  def create
    @tech_talk = TechTalk.new(tech_talk_params)

    respond_to do |format|
      if @tech_talk.save
        format.html { redirect_to @tech_talk, notice: 'Tech talk was successfully created.' }
        format.json { render :show, status: :created, location: @tech_talk }
      else
        format.html { render :new }
        format.json { render json: @tech_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_talks/1
  # PATCH/PUT /tech_talks/1.json
  def update
    respond_to do |format|
      if @tech_talk.update(tech_talk_params)
        format.html { redirect_to @tech_talk, notice: 'Tech talk was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_talk }
      else
        format.html { render :edit }
        format.json { render json: @tech_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_talks/1
  # DELETE /tech_talks/1.json
  def destroy
    @tech_talk.destroy
    respond_to do |format|
      format.html { redirect_to tech_talks_url, notice: 'Tech talk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tech_talk
    @tech_talk = TechTalk.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tech_talk_params
    params.require(:tech_talk).permit(:title, :description, :length, :like, :views)
  end
end
