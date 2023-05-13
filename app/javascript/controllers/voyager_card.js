console.log('Voyager is here');


function swapCardsClass() {
  currentCardEl.classList.remove("current--card");
  previousCardEl.classList.remove("previous--card");
  nextCardEl.classList.remove("next--image")

  currentImageEl.classList.remove("current--Image");
  previousImageEl.classList.remove("previous--Image");
  nextImageEl.classList.remove("next--image")

  currentCardEl.style.zIndex = "50";
  currentBgImageEl.style.zIndex = "-2";

  if (direction === "right") {
    previousCardEl.style.zIndex = "20";
    nextCardEl.style.zIndex = "30";

    nextBgImageEl.style.zIndex = "-1";

    currentCardEl.classList.add("previous--card");
    previousCardEl.classList.add("next--card");
    nextCardEl.classList.add("current--image")

    currentImageEl.classList.add("previous--Image");
    previousImageEl.classList.add("next--Image");
    nextImageEl.classList.add("current--image")
  } else if (direction === "left") {
    previousCardEl.style.zIndex = "30";
    nextCardEl.style.zIndex = "20";

    previousBgImageEl.style.zIndex = "-1";

    currentCardEl.classList.add("next--card");
    previousCardEl.classList.add("current--card");
    nextCardEl.classList.add("previous--image")

    currentImageEl.classList.add("next--Image");
    previousImageEl.classList.add("current--Image");
    nextImageEl.classList.add("previous--image");
  }
}
