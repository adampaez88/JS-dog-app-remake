class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :breed
      t.string :info
      t.string :image_url
      t.string :description
      t.timestamps
    end
  end
end
