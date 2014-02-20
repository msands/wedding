class AddGuestToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :guest_name, :string
    add_column :rsvps, :menu_option, :string
  end
end
