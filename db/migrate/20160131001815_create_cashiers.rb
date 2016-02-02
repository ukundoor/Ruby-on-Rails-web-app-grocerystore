class CreateCashiers < ActiveRecord::Migration
  def change
    create_table :cashiers do |t|
      t.string :name
      t.string :username
      t.datetime :startdate
      t.datetime :enddate
      t.date :dob
      t.integer :age
      t.string :email
      t.string :phone
      t.float :salaryperhour

      t.timestamps
    end
  end
end
