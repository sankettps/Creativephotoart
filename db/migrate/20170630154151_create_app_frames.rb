class CreateAppFrames < ActiveRecord::Migration[5.1]
  def change
    create_table :app_frames do |t|
      t.references :app, foreign_key: true
      t.string :frame
      t.boolean :is_visible, default: true

      t.timestamps
    end
  end
end
