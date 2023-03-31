import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"];

  expandImage(event) {
    let sliderController = this.application.getControllerForElementAndIdentifier(
      this.modalTarget,
      "slider"
    );
    sliderController.open(event.currentTarget);

    console.log(event.currentTarget);


  }
}
