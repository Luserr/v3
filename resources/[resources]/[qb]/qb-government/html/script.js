$("#ui").hide();

var candidates = [];

const RECORDS_PER_PAGE = 4;
var currentPage = 1;
var chosenCandidateName = "";
var chosenCandidateID = 0;

addEventListener("message", async function (event) {
  var eventData = event.data;

  if (eventData.type == "show") {
    await getCandidatesData();
    showUI();
  } else if (poy.type == "close") {
    closeUI();
  }
});

async function getCandidatesData() {
  await $.post(
    "https://ap-government/getCandidate",
    JSON.stringify({}),
    function (candidatesInfo) {
      candidatesInfo.forEach((candidateInfo) => {
        candidates.push({
          citizen: candidateInfo.identifier,
          name: candidateInfo.name,
          age: candidateInfo.age,
          shortDescription: candidateInfo.shortDescription,
          whyDoYouWantToBeACandidate: candidateInfo.whyDoYouWantToBeACandidate,
          WhatYoullBringToTheCity: candidateInfo.WhatYoullBringToTheCity,
        });
      });
    }
  );
}

function changePage(page) {
  const nextBtn = document.getElementById("nextBtn");
  const prevBtn = document.getElementById("prevBtn");
  const candidatesDiv = document.getElementById("candidates");

  prevBtn.style.display = "none";
  nextBtn.style.display = "none";

  if (page < 1) page = 1;
  if (page > numPages()) page = numPages();

  candidatesDiv.innerHTML = "";

  for (
    var i = (page - 1) * RECORDS_PER_PAGE;
    i < page * RECORDS_PER_PAGE && i < candidates.length;
    i++
  ) {
    candidatesDiv.innerHTML += `
        <div class="drop-shadow-lg flex flex-row mb-3 justify-between items-center w-[522px] h-min bg-[#324694]/80 rounded-lg text-white font-semibold">
            <div class="m-2">
                <h1>${candidates[i].name}, <span>${candidates[i].age}</span></h1>
                <p class="mt-2 text-[#e3e3e3] w-96">${candidates[i].shortDescription}</p>
            </div>
            <div class="mr-3">
                <a href="javascript:openCandidatePage(${i})" id="viewBtn" class="inline-flex items-center py-2 px-4 text-sm font-medium text-white bg-[#1836ad]/80 border border-solid border-slate-800 rounded-lg border border-gray-300 hover:bg-[#524866] hover:text-white">
                    View
                    <svg aria-hidden="true" class="ml-2 w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </a>
            </div>
        </div>
    `;
  }

  if (candidates.length <= 4) {
    prevBtn.style.display = "none";
    nextBtn.style.display = "none";
  } else {
    if (page > 1 && page < numPages()) {
      prevBtn.style.display = "flex";
      nextBtn.style.display = "flex";
    } else if (page === 1) {
      prevBtn.style.display = "none";
      nextBtn.style.display = "flex";
    } else if (page === numPages()) {
      prevBtn.style.display = "flex";
      nextBtn.style.display = "none";
    }
  }
}

function numPages() {
  return Math.ceil(candidates.length / RECORDS_PER_PAGE);
}

function prevPage() {
  if (currentPage > 1) {
    currentPage--;
    changePage(currentPage);
  }
}

function nextPage() {
  if (currentPage < numPages()) {
    currentPage++;
    changePage(currentPage);
  }
}

function getSelectItem() {
  chosenCandidateName = candidates[chosenCandidateID].name;

  document.getElementById("candidatePage").style.display = "none";
  document.getElementById("pageBtnsGroup").style.display = "none";

  document.getElementById("beforeSubmittingText").style.display = "block";
  document.getElementById("submitBtnsGroup").style.display = "flex";

  document.getElementById("yourVote").style.display = "block";

  document.getElementById(
    "yourVote"
  ).innerText = `Your vote: ${chosenCandidateName} - Make sure its your right candidate!`;
}

function openCandidatePage(id) {
  document.getElementById("candidates").style.display = "none";
  document.getElementById("candidatesBtnsGroup").style.display = "none";

  chosenCandidateID = id;

  const {
    name,
    age,
    shortDescription,
    whyDoYouWantToBeACandidate,
    WhatYoullBringToTheCity,
  } = candidates[id];

  const header = document.getElementById("pageHeader");
  const paragraph = document.getElementById("pageP");

  header.innerHTML = `${name}, <span>${age}</span><br />${shortDescription}`;
  paragraph.innerHTML = `
    Why you want to be a candidate?
    <span class="text-[grey]"><br>${whyDoYouWantToBeACandidate}</span><br />
    What you'll bring to the city?
    <span class="text-[grey]"><br>${WhatYoullBringToTheCity}</span>
    `;

  document.getElementById("candidatePage").style.display = "block";
  document.getElementById("pageBtnsGroup").style.display = "flex";
}

function goBackFromSubmit() {
  document.getElementById("candidates").style.display = "flex";
  document.getElementById("candidatesBtnsGroup").style.display = "flex";

  document.getElementById("candidatePage").style.display = "none";
  document.getElementById("pageBtnsGroup").style.display = "none";

  document.getElementById("beforeSubmittingText").style.display = "none";
  document.getElementById("submitBtnsGroup").style.display = "none";

  document.getElementById("yourVote").style.display = "none";

  changePage(1);
  currentPage = 1;
}

function goBackFromCandidatePage() {
  document.getElementById("candidates").style.display = "flex";
  document.getElementById("candidatesBtnsGroup").style.display = "flex";

  changePage(1);
  currentPage = 1;

  document.getElementById("pageBtnsGroup").style.display = "none";
  document.getElementById("candidatePage").style.display = "none";
}

function submit() {
  document.getElementById("beforeSubmittingText").style.display = "none";
  document.getElementById("submitBtnsGroup").style.display = "none";

  document.getElementById("afterSubmittingText").classList.remove("hidden");
  document.getElementById("afterSubmittingText").classList.add("flex");

  const { name } = candidates[chosenCandidateID];
  const { citizen } = candidates[chosenCandidateID];

  document.getElementById("yourVote").innerText = `Your vote: ${name}`;

  if (chosenCandidateName !== "") {
    $.post("https://ap-government/voteForSomeone", JSON.stringify({ citizen }));

    setTimeout(function () {
      closeUI();
    }, 10000);
  } else {
    $.post("https://ap-government/error");
  }

  setTimeout(function () {
    closeUI();
  }, 10000);
}

function closeUI() {
  candidates = [];

  currentPage = 1;
  chosenCandidateName = "";
  chosenCandidateID = 0;

  $.post("https://ap-government/close");

  resetUI();
  $("#ui").hide();
}

function resetUI() {
  document.getElementById("afterSubmittingText").classList.remove("flex");
  document.getElementById("afterSubmittingText").classList.add("hidden");
  document.getElementById("beforeSubmittingText").style.display = "none";
  document.getElementById("submitBtnsGroup").style.display = "none";
  document.getElementById("candidates").style.display = "flex";
  document.getElementById("candidatesBtnsGroup").style.display = "flex";
  document.getElementById("pageBtnsGroup").style.display = "none";
  document.getElementById("candidatePage").style.display = "none";
}

function showUI() {
  $("#ui").show();
  changePage(1);
}
