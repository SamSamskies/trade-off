class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :rating
      t.integer :user_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
