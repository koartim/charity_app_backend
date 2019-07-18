class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :url
      t.integer :rating
      t.string :rating_image
      t.float :financial_rating
      t.float :accountability_rating
      t.string :category
      t.string :deductibility
      t.string :state

      t.timestamps
    end
  end
end
