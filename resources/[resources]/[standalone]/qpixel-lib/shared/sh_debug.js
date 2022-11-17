const ResourceName = GetCurrentResourceName();

let IsDebugEnabled = GetConvar('sv_environment', 'production') === 'debug';

const __AddLibEvent = (pEvent, pCallback) => {
    if (IsDuplicityVersion()) {
        on(pEvent, pCallback);
    } else {
        onNet(pEvent, pCallback);
    }
};

__AddLibEvent('qpixel-dev:enableDebug', (pEnabled, pResource) => {
    if (pResource !== undefined && pResource !== ResourceName) return;

    IsDebugEnabled = pEnabled;
});

function Debug(...args) {
    if (!IsDebugEnabled) return;

    console.log('[DEBUG]', `[${ResourceName}]`, `[${new Date().toISOString()}]:`, ...args);
}
