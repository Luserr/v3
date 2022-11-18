var RowsData = [];
var Rows = [];
var saved = "";

const OpenMenu = (data) => {
    $(`.main-wrapper`).fadeIn(0)
    $(`.background`).fadeIn(0)
    AddRow(data.rows)
}

const OpenEditableMenu = (data) => {
    $(`.main-wrapper`).fadeIn(0)
    $(`.background`).fadeIn(0)
    AddEditableRow(data.rows)
}

const CloseMenu = () => {
    $(`.main-wrapper`).fadeOut(0);
    $(`.background`).fadeOut(0);
    $('.body').empty();
    $(saved).remove();
    RowsData = [];
    Rows = [];
    saved = "";
};

function AddRow(data) {
    RowsData = data
    for (var i = 0; i < RowsData.length; i++) {
        var message = RowsData[i].label
        var id = i
        var icon = RowsData[i].icon
        var type = RowsData[i].type
        if (type != "select" && type != "checkbox") {
            var element
            element = $(`<div class="jss5186 jss5204">
                <div class="input-wrapper">
                <div class="MuiFormControl-root MuiTextField-root jss252" style="width: 100%;">
                    <label for="usr" class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink" data-shrink="true">${message}</label>
                    <div class="MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl MuiInputBase-adornedStart">
                    <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
                        <i class="fas fa-${icon}"></i>
                    </div>
                    <input aria-invalid="false" placeholder="" rows="1" type="" class="MuiInputBase-input MuiInput-input form-control MuiInputBase-inputAdornedStart" id="${id}" value="">
                    </div>
                </div>
                </div>
            </div>`)
            $('.body').append(element);
            Rows[id] = element
        } else if (type == "select") {
            var element = `
            <div role="presentation" class="MuiPopover-root table-menu${id}" id="menu-${id}" style="position: fixed; z-index: 1300; inset: 0px; display: none;">
            <div class="menu-close-click" aria-hidden="true" style="z-index: -1; position: fixed; inset: 0px; background-color: transparent; -webkit-tap-highlight-color: transparent;"></div>
            <div tabindex="0" data-test="sentinelStart"></div>
            <div class="MuiPaper-root MuiMenu-paper MuiPopover-paper MuiPaper-elevation8 MuiPaper-rounded" tabindex="-1" style="opacity: 1; transform: none; transition: opacity 267ms cubic-bezier(0.4, 0, 0.2, 1) 0ms, transform 178ms cubic-bezier(0.4, 0, 0.2, 1) 0ms; top: 447px; left: 1345px; transform-origin: 0px 26px;">
               <ul class="MuiList-root MuiMenu-list MuiList-padding listingbox${id}" role="listbox" tabindex="-1">
                </ul>
                </div>
                <div tabindex="0" data-test="sentinelEnd"></div>
            </div>
            `
            $('.body').prepend(element);
            for (var j = 0; j < RowsData[i].options.length; j++) {
                var ele = "";
                var option = RowsData[i].options[j]
                ele += `<li class="MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button optionbutton-${id}" data-selectid=${id} data-name="${option.name}" data-optionid="${option.id}" tabindex="-1" role="option" aria-disabled="false" data-value="10">${option.name}<span class="MuiTouchRipple-root"></span></li>`
                $(`.listingbox${id}`).append(ele)

                $('.optionbutton-' + id).click(function () {
                    var value = $(this).text()
                    var id = $(this).data('selectid')
                    $(`#select-${id}`).text(value)
                    $(`#select-${id}`).attr("data-option", $(this).data('optionid'))
                    $('.table-menu' + id).hide()
                })
            }
            var html = `
            <div class="jss5186 jss5204">
            <div class="MuiFormControl-root jss252">
               <label class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiFormLabel-filled" data-shrink="true" id="numbertext">${RowsData[i].label}</label>
               <div class="table-inp${id} MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl" data-id="${id}">
               <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
               <i class="fas fa-${icon}"></i>
               </div>
                  <div class="MuiSelect-root MuiSelect-select MuiSelect-selectMenu MuiInputBase-input MuiInput-input" tabindex="0" role="button" aria-haspopup="listbox" data-option=${RowsData[i].options[0].id} id="select-${id}">${RowsData[i].options[0].name}</div>
                  <input type="hidden" value="1">
                  <svg class="MuiSvgIcon-root MuiSelect-icon" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                     <path d="M7 10l5 5 5-5z"></path>
                  </svg>
               </div>
            </div>
         </div>
            `
            var element = $(html)
            $('.body').append(element);
            $(".table-inp"+id).on("click", function (e) {
                let id = $(this).attr("data-id")
                e.preventDefault(),
                $('.table-menu'+id+' .MuiPaper-rounded').css("position", "absolute"),
                $('.table-menu'+id+' .MuiPaper-rounded').css("top", e.pageY),
                $('.table-menu'+id+' .MuiPaper-rounded').css("left", e.pageX),
                $('.table-menu'+id).show();
            })
            Rows[id] = element
        } else {
            var html = `
            <div>
            <div class="MuiFormControl-root jss252">
               <label class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiFormLabel-filled" data-shrink="true" id="numbertext">${RowsData[i].label}</label>
               <div class="table-inp${id} MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl" data-id="${id}">
               <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
               <i class="fas fa-${icon}"></i>
               </div>
                  <input class="jss256 pusulaactivecheck" type="checkbox" data-indeterminate="false" value="" checked="">

               </div>
            </div>
         </div>
            `
            var element = $(html)
            $('.body').append(element);
            Rows[id] = element
        }
    }
    setTimeout(() => {
        document.getElementById(0).focus();
    }, 100);
}

