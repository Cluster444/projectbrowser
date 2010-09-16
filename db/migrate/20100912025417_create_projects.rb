class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.string :length
      t.string :uuid
      t.string :work_status
      t.string :last_modified 
      t.string :date_created
      t.string :external_identifier
      t.string :uri
    end
  end

  def self.down
    drop_table :projects
  end
end
