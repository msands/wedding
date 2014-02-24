class AddGuestEmailToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :guest_email, :string
  end
end
