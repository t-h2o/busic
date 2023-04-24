document.querySelectorAll(".switch").forEach((theSwitch) => {
  theSwitch.addEventListener("click", handleClickEvent, false);
});

function handleClickEvent(evt) {
  const el = evt.target;

  if (el.getAttribute("aria-checked") === "true") {
    el.setAttribute("aria-checked", "false");
  } else {
    el.setAttribute("aria-checked", "true");
  }
}

const radioGroups = document.querySelectorAll('[role="radiogroup"]');

for (let i = 0, groups = radioGroups.length; i < groups; i++) {
  const radios = radioGroups[i].querySelectorAll("[role=radio]");
  for (let j = 0, radiobuttons = radios.length; j < radios; j++) {
    radios[j].addEventListener("keydown", get_range );
    radios[j].addEventListener("click", get_range );
  }
}

// if isMajor is true, so it's not minor and vice versa
function get_range() {
	const note_list = [];
	note_list.push("C", "D", "E", "F", "G", "A", "B");
	console.log(note_list);
}
