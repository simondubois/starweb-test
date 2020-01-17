
const Form = (function (element) {

    const fields = [];

    const addField = function (field) {
        fields.push(field);
    };

    const validate = function () {
        return fields.every(function (field) {
            return field.validate();
        });
    };

    element.addEventListener('submit', function (event) {
        event.preventDefault();

        if (validate()) {
            element.submit();
        }

        element.reportValidity();
    });

    return {
        addField: addField,
    };

});

const FormField = (function (element) {

    const rules = [];

    const addRule = function (rule) {
        rules.push(rule);
    };

    const setErrorMessage = function (message) {
        element.setCustomValidity(message);
    };

    const validate = function () {
        const failingRules = rules.filter(function (rule) {
            return rule.validate(element.value) === false;
        });

        setErrorMessage(failingRules.length ? failingRules[0].message : '');
        return failingRules.length === 0;
    };

    element.addEventListener('input', function (event) {
        validate();
    });

    return {
        addRule: addRule,
        validate: validate,
    };

});

const FormRule = (function (assertion, message) {

    const validate = function (value) {
        return assertion(value);
    };

    return {
        validate: validate,
        message: message,
    };

});
