class AddStateColumnToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :state, :string
  end
end