function AddEditableRow(data) {
    RowsData = data
    for (var i = 0; i < RowsData.length; i++) {
        var message = RowsData[i].label
        var id = i
        var icon = RowsData[i].icon
        var type = RowsData[i].type
        var editedvalue = RowsData[i].value
        if (type != "select" && type != "checkbox") {
            var element
            element = $(`<div class="jss5186 jss5204">
                <div class="input-wrapper">
                <div class="MuiFormControl-root MuiTextField-root jss252" style="width: 100%;">
                    <label for="usr" class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink" data-shrink="true">${message}</label>
                    <div class="MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl MuiInputBase-adornedStart">
                    <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
                        <i class="fas fa-${icon}"></i>
                    </div>
                    <input aria-invalid="false" placeholder="" rows="1" type="" class="MuiInputBase-input MuiInput-input form-control MuiInputBase-inputAdornedStart" id="${id}" value="${editedvalue}">
                    </div>
                </div>
                </div>
            </div>`)
            $('.body').append(element);
            Rows[id] = element
        } else if (type == "select") {
            var element = `
            <div role="presentation" class="MuiPopover-root table-menu${id}" id="menu-${id}" style="position: fixed; z-index: 1300; inset: 0px; display: none;">
            <div class="menu-close-click" aria-hidden="true" style="z-index: -1; position: fixed; inset: 0px; background-color: transparent; -webkit-tap-highlight-color: transparent;"></div>
            <div tabindex="0" data-test="sentinelStart"></div>
            <div class="MuiPaper-root MuiMenu-paper MuiPopover-paper MuiPaper-elevation8 MuiPaper-rounded" tabindex="-1" style="opacity: 1; transform: none; transition: opacity 267ms cubic-bezier(0.4, 0, 0.2, 1) 0ms, transform 178ms cubic-bezier(0.4, 0, 0.2, 1) 0ms; top: 447px; left: 1345px; transform-origin: 0px 26px;">
               <ul class="MuiList-root MuiMenu-list MuiList-padding listingbox${id}" role="listbox" tabindex="-1">
                </ul>
                </div>
                <div tabindex="0" data-test="sentinelEnd"></div>
            </div>
            `
            $('.body').prepend(element);
            for (var j = 0; j < RowsData[i].options.length; j++) {
                var ele = "";
                var option = RowsData[i].options[j]
                ele += `<li class="MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button optionbutton-${id}" data-selectid=${id} data-name="${option.name}" data-optionid="${option.id}" tabindex="-1" role="option" aria-disabled="false" data-value="10">${option.name}<span class="MuiTouchRipple-root"></span></li>`
                $(`.listingbox${id}`).append(ele)

                $('.optionbutton-' + id).click(function () {
                    var value = $(this).text()
                    var id = $(this).data('selectid')
                    $(`#select-${id}`).text(value)
                    $(`#select-${id}`).attr("data-option", $(this).data('optionid'))
                    $('.table-menu' + id).hide()
                })
            }
            var html = `
            <div class="jss5186 jss5204">
            <div class="MuiFormControl-root jss252">
               <label class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiFormLabel-filled" data-shrink="true" id="numbertext">${RowsData[i].label}</label>
               <div class="table-inp${id} MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl" data-id="${id}">
               <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
               <i class="fas fa-${icon}"></i>
               </div>
                  <div class="MuiSelect-root MuiSelect-select MuiSelect-selectMenu MuiInputBase-input MuiInput-input" tabindex="0" role="button" aria-haspopup="listbox" data-option=${RowsData[i].options[0].id} id="select-${id}">${RowsData[i].options[0].name}</div>
                  <input type="hidden" value="1">
                  <svg class="MuiSvgIcon-root MuiSelect-icon" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                     <path d="M7 10l5 5 5-5z"></path>
                  </svg>
               </div>
            </div>
         </div>
            `
            var element = $(html)
            $('.body').append(element);
            $(".table-inp"+id).on("click", function (e) {
                let id = $(this).attr("data-id")
                e.preventDefault(),
                $('.table-menu'+id+' .MuiPaper-rounded').css("position", "absolute"),
                $('.table-menu'+id+' .MuiPaper-rounded').css("top", e.pageY),
                $('.table-menu'+id+' .MuiPaper-rounded').css("left", e.pageX),
                $('.table-menu'+id).show();
            })
            Rows[id] = element
        } else {
            var html = `
            <div>
            <div class="MuiFormControl-root jss252">
               <label class="MuiFormLabel-root MuiInputLabel-root MuiInputLabel-formControl MuiInputLabel-animated MuiInputLabel-shrink MuiFormLabel-filled" data-shrink="true" id="numbertext">${RowsData[i].label}</label>
               <div class="table-inp${id} MuiInputBase-root MuiInput-root MuiInput-underline MuiInputBase-formControl MuiInput-formControl" data-id="${id}">
               <div class="MuiInputAdornment-root MuiInputAdornment-positionStart">
               <i class="fas fa-${icon}"></i>
               </div>
                  <input class="jss256 pusulaactivecheck" type="checkbox" data-indeterminate="false" value="${editedvalue}" checked="">
               </div>
            </div>
         </div>
            `
            var element = $(html)
            $('.body').append(element);
            Rows[id] = element
        }
    }
    setTimeout(() => {
        document.getElementById(0).focus();
    }, 100);
}

