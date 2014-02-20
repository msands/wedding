class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.boolean :guest_attending
      t.text :guest_note

      t.timestamps
    end
  end
end
