class CreateBookDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :book_deals do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :condition
      t.integer :status
      t.datetime :publish_at
      t.string :edition
      t.datetime :release_date
      t.text :description
      t.decimal :price
      t.datetime :return_date
      t.bigint :deal_id
      t.integer :deal_type
      t.datetime :deal_date

      t.timestamps
    end
  end
end
