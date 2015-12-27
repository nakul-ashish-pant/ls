package com.bootcamp.linksharing


class Subscription implements Serializable {



    Topic topic
    User user
    Seriousness seriousness

    Date dateCreated
    Date lastUpdated

    //static transients = []

    //static hasMany=[]

    static belongsTo=[topic:Topic]

    static constraints = {
//        seriousness inList:[Seriousness.CASUAL,Seriousness.SERIOUS,Seriousness.VERY_SERIOUS]
    }

    static mapping = {
    }
}


