class CreateResponsibilities < ActiveRecord::Migration[7.0]
  def change
    create_table :responsibilities do |t|
      t.string :description
      t.references :work_experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
