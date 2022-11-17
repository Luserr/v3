const regged = [];

function RegisterInterfaceCallback(name, cb) {
    AddEventHandler(`_apx_uiReq:${name}`, cb);

    if (GetResourceState('qpixel-interface') === 'started') exports['qpixel-interface'].RegisterIntefaceEvent(name);

    regged.push(name);
}

function SendInterfaceMessage(data) {
    exports['qpixel-interface'].SendInterfaceMessage(data);
}

function SetInterfaceFocus(hasFocus, hasCursor) {
    exports['qpixel-interface'].SetInterfaceFocus(hasFocus, hasCursor);
}

function GetInterfaceFocus() {
    return exports['qpixel-interface'].GetInterfaceFocus();
}

AddEventHandler('_apx_uiReady', () => {
    regged.forEach((eventName) => exports['qpixel-interface'].RegisterIntefaceEvent(eventName));
});