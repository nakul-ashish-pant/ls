package com.bootcamp.linksharing.command

import com.bootcamp.linksharing.Registration
import grails.validation.Validateable

/**
 * Created by nakul on 28/12/15.
 */

@Validateable
class RegistrationCommand {
    String userName
    String email

    static constraints={
        importFrom Registration
    }

    String initializeToken(){
        return UUID.randomUUID().toString()
    }

}
