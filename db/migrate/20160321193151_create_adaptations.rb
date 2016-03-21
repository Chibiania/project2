class CreateAdaptations < ActiveRecord::Migration
  def change
    create_table :adaptations do |t|
      t.string :title
      t.string :date_of_release
      t.string :image_url
      t.string :comparison_to_book
      t.references :book, index: true, foreign_key: true
    end
  end
end
