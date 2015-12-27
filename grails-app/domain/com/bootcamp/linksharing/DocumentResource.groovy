package com.bootcamp.linksharing

class DocumentResource extends com.bootcamp.linksharing.Resource implements Serializable {

    String filePath
    Date dateCreated
    Date lastUpdated

    //static transients = []

    //static hasMany=[]

    //static belongsTo=[]

    static constraints = {
    }

    static mapping = {
    }
}
