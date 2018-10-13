class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :password
      t.string :name, null: false, default: ""
      t.integer :sex, null: false, default: 0
      t.date :birthday, null: false, default: "2000/02/02"
      t.string :phone, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :image, null: true, default: ""

      t.timestamps
    end
  end
end
