class ChangePublicColumnNameInLocation < ActiveRecord::Migration[6.0]
  def change
    rename_column :locations, :public, :is_public
  end
end
