class AppDevice < ApplicationRecord
  belongs_to :device
  belongs_to :app
end
