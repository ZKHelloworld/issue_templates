require_dependency 'issue_patch'

Redmine::Plugin.register :issue_templates do
  name 'issue_templates plugin'
  author 'Author name'
  description 'Redmine Issue Templates'
  version '0.0.1'
  url 'https://github.com/ZKHelloworld/issue_templates'
  author_url 'https://github.com/ZKHelloworld'

  #permission :issue_templates, { :issue_templates => [:index] }, :public => true
  menu :project_menu, :issue_templates, { :controller => 'issue_templates', :action => 'index' }, :caption => :issue_templates, :param => :project_id

  project_module :issue_templats do
  end
end
