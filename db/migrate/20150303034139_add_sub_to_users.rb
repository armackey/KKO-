class AddSubToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subject, :string
    add_column :users, :lastname, :string
  end
end
