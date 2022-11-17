const { useQuasar } = Quasar
const { ref } = Vue
const folder_name = GetParentResourceName()
let joblist = []
let buttonParams = [];
let menuHistory = [];
const app = Vue.createApp({
  setup () {
    const job = ref(joblist)
    const distance = ref(null)
    const preferred = ref('boss')
    const model = ref(null)
    return {
        model,
        job,
        distance,
        preferred,
        options: [
          {
            label: 'Boss  ', // you can translate this
            value: 'boss' // don't change this value
          },
          {
            label: 'Cashier', // you can translate this
            value: 'cashier' // don't change this value
          },
          {
            label: 'Drinks', // you can translate this
            value: 'drink' // don't change this value
          },
          {
            label: 'Food', // you can translate this
            value: 'food' // don't change this value
          },
          {
            label: 'Joints', // you can translate this
            value: 'joint' // don't change this value
          },
          {
            label: 'Others  ', // you can translate this
            value: 'others' // don't change this value
          },
          {
            label: 'Stash ', // you can translate this
            value: 'stash' // don't change this value
          },
          {
            label: 'Tray', // you can translate this
            value: 'tray' // don't change this value
          },
        ],
      filterFn (val, update, abort) {
        if (val.length < 2) {
          abort()
          return
        }
        update(() => {
          const needle = val.toLowerCase()
          job.value = joblist.filter(v => v.toLowerCase().indexOf(needle) > -1)
        })
      },
      onSubmit () {
        {
          sendNUICB({
            job: model.value,
            distance: distance.value,
            type: preferred.value
        });
        }
      },
    }
  }
})

const inputAPP = Vue.createApp({
  setup () {
    const input = ref(null)
    const description = ref(null)
    return {
        input,
        description,
      onSubmit () {
        {
          sendInput({
            input: input.value,
            description: description.value
        }); 
        resetValues(input, description)
        }
      },
    }
  }
})

const registerItem = Vue.createApp({
  setup () {
    const name = ref(null)
    const image = ref(null)
    const description = ref(null)
    const model = ref(null)
    return {
      model,
      name,
      description,
      image,
      options: [
        {
          label: 'Drinks', // you can translate this
          value: 'drink' // don't change this value
        },
        {
          label: 'Food', // you can translate this
          value: 'food' // don't change this value
        },
        {
          label: 'Joint', // you can translate this
          value: 'joint' // don't change this value
        },
        {
          label: 'Others (Apparel, etc)', // you can translate this
          value: 'others' // don't change this value
        },
      ],
      onSubmit () {
        {
          sendItem({
            name: name.value,
            type: model.value,
            description: description.value,
            image: image.value
        }); 
        name.value = null
        model.value = null
        description.value = null
        image.value = null
        }
      },
    }
  }
})

app.use(Quasar, { config: {} })
app.mount('#menu')
inputAPP.use(Quasar, { config: {} })
inputAPP.mount('#input-menu')
registerItem.use(Quasar, { config: {} })
registerItem.mount('#item-menu')

$(document).ready(function () {
  window.addEventListener("message", function (event) {
    switch (event.data.action) {
      case "open":
        Open(event.data);
        break;
      case "input":
        OpenInput();
        break;
      case "jobs":
        joblist = event.data.jobs
        break;
      case "item":
        OpenItem()
        break;
      case "OPEN_MENU":
          return openMenu(event.data.data);
      case "SHOW_HEADER":
          return showHeader(event.data.data);
      case "CLOSE_MENU":
          return closeMenu();
      case "CLEAR_HISTORY":
          return clearHistory();
      default:
          return;
    }
  });
});

document.onkeyup = function (data) {
  if (data.key == 'Escape') {
    clearHistory()
    $("#buttons").html(" ");
    closeMenu()
  }
};

function closeMenu() {
  $("#openmenu").fadeOut(550);
  $("#input").fadeOut(550);
  $("#item").fadeOut(550);
  $.post('https://'+ folder_name +'/closeMenu');
}

function resetValues(input, description) {
    input.value = null
    description.value = null
} 

Open = function (data) {
  $("#openmenu").fadeIn(150);
}

OpenInput = function (data) {
  $("#input").fadeIn(150);
}

OpenItem = function (data) {
  $("#item").fadeIn(150);
}

$('.closeMenu').click(() => {
  closeMenu()
});

$('.Close').click(() => {
  closeMenu()
});

function sendNUICB(data = {}, cb = () => {}) {
  fetch('https://' + folder_name + '/input', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8', },
    body: JSON.stringify(data)
  });
}

function sendInput(data = {}, cb = () => {}) {
  fetch('https://' + folder_name + '/cashier', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8', },
    body: JSON.stringify(data)
  });
}

function sendItem(data = {}, cb = () => {}) {
  fetch('https://' + folder_name + '/item', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8', },
    body: JSON.stringify(data)
  });
}

const openMenu = (data = null, useHistory = false) => {
    let html = "";
    if (useHistory) {
        $("#buttons").html(" ");
        buttonParams = [];
        data = menuHistory[menuHistory.length - 2];
    }

    data.forEach((item, index) => {
        let header = item.header;
        let message = item.txt || item.text;
        let isMenuHeader = item.isMenuHeader;
		let disponible = item.disponible;
        html += getButtonRender(header, message, index, isMenuHeader, disponible);
        if (item.params) buttonParams[index] = item.params;
    });

    $("#buttons").html(html);
    menuHistory.push(data);
};

const showHeader = (data = null) => {
    let html = "";
    data.forEach((item, index) => {
        let header = item.header;
        let message = item.txt || item.text;
        let isMenuHeader = item.isMenuHeader;
        let disponible = item.disponible;
        html += getButtonRender(header, message, index, isMenuHeader, disponible);
        if (item.params) buttonParams[index] = item.params;
    });
    $("#buttons").html(html);
    menuHistory.push(data);
}

const getButtonRender = (header, message = null, id, isMenuHeader, disponible) => {
    
	if (message) {
        if (disponible == false) { // Bloqueado
			return `
				<div class="${
					true ? "title" : "button" 
				}" data-btn-id="${id}"; style ='background-color: rgba(132, 132, 132, 1)'; >
					<div class="header">${header}</div>
					<div class="text">${message}</div>
				</div>
			`;
		} else { // Disponible
			return `
				<div class="${
					isMenuHeader ? "title" : "button"
				}" data-btn-id="${id}">
					<div class="header">${header}</div>
					<div class="text">${message}</div>
				</div>
			`;
		};	
    } else {
        return `
            <div class="${
                isMenuHeader ? "title" : "button"
            }" data-btn-id="${id}">
                <div class="header">${header}</div>
            </div>
        `;
    }
};

const useHistory = () => {
    return openMenu(null, true);
};

const postData = (id) => {
    if (!buttonParams[id]) return useHistory();
    $.post(
        `https://${GetParentResourceName()}/clickedButton`,
        JSON.stringify(buttonParams[id])
    );
    clearHistory()
    $("#buttons").html(" ");
};

const clearHistory = () => {
    menuHistory = [];
};

$(document).click(function (event) {
    let target = $(event.target);
    if (target.closest(".button").length && $(".button").is(":visible")) {
        let btnId = $(event.target).closest(".button").data("btn-id");
        postData(btnId);
    }
});