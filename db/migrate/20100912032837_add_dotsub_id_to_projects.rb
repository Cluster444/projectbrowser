class AddDotsubIdToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :dotsub_id, :string
  end

  def self.down
    remove_column :projects, :dotsub_id
  end
end
