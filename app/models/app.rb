class App < ApplicationRecord
	mount_uploader :logo, AppLogoUploader
	has_many :app_adds, dependent: :destroy
	has_many :app_frames, dependent: :destroy
	has_many :app_devices, dependent: :destroy
end
