class CreateProvisionsUsers < ActiveRecord::Migration
  def change
    create_table :provisions_users do |t|
      t.integer :provision_id
      t.integer :user_id
    end
  end
end
