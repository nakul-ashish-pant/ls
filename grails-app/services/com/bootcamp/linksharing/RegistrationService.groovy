package com.bootcamp.linksharing

import com.bootcamp.linksharing.command.RegistrationCommand
import grails.transaction.Transactional

@Transactional
class RegistrationService {

    boolean registerUser(RegistrationCommand registrationCommand){
        Registration user
        user=Registration.findByUserNameOrEmail(registrationCommand.userName,registrationCommand.email)
        if (!user) {
            user=new Registration(registrationCommand)
            user.save(failOnError: true,flush: true)
            return true
        } else {
            return false
        }
    }
}
