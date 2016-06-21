class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :subject
      t.string :location
      t.string :custom_name

      t.timestamps null: false
    end
  end
end
