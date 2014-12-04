## issue_tempates plugin for redmine

This plugin provides feature to insert template chosen when **create** or **edit** an issue. Templates are either global or project specified.

### Dependencies

1. [redmine](http://www.redmine.org/projects/redmine/wiki/Guide)

### Install

```
sudo rake redmine:plugins:migrate
```

### Uninstall

```
sudo rake redmine:plugins:migrate NAME=issue_templates VERSION=0 RAILS_ENV=production
```

### Permission configure

1. Get into your redmine permission configure page. Note that you should login as a **super user**.
    ```
    http://localhost:3000/roles/permissions
    ```

2. Find the item **Issue templates**. This item means permission for:
    - Create a issue template
    - Edit a issue template
    - Delete a issue template

3. Choose which role to have that permission.

The one who has the permission should see the **Issue Templates** tag in project pages
