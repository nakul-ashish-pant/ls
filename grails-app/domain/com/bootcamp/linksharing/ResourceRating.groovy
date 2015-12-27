package com.bootcamp.linksharing

class ResourceRating implements Serializable {

    Resource resource
    User user
    int score

    //static transients = []

    //static hasMany=[]

    static belongsTo=[resource:Resource]

    static constraints = {
    score range:0..5
    }

    static mapping = {
    }
}
