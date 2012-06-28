class CreateDiscEditions < ActiveRecord::Migration
  def change
    create_table :disc_editions do |t|
      t.string :plastic
      t.string :price
      t.references :disc

      t.timestamps
    end
    add_index :disc_editions, :disc_id
  end
end
