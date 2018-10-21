class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.date :created_at
      t.date :process_at
      t.integer :status
      t.integer :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
