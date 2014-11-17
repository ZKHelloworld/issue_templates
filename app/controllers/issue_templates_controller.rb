class IssueTemplatesController < ApplicationController
  #unloadable


  def index
    @issueTemplates = IssueTemplate.all
  end

  #def new
  #end

  #def edit
  #end

  #def delete
  #end
end
