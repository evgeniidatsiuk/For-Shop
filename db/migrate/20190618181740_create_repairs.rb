class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.string :where,  null: false, default: ""
      t.string :name,   null: false, default: ""
      t.string :client, null: false, default: ""
      t.string :number, null: false, default: ""
      t.string :worker, null: false, default: ""
      t.string :price,  null: false, default: ""
      t.datetime :end,  null: false, default: ""

      t.timestamps null: false
    end
      add_index :repairs, :nubmer,   unique: true
  end
end
