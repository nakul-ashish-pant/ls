package com.bootcamp.linksharing

import com.bootcamp.linksharing.command.RegistrationCommand
import grails.plugin.springsecurity.annotation.Secured

class UserController {
    def registrationService

    @Secured('ROLE_ADMIN')
    def index() {
        render "Secure login from user controller written by nakul"
        []
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def dashboard() {

    }

    @Secured('permitAll')
    def profile() {

    }

    @Secured('permitAll')
    def register(RegistrationCommand registrationCommand) {

    }

}



