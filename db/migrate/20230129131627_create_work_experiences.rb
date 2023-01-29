class CreateWorkExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :work_experiences do |t|
      t.string :company
      t.string :location
      t.date :start_date
      t.date :end_end
      t.text :summary

      t.timestamps
    end
  end
end
