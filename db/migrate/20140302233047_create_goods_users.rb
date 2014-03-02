class CreateGoodsUsers < ActiveRecord::Migration
  def change
    create_table :goods_users do |t|
      t.integer :good_id
      t.integer :user_id
    end
  end
end
