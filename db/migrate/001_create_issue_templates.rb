class CreateIssueTemplates < ActiveRecord::Migration
  def change
    create_table :issue_templates do |t|
      t.string :title
      t.string :content
      t.string :project
      t.integer :global #global or project
      t.integer :type #create or changing status
    end
  end
end
