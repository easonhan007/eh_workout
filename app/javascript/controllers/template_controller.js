import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="template"
export default class extends Controller {
  static targets = ["exercise"]
  connect() {
  }

  append_one() {
    const item = this.exerciseTargets[0]
    var new_one = item.cloneNode(true) 
    this.element.append(new_one) 
  }
}
