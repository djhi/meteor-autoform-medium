Package.describe({
  name: 'gildaspk:autoform-medium',
  version: '0.0.4',
  summary: "Medium editor for AutoForm",
  description: "Medium editor for AutoForm",
  git: "http://github.com/djhi/meteor-autoform-medium.git"
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0');

  api.use([
    'templating',
    'aldeed:autoform@5.3.0',
    'mediumeditor:mediumeditor@5.2.0',
  ], 'client');

  // TODO: restore when medium editor fixe deactivate
  //api.use('tap:18n', {weak: true});

  api.addFiles([
    'template.html',
    'template.js',
  ], 'client');
});
