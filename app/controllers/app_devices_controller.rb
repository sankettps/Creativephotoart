class AppDevicesController < ApplicationController
  before_action :set_app_device, only: [:show, :edit, :update, :destroy]

  # GET /app_devices
  # GET /app_devices.json
  def index
    @app_devices = AppDevice.all
  end

  # GET /app_devices/1
  # GET /app_devices/1.json
  def show
  end

  # GET /app_devices/new
  def new
    @app_device = AppDevice.new
  end

  # GET /app_devices/1/edit
  def edit
  end

  # POST /app_devices
  # POST /app_devices.json
  def create
    @app = App.find_by_name(params[:app_name])
    @device = Device.find_or_create_by(device_token: params[:device_token])
    @app_device = @app.app_devices.find_or_create_by(device_id: @device.id)

    respond_to do |format|
      if @app_device.save
        format.json { render json: '', status: :created }
      else
        format.json { render json: @app_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_devices/1
  # PATCH/PUT /app_devices/1.json
  def update
    respond_to do |format|
      if @app_device.update(app_device_params)
        format.html { redirect_to @app_device, notice: 'App device was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_device }
      else
        format.html { render :edit }
        format.json { render json: @app_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_devices/1
  # DELETE /app_devices/1.json
  def destroy
    @app_device.destroy
    respond_to do |format|
      format.html { redirect_to app_devices_url, notice: 'App device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_device
      @app_device = AppDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_device_params
      # params.require(:app_device).permit(:device_id, :app_id)
    end
end
