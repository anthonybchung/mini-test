class CreateAboutMes < ActiveRecord::Migration[7.0]
  def change
    create_table :about_mes do |t|
      t.text :paragraph
      t.references :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
