class PolyZone {
    static addBoxZone(pId, pCenter, pLength, pWidth, pOptions) {
        exports['qpixel-polyzone'].AddBoxZone(pId, pCenter, pLength, pWidth, pOptions);
    }

    static addCircleZone(pId, pCenter, pRadius, pOptions) {
        exports['qpixel-polyzone'].AddCircleZone(pId, pCenter, pRadius, pOptions);
    }
}

class PolyTarget {
    static addBoxZone(pId, pCenter, pLength, pWidth, pOptions) {
        exports['qpixel-polytarget'].AddBoxZone(pId, pCenter, pLength, pWidth, pOptions);
    }

    static addCircleZone(pId, pCenter, pRadius, pOptions) {
        exports['qpixel-polytarget'].AddCircleZone(pId, pCenter, pRadius, pOptions);
    }
}