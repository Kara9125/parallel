class AddInstagramhandleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :insta_handle, :string
  end
end
