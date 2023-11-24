import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-status"
export default class extends Controller {
  connect() {
    console.log("Hello")
  }
}
