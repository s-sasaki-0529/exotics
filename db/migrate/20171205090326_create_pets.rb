class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.references :kind, foreign_key: true
      t.string :name
      t.integer :gender
      t.date :birthday
      t.text :description
      t.string :image_url
      t.string :string

      t.timestamps
    end
  end
end
