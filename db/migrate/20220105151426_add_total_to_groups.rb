class AddTotalToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :total, :integer
  end
end
