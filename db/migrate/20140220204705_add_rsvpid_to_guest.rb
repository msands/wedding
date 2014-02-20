class AddRsvpidToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :rsvp_id, :integer
  end
end
