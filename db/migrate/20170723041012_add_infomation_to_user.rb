class AddInfomationToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address, :string
    add_column :users, :fullname, :string
    add_column :users, :phone, :string
  end
end
