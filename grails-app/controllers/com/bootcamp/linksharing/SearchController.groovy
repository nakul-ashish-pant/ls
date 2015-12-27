package com.bootcamp.linksharing

import grails.plugin.springsecurity.annotation.Secured

class SearchController {
    @Secured('permitAll')
    def index() { }
}
