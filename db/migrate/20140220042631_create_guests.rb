class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.string :menu_option

      t.timestamps
    end
  end
end