$(`#submit`).click(() => {
    SubmitData();
})


const SubmitData = () => {
    const returnData = [];
    for (let i = 0; i < RowsData.length; i++) {
        if (RowsData[i].type != "select") {
            let data = document.getElementById(i)
            if (data.value) {
                returnData.push({
                    input: data.value,
                });
            } else {
                returnData.push({
                    input: null,
                });
            }
            $(Rows[i]).remove();
        } else {
            let value = $("#select-"+i).attr("data-option");
            if (value) {
                returnData.push({
                    input: value,
                });
            } else {
                returnData.push({
                    input: null,
                });
            }
            $(Rows[i]).remove();
        }
    }
    $.post(`https://rhodinium-keyboard/dataPost`, JSON.stringify({data: returnData}))
    $('.body').empty();
}

const CancelMenu = () => {
    for (var i = 0; i < RowsData.length; i++) {
        $(Rows[i]).remove();
    }
    $.post(`https://rhodinium-keyboard/cancel`)
    return CloseMenu();
}

window.addEventListener("message", (evt) => {
    const data = evt.data
    const info = data.data
    const action = data.action
    switch (action) {
        case "OPEN":
            return OpenMenu(info);
        case "OPEN_EDITABLE":
            return OpenEditableMenu(info);
        case "CLOSE":
            return CloseMenu();
        default:
            return;
    }
})


document.onkeyup = function (event) {
    event = event || window.event;
    var charCode = event.keyCode || event.which;
    if (charCode == 27) {
        CancelMenu();
    }
};

$(document).click(function (event) {
    var $target = $(event.target);
    if (!$target.closest('.main-wrapper').length &&
        $('.main-wrapper').is(":visible")) {
        CancelMenu();
    }
});