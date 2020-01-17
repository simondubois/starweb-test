
/*
 * Load form validator
 */

const postForm = Form(document.getElementById('post-form'));

/*
 * Validate post title
 */

const postTitle = FormField(document.getElementById('post-title'));
postForm.addField(postTitle);

const postTitleRequired = FormRule(
    function (value) { return value.length > 0 },
    "The title is required."
);
postTitle.addRule(postTitleRequired);

const postTitleNumber = FormRule(
    function (value) { return /^[^\d]*$/.test(value) },
    "The title can't contain any number."
);
postTitle.addRule(postTitleNumber);

/*
 * Validate post content
 */

const postContent = FormField(document.getElementById('post-content'));
postForm.addField(postContent);

const postContentRequired = FormRule(
    function (value) { return value.length > 0 },
    "The content is required."
);
postContent.addRule(postContentRequired);

const postContentHtml = FormRule(
    function (value) {
        return new DOMParser().parseFromString(value, "text/html").body.children.length === 0;
    },
    "The content can't contain any HTML."
);
postContent.addRule(postContentHtml);
