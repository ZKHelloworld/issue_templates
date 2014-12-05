require_dependency 'issue_patch'

Redmine::Plugin.register :issue_templates do
  name 'issue_templates'
  author 'Zheng Kenghong'
  description 'Redmine Issue Templates'
  version '0.0.1'
  url 'https://github.com/ZKHelloworld/issue_templates'
  author_url 'https://github.com/ZKHelloworld'

  permission :issue_templates, { :issue_templates => [:index, :new, :edit, :delete] }, :public => false
  menu :project_menu, :issue_templates, { :controller => 'issue_templates', :action => 'index' }, :caption => :issue_templates

  project_module :issue_templats do
  end
end
