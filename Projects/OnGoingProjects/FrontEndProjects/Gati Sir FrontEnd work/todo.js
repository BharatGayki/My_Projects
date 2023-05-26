const inputsContainer = document.getElementById("inputs-container");
const listContainer = document.getElementById("list-container");

function addInput() {
  const newInput = document.createElement("div");
  newInput.classList.add("contact-inputs");
  newInput.innerHTML = `
    <input type="text" class="contact-input" placeholder="Name">
    <input type="text" class="contact-input" placeholder="Middle Name">
    <input type="text" class="contact-input" placeholder="Last Name">
    <input type="email" class="contact-input" placeholder="Email ID">
    <input type="tel" class="contact-input" placeholder="Phone Number">
    <button class="remove-input" onclick="removeInput(this)">X</button>
  `;

  inputsContainer.appendChild(newInput);
}

function removeInput(button) {
  const inputDiv = button.parentNode;
  inputDiv.remove();
}

function saveContacts() {
  const contactInputs = document.getElementsByClassName("contact-input");
  let isInputEmpty = false;

  for (let i = 0; i < contactInputs.length; i++) {
    if (contactInputs[i].value === "") {
      isInputEmpty = true;
      break;
    }
  }

  if (isInputEmpty) {
    alert("All fields are required!");
  } else {
    const li = document.createElement("li");
    const contactData = [];

    for (let i = 0; i < contactInputs.length; i++) {
      contactData.push(contactInputs[i].value);
    }

    li.innerHTML = `
      <strong>Name:</strong> ${contactData[0]}<br>
      <strong>Middle Name:</strong> ${contactData[1]}<br>
      <strong>Last Name:</strong> ${contactData[2]}<br>
      <strong>Email:</strong> ${contactData[3]}<br>
      <strong>Phone:</strong> ${contactData[4]}<br>
    `;

    const span = document.createElement("span");
    span.innerHTML = "\u00d7";
    li.appendChild(span);

    span.addEventListener("click", function () {
      li.remove();
      saveData();
    });

    listContainer.appendChild(li);
    clearInputs();
    saveData();
  }
}

function clearInputs() {
  const inputDivs = document.getElementsByClassName("contact-inputs");
  for (let i = inputDivs.length - 1; i >= 0; i--) {
    inputDivs[i].remove();
  }
}

function saveData() {
  localStorage.setItem("data", listContainer.innerHTML);
}

listContainer.addEventListener("click", function (e) {
  if (e.target.tagName === "LI") {
    e.target.classList.toggle("checked");
    saveData();
  }
}, false);
