package com.bootcamp.linksharing

class ReadingItem implements Serializable {

    Resource resource
    User user
    Boolean isRead

    Date dateCreated
    Date lastUpdated

    //static transients = []

    //static hasMany=[]

    static belongsTo=[user:User]

    static constraints = {
    }

    static mapping = {
    }
}
