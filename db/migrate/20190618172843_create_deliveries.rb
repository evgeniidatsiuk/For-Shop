class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :where,   null: false, default: ""
      t.integer :nubmer, null: false, default: 0
      t.string :price,   null: false, default: ""
      t.string :owner,   null: false, default: ""

      t.timestamps null: false
    end
    add_index :deliveries, :nubmer,   unique: true
  end
end
