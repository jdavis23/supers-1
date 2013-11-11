Template.course.conditions = -> Conditions.find()

Template.course.time_ago_in_words = ->
  jQuery.timeago(new Date(this.createdAt))

Template.course.users_email = ->
  Meteor.users.findOne(this.userId)._id

Template.new.events =
  'submit #new_condition': (event) ->
    event.preventDefault()
    Conditions.insert(notes: $('#new_condition_note').val())
    $('#new_condition_note').val('')
