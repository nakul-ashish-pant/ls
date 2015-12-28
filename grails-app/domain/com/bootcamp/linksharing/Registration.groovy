package com.bootcamp.linksharing

import com.bootcamp.linksharing.command.RegistrationCommand

class Registration implements Serializable {

    String userName
    String email
    String token
    Date dateCreated
    static constraints = {
        userName blank: false,nullable: false
        email email: true
        token blank: false,nullable: true
    }

    static mapping = {
    }

    String initializeToken(){
        return UUID.randomUUID().toString()
    }


}
