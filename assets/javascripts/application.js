$(function($) {
    'use strict';

    // new issue insert template
    $('#template_insert_button').click(function() {
        var id = $('#templates_insert_select').val();
        var template = $('#template_content_' + id).text();
        var origin;

        // find out now is new or edit a issue
        if (window.location.pathname.indexOf('issues/new') !== -1) {
            // issue description
            origin = $('#issue_description').val();
            origin += origin ? '\n\n' : '';
            $('#issue_description').val(origin + template);
            try {
                if (CKEDITOR.instances.issue_description) {
                    template = template.split('\n').join('<p>'); // add <p> in every line
                    CKEDITOR.instances.issue_description.setData(origin + template);
                }
            } catch (e) {}
        } else {
            // issue note
            origin = $('#issue_notes').val();
            origin += origin ? '\n\n' : '';
            $('#issue_notes').val(origin + template);
            try {
                if (CKEDITOR.instances.issue_notes) {
                    template = template.split('\n').join('<p>'); // add <p> in every line
                    CKEDITOR.instances.issue_notes.setData(origin + template);
                }
            } catch (e) {}
        }
    });

    // edit current template
    $('#issue_templates_select').change(function() {
        var id = $(this).val();
        var content = $('#template_content_' + id).text();

        // origin editor
        $('#issue_templates_content').val(content);
        // ckeditor

    }).change();

    // delete current template
    $('#template_delete_button').click(function() {
        var id = $('#issue_templates_select').val();

        if (confirm('Are you sure?')) {
            $.get(window.location.pathname + '/delete/' + id, function() {
                window.location.reload();
            });
        }
    });
});
