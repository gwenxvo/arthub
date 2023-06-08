import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery"
export default class extends Controller {
  static targets = ["photo"]
  connect() {
  }

  change(event) {
    const photo = this.photoTarget.src
    const thumbnail = event.currentTarget.src
    this.photoTarget.src = thumbnail
    event.currentTarget.src = photo
  }
}
