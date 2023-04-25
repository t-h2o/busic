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

const submitButton = document.querySelector('#submit');
const radioNoteButtons = document.querySelectorAll('input[name="note"]');

submitButton.addEventListener("click", () =>
{
	let selectedNote;
	for (const radioNoteButton of radioNoteButtons)
	{
		if (radioNoteButton.checked)
		{
			console.log("true ", radioNoteButton);
			selectedNote = radioNoteButton.value;
			break;
		}
	}
	console.log("radio value: ", selectedNote);

});

// if isMajor is true, so it's not minor and vice versa
function get_range() {
	const note_list = [];
	note_list.push("C", "D", "E", "F", "G", "A", "B");
	console.log(note_list);
}
