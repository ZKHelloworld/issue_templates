# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'issue_templates', :to => 'issue_templates#index'

get 'issue_templates/new', :to => 'issue_templates#new'
post 'issue_templates/new', :to => 'issue_templates#new'

get 'issue_templates/edit', :to => 'issue_templates#edit'
post 'issue_templates/edit', :to => 'issue_templates#edit'

post 'issue_templates/delete', :to => 'issue_templates#delete'
