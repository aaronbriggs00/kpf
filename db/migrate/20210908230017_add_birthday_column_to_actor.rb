class AddBirthdayColumnToActor < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :birthday, :date
  end
end
