class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :number
      t.string :address
      t.text :description, null: false

      t.timestamps
    end
  end
end
