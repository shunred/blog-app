class AddToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :user, null: false, foreign_key: true
  end
end
