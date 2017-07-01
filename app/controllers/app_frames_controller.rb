class AppFramesController < ApplicationController
  before_action :set_app_frame, only: [:show, :edit, :update, :destroy]

  # GET /app_frames
  # GET /app_frames.json
  def index
    @app_frames = AppFrame.all
  end

  # GET /app_frames/1
  # GET /app_frames/1.json
  def show
  end

  # GET /app_frames/new
  def new
    @app_frame = AppFrame.new
  end

  # GET /app_frames/1/edit
  def edit
  end

  # POST /app_frames
  # POST /app_frames.json
  def create
    @app_frame = AppFrame.new(app_frame_params)

    respond_to do |format|
      if @app_frame.save
        format.html { redirect_to @app_frame, notice: 'App frame was successfully created.' }
        format.json { render :show, status: :created, location: @app_frame }
      else
        format.html { render :new }
        format.json { render json: @app_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_frames/1
  # PATCH/PUT /app_frames/1.json
  def update
    respond_to do |format|
      if @app_frame.update(app_frame_params)
        format.html { redirect_to @app_frame, notice: 'App frame was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_frame }
      else
        format.html { render :edit }
        format.json { render json: @app_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_frames/1
  # DELETE /app_frames/1.json
  def destroy
    @app_frame.destroy
    respond_to do |format|
      format.html { redirect_to app_frames_url, notice: 'App frame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_frame
      @app_frame = AppFrame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_frame_params
      params.require(:app_frame).permit(:app_id, :frame, :is_visible)
    end
end
