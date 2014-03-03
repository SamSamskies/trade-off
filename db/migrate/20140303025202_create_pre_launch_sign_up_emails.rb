class CreatePreLaunchSignUpEmails < ActiveRecord::Migration
  def change
    create_table :pre_launch_sign_up_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
