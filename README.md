Meteor Autoform Medium Editor
=========================

Adds [medium editor](https://github.com/CitizenKevin/meteor-medium-editor/)
for [autoform](https://github.com/aldeed/meteor-autoform).

## Setup

1. `meteor add gildaspk:autoform-medium`

## Usage
You can apply it directly in your template:

```
{{> afFieldInput name='richTextFieldName' type="medium"}}
```

You can also specify it at the schema level:
```
MySchema = new SimpleSchema({
  richTextFieldName: {
    type: String
    autoform: {
      type="medium"
    }
  }
});
```
