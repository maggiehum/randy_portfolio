import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ['modal'];

  connect() {
    useClickOutside(this)
  }

  open() {
    const modal = this.modalTarget;
    document.body.classList.add("modal-open");
    modal.setAttribute("style", "display: block;");
    modal.classList.add("show");
    document.body.innerHTML += '<div class="modal-backdrop fade show"></div>';
  }

  close() {
    const modal = this.modalTarget;
    document.body.classList.remove("modal-open");
    modal.removeAttribute("style");
    modal.classList.remove("show");
    document.getElementsByClassName("modal-backdrop")[0].remove();
  }

  clickOutside(event) {
    // example to close a modal
    // event.preventDefault()
    // this.modal.close()
    const modal = this.modalTarget;
    document.body.classList.remove("modal-open");
    modal.removeAttribute("style");
    modal.classList.remove("show");
    document.getElementsByClassName("modal-backdrop")[0].remove();
  }
}
