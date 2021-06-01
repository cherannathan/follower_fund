const toggleRange = () => {
  const slideValue = document.querySelector(".display-amount-invest span");
  const inputSlider = document.querySelector("#investment_price_cents");
  inputSlider.oninput = (() => {
    let value = inputSlider.value;
    const goal = slideValue.dataset.goalAmount;
    console.log(goal);
    slideValue.textContent = value;
    slideValue.style.left = (value * 100 / goal) + "%";
    slideValue.classList.add("show");
  });
  inputSlider.onblur = (() => {
    slideValue.classList.remove("show");
  });
};

export { toggleRange };
