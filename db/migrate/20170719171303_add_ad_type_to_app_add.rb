class AddAdTypeToAppAdd < ActiveRecord::Migration[5.1]
  def change
    add_reference :app_adds, :ad_type, foreign_key: true
  end
end
