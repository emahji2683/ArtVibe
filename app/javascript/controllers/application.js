import { Application } from "@hotwired/stimulus"
import { Autocomplete } from "stimulus-autocomplete"
import ContentLoader from '@stimulus-components/content-loader'

const application = Application.start()
application.register('content-loader', ContentLoader)
application.register("autocomplete", Autocomplete)
application.register('content-loader', ContentLoader)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


