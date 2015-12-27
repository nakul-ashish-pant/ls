package com.bootcamp.linksharing

class Topic implements Serializable {


    String name
    User createdBy
    Visibility visibility
    Date dateCreated
    Date lastUpdated

    //static transients = []

    static hasMany=[resources:Resource,subscriptions:Subscription]

    static belongsTo=[createdBy:User]

    static constraints = {
//        visibility inList:[visibility.PRIVATE,visibility.PUBLIC]
    }

    static mapping = {
    }
}

