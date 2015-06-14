class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
		t.string :name, null: false, default: ""
		t.text :description, null: false, default: ""
		t.integer :price, null: false, default: 0

      t.timestamps null: false
    end
  end
end
