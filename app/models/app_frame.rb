class AppFrame < ApplicationRecord
  belongs_to :app
	mount_uploader :frame, AppLogoUploader
end
