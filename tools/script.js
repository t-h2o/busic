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
const notesArray = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];

function isMajor(isMajorBool) {
	if (isMajorBool == "true")
		return "major"
	return "minor"
}

submitButton.addEventListener("click", () =>
{
	let selectedNote;
	let radioNoteButton;
	for (const radioNoteButton of radioNoteButtons)
	{
		if (radioNoteButton.checked)
		{
			selectedNote = radioNoteButton.id;
			break;
		}
	}

	resultParagraph.textContent =
		"The note is "
		+ selectedNote
		+ " "
		+ isMajor(document.getElementById("mmSwitch").getAttribute("aria-checked"));

	let positionNote = notesArray.indexOf(selectedNote);
	const ecartMajor = [2, 2, 1, 2, 2, 2, 1, 1];
	let ecart = 0;
	noteListParagraph.textContent = "";
	for (let index = 0; index < 8; index++)
	{
		noteListParagraph.textContent +=  " " + notesArray[(ecart + positionNote) % 12];
		ecart += ecartMajor[index];

	}
});
