import { Config } from "../../config.js";

var persistentNotifs = {};

window.addEventListener("message", function (event) {
  ShowNotif(event.data);
});

function CreateNotification(data) {
  var mdi;
  if (data.type === "success") {
    mdi = "done";
  }
  if (data.type === "inform" || data.type === undefined) {
    mdi = "info";
  }
  if (data.type === "error") {
    mdi = "dangerous";
  }
  if (data.type === "police") {
    mdi = "local_police";
  }
  if (data.type === "ambulance") {
    mdi = "emergency";
  }
  var $notification = $(document.createElement("div"));
  var $caption = $(document.createElement("div"));
  var $icon = $(document.createElement("span"));

  $notification.addClass("notification").addClass(data.type);
  $notification.html(data.text);

  if (data.caption !== undefined) {
    $caption.addClass("caption").addClass(data.type);
    $caption.html(data.caption);
    $notification.append($caption);
  }

  $icon.addClass("icon material-icons").addClass(data.type);
  $icon.text(mdi);
  $notification.prepend($icon);

  $notification.fadeIn();
  if (data.style !== undefined) {
    Object.keys(data.style).forEach(function (css) {
      $notification.css(css, data.style[css]);
    });
  }
  return $notification;
}

function ShowNotif(data) {
  if (data.persist === undefined) {
    var $notification = CreateNotification(data);
    $(".notif-container").append($notification);
    if (data.type == "police" || data.type == "ambulance") {
      flashIt($notification);
    }
    setTimeout(
      function () {
        $.when($notification.fadeOut()).done(function () {
          $notification.remove();
        });
      },
      data.length != null ? data.length : 2500
    );
  } else {
    if (data.persist.toUpperCase() == "START") {
      if (persistentNotifs[data.id] === undefined) {
        var $notification = CreateNotification(data);
        $(".notif-container").append($notification);
        persistentNotifs[data.id] = $notification;
      } else {
        let $notification = $(persistentNotifs[data.id]);
        $notification.addClass("notification").addClass(data.type);
        $notification.html(data.text);

        if (data.style !== undefined) {
          Object.keys(data.style).forEach(function (css) {
            $notification.css(css, data.style[css]);
          });
        }
      }
    } else if (data.persist.toUpperCase() == "END") {
      let $notification = $(persistentNotifs[data.id]);
      $.when($notification.fadeOut()).done(function () {
        $notification.remove();
        delete persistentNotifs[data.id];
      });
    }
  }
}

function flashIt(elm) {
  if (Config.emergencyFlash.enabled) {
    for (let i = 0; i < Config.emergencyFlash.numFlashes; i++) {
      elm.fadeOut(100).fadeIn(100);
    }
  }
}
