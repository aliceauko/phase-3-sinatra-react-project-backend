class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :category
      t.boolean :is_present
      t.integer :boss_id
    end
  end
end
