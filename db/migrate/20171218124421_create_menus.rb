class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :titre
      t.integer :prix
      t.string :plat

      t.timestamps
    end
  end
end
