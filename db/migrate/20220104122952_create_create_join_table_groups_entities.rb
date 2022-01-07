class CreateCreateJoinTableGroupsEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :create_join_table_groups_entities do |t|
      t.string :groups
      t.string :entities

      t.timestamps
    end
  end
end
