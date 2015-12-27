package com.bootcamp.linksharing

class SiteFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }

        blankToNullAndTrim(controller: '*',action: '*'){
            before = {
                if(request.post){ //check if request is post
                    convertBlanksToNullAndTrim(params)
                    }
                true
                }
            }
        }

    public static convertBlanksToNullAndTrim(Map map){
        def keys=[]+map.keySet() //avoid ConcurrentModificationException

        for(name in keys){
            def value=map[name]  //get each value from map
            if (value instanceof String){ //check if value is String
                value=value.trim()  //trim value for extra whistespaces
                if(value.length()==0){ //check if value is blank
                    map[name]=null  //convert to null
                } else{
                    map[name]=value //else set updated value to map
                }
            } else if(value instanceof Map) {
                convertBlanksToNullAndTrim value   //recurse for empty nested params
            }
        }
    }
}
