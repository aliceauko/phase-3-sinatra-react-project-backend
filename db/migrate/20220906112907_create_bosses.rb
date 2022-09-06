class CreateBosses < ActiveRecord::Migration[6.1]
  def change
    create_table :bosses do |t|
      t.string :name
     
    end
  end
end
