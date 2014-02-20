class RemoveGuestFieldsFromRsvps < ActiveRecord::Migration
  def change
    remove_column :rsvps, :guest_name
    remove_column :rsvps, :menu_option
  end
end
