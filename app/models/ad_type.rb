class AdType < ApplicationRecord
	has_many :app_adds, dependent: :destroy
end
