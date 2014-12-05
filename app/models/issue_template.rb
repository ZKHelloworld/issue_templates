class IssueTemplate < ActiveRecord::Base
  unloadable

  validates :title, :presence => true
  validates :content, :presence => true

  def self.templates(project)
    global = IssueTemplate.find_all_by_global(1)
    project = IssueTemplate.find_all_by_project(project, :conditions => 'global = 0')

    return project + global
  end

end
