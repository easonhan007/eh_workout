import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="template"
export default class extends Controller {
  static targets = ["exercise"]

  connect() {
  }

  append_one() {
    var total = this.exerciseTargets.length
    const item = this.exerciseTargets[0]
    var new_one = item.cloneNode(true) 
    new_one.id = "exercise-" + String(++total)
    var dash_icon = new_one.querySelector(".bi-dash-circle")
    var exercise_select = new_one.querySelector('select')
    const index = total - 1
    exercise_select.name = this.name_for(index, 'exercise_id') 
    var set_field = new_one.querySelector('input[type=number]') 
    set_field.name = this.name_for(index, 'set')
    dash_icon.dataset.index = String(total)
    this.element.append(new_one) 
  }

  remove(e) {
    var total = this.exerciseTargets.length
    console.log(total)
    if(total <= 1) {
      return false
    }
    const index = e.srcElement.dataset.index
    document.getElementById("exercise-" + index).remove()
  }

  name_for(index, field) {
    return `template[defined_items_attributes][${index}][${field}]`
  }
}
