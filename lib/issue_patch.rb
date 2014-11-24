require_dependency 'issue'

module IssueTemplates
  def self.included(base) # :nodoc:
    base.extend(ClassMethods)

    base.send(:include, InstanceMethods)

    # Same as typing in the class
    base.class_eval do
      unloadable
      belongs_to :deliverable
    end
  end

  module ClassMethods
  end

  module InstanceMethods
    # Wraps the association to get the Deliverable subject.  Needed for the
    # Query and filtering
    def all_templates
      IssueTemplate.all_templates(@project_id)
    end
  end

end

Issue.send(:include, IssueTemplates)
