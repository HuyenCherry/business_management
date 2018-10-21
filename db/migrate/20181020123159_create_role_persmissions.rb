class CreateRolePersmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :role_persmissions do |t|
      t.references :role, foreign_key: true
      t.references :permission, foreign_key: true

      t.timestamps
    end
  end
end
