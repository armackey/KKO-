class RemoveColumnSubject < ActiveRecord::Migration
  def change
    remove_column :users,  :subject, :string
    remove_column :users,  :lastname, :string
  end
end
