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
const resultParagraph = document.getElementById("result");
const noteListParagraph = document.getElementById("noteList");
const mmSwitch = document.getElementById("mmSwitch");
const notesArray = ["A", "B", "C", "D"];

function isMajor(isMajorBool) {
	if (isMajorBool == "true")
		return "major"
	else
		return "minor"
}

submitButton.addEventListener("click", () =>
{
	let selectedNote;
	for (const radioNoteButton of radioNoteButtons)
	{
		if (radioNoteButton.checked)
		{
			selectedNote = radioNoteButton.value;
			break;
		}
	}
	console.log("radio value: ", selectedNote);

	resultParagraph.textContent =
		"The note is "
		+ selectedNote
		+ " "
		+ isMajor(document.getElementById("mmSwitch").getAttribute("aria-checked"));

	noteListParagraph.textContent = notesArray;

});

// if isMajor is true, so it's not minor and vice versa
function get_range() {
	const note_list = [];
	note_list.push("C", "D", "E", "F", "G", "A", "B");
	console.log(note_list);
}
