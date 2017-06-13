class AddUserTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_type, :string, { null: false , default: "user" }
    change_column :users, :user_type, :string, { null: false }

  end
end
