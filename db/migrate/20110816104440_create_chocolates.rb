class CreateChocolates < ActiveRecord::Migration
  def change
    create_table :chocolates do |t|
      t.string :name
      t.text :desc
      t.float :price
      t.timestamps
    end
  end
end
