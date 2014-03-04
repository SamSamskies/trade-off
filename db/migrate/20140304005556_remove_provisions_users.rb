class RemoveProvisionsUsers < ActiveRecord::Migration
  def change
    drop_table :provisions_users
  end
end
