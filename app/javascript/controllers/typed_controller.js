import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["The best site", "for Burgers", "in France"],
      typeSpeed: 50,
      loop: true
    })
  }
}
