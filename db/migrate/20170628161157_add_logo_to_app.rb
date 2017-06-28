class AddLogoToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :logo, :string
  end
end
