Template.course.conditions = -> Conditions.find()

Template.course.time_ago_in_words = ->
  jQuery.timeago(new Date(this.createdAt))