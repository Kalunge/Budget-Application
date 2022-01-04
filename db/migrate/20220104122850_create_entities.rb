class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.string :author_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
