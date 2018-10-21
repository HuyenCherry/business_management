class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :name
      t.date :checkin
      t.date :checkout
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
