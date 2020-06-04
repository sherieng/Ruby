class AddAgeColumnToNinjas < ActiveRecord::Migration
  def change
    add_column :ninjas, :age, :integer
  end
end
