class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string  :description
      t.float   :amount
      t.string  :date
      t.integer :category_id
      t.integer :user_id
    end
  end
end
