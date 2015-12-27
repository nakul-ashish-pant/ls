package com.bootcamp.linksharing

class LinkResource extends com.bootcamp.linksharing.Resource implements Serializable {

    String url
    Date dateCreated
    Date lastUpdated

    //static transients = []

    //static hasMany=[]

    //static belongsTo=[]

    static constraints = {
        url url:true
    }

    static mapping = {
    }
}
