package com.bootcamp.linksharing

import grails.plugin.springsecurity.annotation.Secured

class UserController {
    @Secured('ROLE_ADMIN')
    def index() {
    render "Secure login from user controller written by nakul"
    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def dashboard(){

    }
    @Secured('permitAll')
    def profile(){

    }
}
