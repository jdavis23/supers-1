@Conditions = new Meteor.Collection("conditions")

if Meteor.isServer
  Conditions.before.insert (userId, doc) ->
    doc.userId = userId
    doc.createdAt = Date.now()