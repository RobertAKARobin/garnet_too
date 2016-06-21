class CreateStudentsAndInstructors < ActiveRecord::Migration
  def change
    [:students, :instructors].each do |table_name|
      create_table table_name do |t|
        t.integer :user_id
        t.integer :cohort_id
        t.string :slack_id
        t.string :slack_name

        t.timestamps null: false
      end
    end

    add_column :students, :lead_instructor_id, :integer
  end
end
