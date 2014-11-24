$(function($) {
    'use strict';

    // new issue insert template
    $('#template_insert_button').click(function() {
        var id = $('#templates_insert_select').val();
        var template = $('#template_content_' + id).text();
        var origin = $('#issue_description').val();

        // add two line if origin is not empty
        origin += origin ? '\n\n' : '';

        // origin editor
        $('#issue_description').val(origin + template);
        // ckeditor
        try {
            if (CKEDITOR.instances.issue_description) {
                CKEDITOR.instances.issue_description.setData(origin + template);
            }
        } catch (e) {}
    });

    // edit current template
    $('#templates_edit_select').change(function() {
        var id = $(this).val();
        var content = $('#template_content_' + id).text();

        // origin editor
        $('#issue_template_content').text(content);
        // ckeditor

    }).change();
});
