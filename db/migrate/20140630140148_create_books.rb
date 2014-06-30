class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price
      t.date :published_on
      t.belongs_to :authors, index: true

      t.timestamps
    end
  end
end
