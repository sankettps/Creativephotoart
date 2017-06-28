class App < ApplicationRecord
	mount_uploader :logo, AppLogoUploader
	has_one :app_add, dependent: :destroy
end
