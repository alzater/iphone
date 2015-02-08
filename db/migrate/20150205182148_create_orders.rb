class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.text :text, null: false
      t.boolean :new, default: true
      t.string :comment

      t.timestamps
    end
  end
end
