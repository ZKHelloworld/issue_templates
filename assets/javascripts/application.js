$(function($) {
    'use strict';

    $('#issue_template_insert').click(function() {
        var id = $('#issue_templates_select').val();
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
});
