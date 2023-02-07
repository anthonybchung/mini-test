class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.string :name
      t.string :url
      t.string :svg
      t.references :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
