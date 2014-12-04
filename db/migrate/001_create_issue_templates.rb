class CreateIssueTemplates < ActiveRecord::Migration
  def change
    create_table :issue_templates, :options => 'CHARSET=utf8' do |t|
      t.string :title
      t.string :content
      t.string :project
      t.integer :global
    end
  end
end
