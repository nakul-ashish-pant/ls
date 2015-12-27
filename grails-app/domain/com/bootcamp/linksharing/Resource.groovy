package com.bootcamp.linksharing

class Resource implements Serializable {

    String description
    User createBy
    Topic topic
    Date dateCreated
    Date lastUpdated

    //static transients = []

    static hasMany=[resourceRatings:ResourceRating]

    static belongsTo=[topic:Topic]

    static constraints = {
        description blank:false

    }

    static mapping = {
        tablePerHierarchy false
    }
}
