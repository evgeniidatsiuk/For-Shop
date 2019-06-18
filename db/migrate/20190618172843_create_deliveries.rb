class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :where,      null: false, default: ""
      t.integer :number,    null: false, default: 0
      t.string :price,      null: false, default: ""
      t.string :client,     null: false, default: ""
      t.integer :status_id, null: false
      t.datetime :end,      null: false, default: ""

      t.timestamps null: false
    end
    add_index :deliveries, :number,   unique: true
  end
end
