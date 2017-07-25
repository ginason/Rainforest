class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer "product_id"
      t.text "comment"
      t.timestamps
    end
  end
end

#t.reference "products"
