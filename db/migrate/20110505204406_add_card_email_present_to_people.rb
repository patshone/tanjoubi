class AddCardEmailPresentToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :email, :boolean, :default => false
    add_column :people, :card, :boolean, :default => false
    add_column :people, :present, :boolean, :default => false
  end

  def self.down
    remove_column :people, :email
    remove_column :people, :card
    remove_column :people, :present
  end
end
