class AppAddsController < ApplicationController
  before_action :set_app_add, only: [:show, :edit, :update, :destroy]

  # GET /app_adds
  # GET /app_adds.json
  def index
    @app_adds = AppAdd.all
  end

  # GET /app_adds/1
  # GET /app_adds/1.json
  def show
  end

  # GET /app_adds/new
  def new
    @app_add = AppAdd.new
  end

  # GET /app_adds/1/edit
  def edit
  end

  # POST /app_adds
  # POST /app_adds.json
  def create
    @app_add = AppAdd.new(app_add_params)

    respond_to do |format|
      if @app_add.save
        format.html { redirect_to @app_add, notice: 'App add was successfully created.' }
        format.json { render :show, status: :created, location: @app_add }
      else
        format.html { render :new }
        format.json { render json: @app_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_adds/1
  # PATCH/PUT /app_adds/1.json
  def update
    respond_to do |format|
      if @app_add.update(app_add_params)
        format.html { redirect_to @app_add, notice: 'App add was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_add }
      else
        format.html { render :edit }
        format.json { render json: @app_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_adds/1
  # DELETE /app_adds/1.json
  def destroy
    @app_add.destroy
    respond_to do |format|
      format.html { redirect_to app_adds_url, notice: 'App add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_add
      @app_add = AppAdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_add_params
      params.require(:app_add).permit(:app_id, :name, :ad_mob_id, :fb_id, :is_shown, :is_fb, :is_ad_mob)
    end
end
