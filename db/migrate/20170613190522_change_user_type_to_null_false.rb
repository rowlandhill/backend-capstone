class ChangeUserTypeToNullFalse < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :user_type, :string, { null: false }
  end
end
