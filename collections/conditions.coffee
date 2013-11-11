@Conditions = new Meteor.Collection("conditions")

if Meteor.isServer
  Conditions.before.insert (userId, doc) ->
    doc.createdAt = Date.now()