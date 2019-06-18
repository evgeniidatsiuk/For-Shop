class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.string :where,   null: false, default: ""
      t.string :name,    null: false, default: ""
      t.string :client,  null: false, default: ""
      t.integer :number, null: false, default: 0
      t.string :worker,  null: false, default: ""
      t.string :price,   null: false, default: ""
      t.datetime :end,   null: false, default: ""

      t.timestamps null: false
    end
      add_index :repairs, :number,   unique: true
  end
end
