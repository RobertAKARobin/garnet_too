class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.string :github_id
      t.string :github_username
      t.string :github_image_url

      t.timestamps null: false
    end
  end
end
