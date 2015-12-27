package com.bootcamp.linksharing

import grails.plugin.springsecurity.annotation.Secured

class TopicController {
    @Secured('permitAll')
    def index() {

    }


    @Secured('permitAll')
    def subscriptions(){

    }


    @Secured('permitAll')
    def showPost(){
        render(view: 'showPost')
    }
}
