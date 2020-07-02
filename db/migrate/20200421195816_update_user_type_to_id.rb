class UpdateUserTypeToId < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_type, :user_type_id
    change_column :users, :user_type_id, :string
  end
end
