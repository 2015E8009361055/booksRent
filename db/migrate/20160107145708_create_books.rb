class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookname
      t.string :author
      t.string :press
      t.string :isbn
      t.integer :renter_id
      t.integer :borrower
      t.string :explanation
      t.integer :status
      t.string :type
      t.string :extend

      t.timestamps null: false
    end
  end
end
