class RemoveAgeColumnFromNinjas < ActiveRecord::Migration
  def change
    remove_column :ninjas, :age, :integer
  end
end
