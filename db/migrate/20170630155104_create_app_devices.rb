class CreateAppDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :app_devices do |t|
      t.references :device, foreign_key: true
      t.references :app, foreign_key: true

      t.timestamps
    end
  end
end
