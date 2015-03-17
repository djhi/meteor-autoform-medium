AutoForm.addInputType 'medium',
  template: 'afMedium'
  valueOut: ->
    result = this[0].innerHTML
    result

Template.afMedium.rendered = ->
  input = @find 'div'
  opts = _.defaults @data.atts.mediumOptions,
    staticToolbar: true
    stickyToolbar: true

  editor = new MediumEditor input, opts
  ### TODO: restore when medium editor fixe deactivate
  Meteor.setTimeout =>
    Tracker.autorun =>
      editor.deactivate()

      if Package['tap:i18n']
        language = TAPi18n.getLanguage()

      mediumOptions = @data.atts.mediumOptions
      opts = _.defaults mediumOptions,
        staticToolbar: true
        stickyToolbar: true

      _.extend editor.options, mediumOptions
      editor.activate()
    ,
      1000
  ###
  return

Template.afMedium.helpers
  atts: ->
    atts = _.clone @atts
    delete atts.mediumOptions
    atts
