# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'projects/:id/issue_templates', :to => 'issue_templates#index'

get 'projects/:id/issue_templates/new', :to => 'issue_templates#new'
post 'projects/:id/issue_templates/new', :to => 'issue_templates#new'

get 'projects/:id/issue_templates/edit', :to => 'issue_templates#edit'
post 'projects/:id/issue_templates/edit', :to => 'issue_templates#edit'

post 'projects/:id/issue_templates/delete', :to => 'issue_templates#delete'
