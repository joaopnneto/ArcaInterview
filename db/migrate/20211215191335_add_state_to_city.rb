class AddStateToCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :cities, :states, foreign_key: true
  end
end
