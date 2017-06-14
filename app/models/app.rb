class App < ApplicationRecord
	has_one :app_add, dependent: :destroy
end
