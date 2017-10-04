class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :status
    end
  end
end
