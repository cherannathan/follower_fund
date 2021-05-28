import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount', 'value'];

  display() {
    const inputValue = this.valueTarget.value;
    this.amountTarget.innerHTML = inputValue;
  }
}
