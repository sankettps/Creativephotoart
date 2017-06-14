class CreateAppAdds < ActiveRecord::Migration[5.1]
  def change
    create_table :app_adds do |t|
      t.references :app, foreign_key: true
      t.string :name
      t.string :ad_mob_id
      t.string :fb_id
      t.boolean :is_shown, default: true
      t.boolean :is_fb
      t.boolean :is_ad_mob, default: true

      t.timestamps
    end
  end
end
