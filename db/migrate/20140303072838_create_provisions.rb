class CreateProvisions < ActiveRecord::Migration
  def change
    create_table :provisions do |t|
      t.string :tag
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
