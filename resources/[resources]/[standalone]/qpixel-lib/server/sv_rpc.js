const FunctionsRegister = new Map(), Promises = new Map(), Resource = GetCurrentResourceName();
let CallIdentifier = 0;

function rpcRegister(name, func) { 
    FunctionsRegister[name] = func;
}

const RPC = {
    'register':rpcRegister,
}

RegisterServerEvent("rpc:request")
on('rpc:request', async (origin, name, callID, params, pState) => { 
    if (pState == true) {
        return
    }
    const [a, b, c, d, e, f, g, h, j, k, l, m, n] = params;
    const src = source
    if (!FunctionsRegister[name]) {
        return
    }
    
    const selectfunc = FunctionsRegister[name];
    
    let response;
    try {
        response = await selectfunc(src, a, b, c, d, e, f, g, h, j, k, l, m, n)
    } catch (error) {
        emit("rpc:client:error", Resource, origin, name, error)
    }
    if (typeof response === null) {
        response = [];
    }
    emitNet("rpc:response", src, origin, callID, response, pState);
})