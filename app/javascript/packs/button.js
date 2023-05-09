const button = document.querySelector(".list_card_button");

button.addEventListener("mouseover", () => {
  button.style.backgroundColor = "red";
});

const hideButton = document.getElementById("hide_button");

hideButton.addEventListener("click", () =>
  setTimeout(() => (hideButton.style.display = "none"), 3000)
);
