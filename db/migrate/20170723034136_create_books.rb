class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :image
      t.integer :pages
      t.references :publisher, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
