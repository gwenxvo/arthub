import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery"
export default class extends Controller {
  static targets = ["photo"]
  connect() {
  }

  change(event) {
    this.photoTarget.src = event.currentTarget.src
  }
}
