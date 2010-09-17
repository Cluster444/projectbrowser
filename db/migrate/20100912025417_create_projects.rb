class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :date_created
      t.string :description
      t.string :duration
      t.string :external_identifier
      t.string :genre
      t.string :language
      t.string :last_modified 
      t.string :num_languages
      t.string :title
      t.string :transcription_status
      t.string :user
      t.string :uuid
      t.string :views
      t.string :work_status
      t.string :display_uri
      t.string :media_uri
      t.string :screenshot_uri
      t.string :translate_uri
    end
  end

  def self.down
    drop_table :projects
  end
end
