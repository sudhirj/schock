class Chocolate < ActiveRecord::Migration
  def change
    alter_table :chocolates do |t|
      t.float :price
    end
  end
end
