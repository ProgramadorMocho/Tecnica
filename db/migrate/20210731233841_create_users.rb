class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user
      t.string :password
      t.string :name
      t.string :secondname
      t.string :lastname
      t.string :sec_lastname
      t.string :identification
      t.string :number_identification
      t.integer :age

      t.timestamps
    end
  end
end
