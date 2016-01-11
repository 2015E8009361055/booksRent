class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookname
      t.string :author
      t.string :press
      t.string :isbn
      t.references :user, index: true, foreign_key: true
      t.integer :borrower
      t.string :explanation
      t.string :status
      t.string :booktype
      t.string :extend

      t.timestamps null: false
    end
  end
end
