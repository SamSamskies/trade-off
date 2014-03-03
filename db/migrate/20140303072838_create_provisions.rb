class CreateProvisions < ActiveRecord::Migration
  def change
    create_table :provisions do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
