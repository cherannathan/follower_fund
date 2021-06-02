import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount', 'value', 'goalAmount', 'revenuSplit', 'for100000', 'for200000', 'for500000', 'for1000000'];

  display() {
    // console.log(this.goalAmountTarget.innerText, this.revenuSplitTarget.innerText, this.for100000Target.innerText)
    console.log(this);
    const inputValue = this.valueTarget.value;
    this.amountTarget.innerHTML = inputValue;
    const goalAmount = parseInt(this.goalAmountTarget.innerText, 10);
    const revenuSplit = parseInt(this.revenuSplitTarget.innerText, 10);
    const for100000 = 1000;

    const userRatio = inputValue / goalAmount;
    const backersAmount = for100000 * revenuSplit / 100;

    this.for100000Target.innerText = `${Math.round(userRatio * backersAmount)} $ `
    this.for200000Target.innerText = `${Math.round(userRatio * backersAmount * 2)} $`
    this.for500000Target.innerText = `${Math.round(userRatio * backersAmount * 5)} $`
    this.for1000000Target.innerText = `${Math.round(userRatio * backersAmount * 10)} $`
  }
}
