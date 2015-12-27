import com.cloudinary.Cloudinary
import de.infinit.grails.plugins.cloudinary.CloudinaryConfig
import de.infinit.grails.plugins.cloudinary.CloudinaryConfigValidator
import de.infinit.grails.plugins.cloudinary.CloudinaryService

class GrailsCloudinaryGrailsPlugin {
    // the plugin version
    def version = "0.3"

    // the version or versions of Grails the plugin is designed for
    def grailsVersion = "2.3 > *"

    // resources that are excluded from plugin packaging
    def pluginExcludes = ["grails-app/views/error.gsp"]

    def title = "Grails Cloudinary Plugin"
    def author = "Simon Buettner"
    def authorEmail = "simon.buettner@infinit-group.de"
    def description = '''Simplifies the usage of the cloudinary service at http://cloudinary.com/.'''
    def documentation = "https://bitbucket.org/sbuettner/grails-cloudinary"
    def license = "APACHE"

    // Details of company behind the plugin (if there is one)
    def organization = [ name: "INFINIT", url: "http://www.infinit-group.de/" ]

    // Any additional developers beyond the author specified above.
    def developers = [ [ name: "Oliver Wahlen", email: "oliver.wahlen@infinit-group.de" ]]

    // Location of the plugin's issue tracker.
    def issueManagement = [ system: "BITBUCKET", url: "https://bitbucket.org/sbuettner/grails-cloudinary/issues" ]

    // Online location of the plugin's browseable source code.
    def scm = [ url: "https://bitbucket.org/sbuettner/grails-cloudinary" ]

    def doWithWebDescriptor = { xml -> }

    def doWithSpring = {
        ConfigObject cloudinaryConfigObject = application.config.grails.plugin.cloudinary

        cloudinaryConfig(CloudinaryConfig) {
		    apiKey = cloudinaryConfigObject.apiKey ?: ''
		    apiSecret = cloudinaryConfigObject.apiSecret ?: ''
		    cloudName = cloudinaryConfigObject.cloudName ?: ''
	    }

        cloudinary(Cloudinary, ['cloud_name': cloudinaryConfigObject.cloudName])

        cloudinaryService(CloudinaryService) {
            cloudinary = ref('cloudinary')
            cloudinaryConfig = ref('cloudinaryConfig')
        }
    }

    def doWithDynamicMethods = { ctx -> }

    def doWithApplicationContext = { ctx ->
        CloudinaryConfig cloudinaryConfig = ctx.getBean('cloudinaryConfig')
        CloudinaryConfigValidator.validate(cloudinaryConfig)
    }

    def onChange = { event -> }

    def onConfigChange = { event ->
        ConfigObject cloudinaryConfigObject = event.application.config.grails.plugin.cloudinary

        // Update the cloudinary configuration
	    CloudinaryConfig cloudinaryConfig = event.ctx.getBean('cloudinaryConfig')
        cloudinaryConfig.with {
	        apiKey = cloudinaryConfigObject.apiKey ?: ''
	        apiSecret = cloudinaryConfigObject.apiSecret ?: ''
	        cloudName = cloudinaryConfigObject.cloudName ?: ''
        }

        CloudinaryConfigValidator.validate(cloudinaryConfig)

        // Update the cloudinary object
        Cloudinary cloudinary = event.ctx.getBean('cloudinary')
        cloudinary.setConfig('cloud_name', cloudinaryConfig.cloudName)
    }

    def onShutdown = { event -> }

}
