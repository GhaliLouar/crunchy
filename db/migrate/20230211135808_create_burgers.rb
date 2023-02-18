class CreateBurgers < ActiveRecord::Migration[7.0]
  def change
    create_table :burgers do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
