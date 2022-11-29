;(this.webpackJsonpweb = this.webpackJsonpweb || []).push([
    [0],
    {
      108: function (c, a, k) {},
      110: function (c, a, k) {},
      117: function (c, a, k) {},
      119: function (c, a, k) {},
      127: function (F0, F1, F2) {
        'use strict'
        F2.r(F1)
        var F4 = F2(1),
          F5 = F2.n(F4),
          F6 = F2(31),
          F7 = F2.n(F6),
          F8 = (F2(108), F2(29), F2(94)),
          F9 = F2(196),
          FF = F2(6),
          FS = Object(FF.b)({
            key: 'currentAppState',
            default: 'main',
          }),
          Fc = Object(FF.b)({
            key: 'textboxActiveState',
            default: false,
          }),
          Fa = Object(FF.b)({
            key: 'rangePickerActiveState',
            default: false,
          }),
          Fk = Object(FF.b)({
            key: 'thirdEyeActiveState',
            default: false,
          }),
          FZ = Object(FF.b)({
            key: 'thirdEyeInteractActiveState',
            default: false,
          }),
          FK = Object(FF.b)({
            key: 'thirdEyeOpenState',
            default: false,
          }),
          Fw = Object(FF.b)({
            key: 'interactionActiveState',
            default: false,
          }),
          Fr = Object(FF.b)({
            key: 'envelopeActiveState',
            default: false,
          }),
          FB = Object(FF.b)({
            key: 'notepadActiveState',
            default: false,
          }),
          Fh = Object(FF.b)({
            key: 'badgeActiveState',
            default: false,
          }),
          FO = Object(FF.b)({
            key: 'newspaperActiveState',
            default: false,
          }),
          FP = Object(FF.b)({
            key: 'minigameNumbersActiveState',
            default: false,
          }),
          FN = Object(FF.b)({
            key: 'govActiveState',
            default: false,
          }),
          FJ = Object(FF.b)({
            key: 'contextActiveState',
            default: false,
          }),
          FM = Object(FF.b)({
            key: 'laptopActiveState',
            default: false,
          }),
          Fb = Object(FF.b)({
            key: 'taskbarActiveState',
            default: false,
          }),
          FL = Object(FF.b)({
            key: 'clothingActiveState',
            default: false,
          }),
          FH = Object(FF.b)({
            key: 'statusHudActiveState',
            default: false,
          }),
          FY = Object(FF.b)({
            key: 'boostingMinimizedState',
            default: false,
          }),
          FE = Object(FF.b)({
            key: 'inQueueState',
            default: false,
          }),
          Fz = Object(FF.b)({
            key: 'loadingState',
            default: false,
          }),
          FG = (F2(110), F2(0)),
          Fv = function (SU) {
            return Object(FG.jsx)(FG.Fragment, {
              children: Object(FG.jsx)('div', {
                style: {
                  display: SU.show ? '' : 'none',
                  zIndex: void 0 !== SU.zIndex ? SU.zIndex : 100,
                },
                className: ''
                  .concat(SU.name, '-app-wrapper ')
                  .concat(SU.center ? 'center' : '', ' root'),
                children: SU.children,
              }),
            })
          },
          FI = F2(3),
          Ff = F2(194),
          Fm = function () {},
          Fl = function (SU, So) {
            var SC = Object(F4.useRef)(Fm)
            Object(F4.useEffect)(
              function () {
                SC.current = So
              },
              [So]
            )
            Object(F4.useEffect)(
              function () {
                var Sx = function (Sq) {
                  var c1 = Sq.data,
                    c2 = c1.action,
                    c3 = c1.data
                  SC.current && c2 === SU && SC.current(c3)
                }
                return (
                  window.addEventListener('message', Sx),
                  function () {
                    return window.removeEventListener('message', Sx)
                  }
                )
              },
              [SU]
            )
          },
          Fs = F2(48),
          FW = F2(28),
          FR = F2.n(FW)
        function Fd(SU, So) {
          return Fj.apply(this, arguments)
        }
        function Fj() {
          return (Fj = Object(Fs.a)(
            FR.a.mark(function So(Su, SC) {
              var SQ, Sx, SA, Sq
              return FR.a.wrap(function (c0) {
                for (;;) {
                  switch ((c0.prev = c0.next)) {
                    case 0:
                      return (
                        (SQ = {
                          method: 'post',
                          headers: {
                            'Content-Type': 'application/json; charset=UTF-8',
                          },
                          body: JSON.stringify(SC),
                        }),
                        (Sx = window.GetParentResourceName
                          ? window.GetParentResourceName()
                          : 'nui-frame-app'),
                        (c0.next = 4),
                        fetch('https://'.concat(Sx, '/').concat(Su), SQ)
                      )
                    case 4:
                      return (SA = c0.sent), (c0.next = 7), SA.json()
                    case 7:
                      return (Sq = c0.sent), c0.abrupt('return', Sq)
                    case 9:
                    case 'end':
                      return c0.stop()
                  }
                }
              }, So)
            })
          )).apply(this, arguments)
        }
        var FT = function (SU) {
            var Su = Object(FF.c)(Fh),
              SC = Object(FI.a)(Su, 2),
              SQ = (SC[0], SC[1]),
              Sx = Object(F4.useState)(''),
              SA = Object(FI.a)(Sx, 2),
              Sq = SA[0],
              c0 = SA[1],
              c1 = Object(F4.useState)(''),
              c2 = Object(FI.a)(c1, 2),
              c3 = (c2[0], c2[1]),
              c4 = Object(F4.useState)(''),
              c5 = Object(FI.a)(c4, 2),
              c6 = c5[0],
              c7 = c5[1],
              c8 = Object(F4.useState)(''),
              c9 = Object(FI.a)(c8, 2),
              cF = c9[0],
              cS = c9[1],
              cc = Object(F4.useState)(''),
              ca = Object(FI.a)(cc, 2),
              ck = ca[0],
              cZ = ca[1],
              cK = Object(F4.useState)(''),
              cw = Object(FI.a)(cK, 2),
              cr = cw[0],
              cB = cw[1]
            return (
              Fl('uiMessage', function (ch) {
                var cP = ch.data
                'badge' === ch.app &&
                  true === cP.show &&
                  (c0(cP.name),
                  c3(cP.badge),
                  c7(cP.rank),
                  cS(cP.department),
                  cZ(cP.image),
                  cB(cP.callsign),
                  SQ(true),
                  setTimeout(function () {
                    Fd('qpixel-interface:closeApp', {}).then(function (cM) {
                      true === cM.meta.ok &&
                        Fd('qpixel-interface:applicationClosed', {
                          name: 'badge',
                          fromEscape: true,
                        }).then(function (cb) {
                          true === cb.meta.ok && SQ(false)
                        })
                    })
                  }, 3000))
              }),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: 'badge-app-wrapper',
                  children: Object(FG.jsx)('div', {
                    className: 'exterior-wrapper',
                    style: {
                      backgroundImage:
                        'url(https://gta-assets.nopixel.net/images/dark_leather.png)',
                    },
                    children: Object(FG.jsx)('div', {
                      className: 'interior-wrapper',
                      children: Object(FG.jsxs)('div', {
                        className: 'row',
                        children: [
                          Object(FG.jsx)('div', {
                            className: 'column',
                            children: Object(FG.jsx)('div', {
                              className: 'left-column',
                              children: Object(FG.jsx)('div', {
                                className: 'information-wrapper',
                                children: Object(FG.jsxs)('div', {
                                  className: 'information',
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: 'profile-image-holder',
                                      children: Object(FG.jsx)('img', {
                                        src:
                                          void 0 !== ck
                                            ? ck
                                            : 'https://i.imgur.com/wxNT3y2.jpg',
                                        alt: 'profile',
                                      }),
                                    }),
                                    Object(FG.jsxs)('div', {
                                      className: 'name-info',
                                      children: [
                                        Object(FG.jsx)('div', {
                                          className: 'banner',
                                          style: {
                                            backgroundColor: 'rgb(23, 21, 32)',
                                          },
                                          children: Object(FG.jsx)(Ff.a, {
                                            style: {
                                              color: '#fff',
                                              wordBreak: 'break-word',
                                              textAlign: 'center',
                                            },
                                            variant: 'body2',
                                            gutterBottom: true,
                                            children: cF,
                                          }),
                                        }),
                                        Object(FG.jsxs)('div', {
                                          className: 'name-info-wrap',
                                          children: [
                                            Object(FG.jsx)('div', {
                                              className: 'rank',
                                              children: Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body1',
                                                gutterBottom: true,
                                                children: c6,
                                              }),
                                            }),
                                            Object(FG.jsx)('div', {
                                              className: 'name',
                                              children: Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'h6',
                                                gutterBottom: true,
                                                children: Sq,
                                              }),
                                            }),
                                            Object(FG.jsx)('div', {
                                              className: 'callsign',
                                              children: Object(FG.jsxs)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'h6',
                                                gutterBottom: true,
                                                children: ['#', cr],
                                              }),
                                            }),
                                          ],
                                        }),
                                      ],
                                    }),
                                  ],
                                }),
                              }),
                            }),
                          }),
                          Object(FG.jsx)('div', {
                            className: 'column',
                            children: Object(FG.jsx)('div', {
                              className: 'right-column',
                              children: Object(FG.jsx)('div', {
                                className: 'badge-wrapper',
                                children: Object(FG.jsx)('img', {
                                  alt: 'badge',
                                  className: 'badge',
                                  src: 'https://gta-assets.nopixel.net/images/badges/'.concat(
                                    void 0 !== cF ? cF : 'LSPD',
                                    '.png'
                                  ),
                                }),
                              }),
                            }),
                          }),
                        ],
                      }),
                    }),
                  }),
                }),
              })
            )
          },
          Fi = function () {
            var SU = Object(FF.d)(Fh)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'badge',
              children: Object(FG.jsx)(FT, {}),
            })
          },
          FX = F2(184),
          FV = Object(FX.a)({
            contextFlexContainer: {
              flex: '1 1 0%',
              display: 'flex',
              padding: '20vh 0px 64px',
            },
            contextLeftInnerContainer: {
              width: 'auto',
              display: 'inline-block',
              padding: '8px',
              maxHeight: 'calc(100vh - 128px)',
              overflowY: 'auto',
            },
            contextRightInnerContainer: {
              width: 'auto',
              display: 'inline-block',
              padding: '8px',
              maxHeight: 'calc(100vh - 128px)',
              overflowY: 'auto',
            },
            contextButton: {
              color: 'rgb(224, 224, 224)',
              cursor: 'pointer',
              display: 'flex',
              padding: '8px',
              position: 'relative',
              minWidth: '300px',
              boxShadow: 'black 0px 0px 4px 1px',
              borderRadius: '4px',
              marginBottom: '8px',
              pointerEvents: 'all',
              backgroundColor: 'rgb(34, 40, 49)',
              '&:hover': {
                color: 'white',
                backgroundColor: 'rgb(48, 71, 94)',
              },
            },
            contextButtonDisabled: {
              color: 'rgb(224, 224, 224)',
              cursor: 'pointer',
              display: 'flex',
              padding: '8px',
              position: 'relative',
              minWidth: '300px',
              boxShadow: 'black 0px 0px 4px 1px',
              borderRadius: '4px',
              marginBottom: '8px',
              pointerEvents: 'none',
              backgroundColor: 'rgb(132, 132, 134)',
            },
            contextButtonFlex: {
              flex: '1 1 0%',
              display: 'flex',
            },
            contextButtonChevron: {
              width: '32px',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
            },
          }),
          Fg = ['Escape'],
          FD = function () {
            var So = Object(FF.c)(FK),
              Su = Object(FI.a)(So, 2),
              SC = (Su[0], Su[1]),
              SQ = Object(FF.c)(Fk),
              Sx = Object(FI.a)(SQ, 2),
              SA = (Sx[0], Sx[1]),
              Sq = Object(FF.c)(FZ),
              c0 = Object(FI.a)(Sq, 2),
              c1 = (c0[0], c0[1]),
              c2 = Object(FF.c)(Fc),
              c3 = Object(FI.a)(c2, 2),
              c4 = (c3[0], c3[1]),
              c5 = Object(FF.c)(Fa),
              c6 = Object(FI.a)(c5, 2),
              c7 = (c6[0], c6[1]),
              c8 = Object(FF.c)(Fr),
              c9 = Object(FI.a)(c8, 2),
              cF = (c9[0], c9[1]),
              cS = Object(FF.c)(FB),
              cc = Object(FI.a)(cS, 2),
              ca = (cc[0], cc[1]),
              ck = Object(FF.c)(FO),
              cZ = Object(FI.a)(ck, 2),
              cK = (cZ[0], cZ[1]),
              cw = Object(FF.c)(FP),
              cr = Object(FI.a)(cw, 2),
              cB = (cr[0], cr[1]),
              ch = Object(FF.c)(FN),
              cO = Object(FI.a)(ch, 2),
              cP = (cO[0], cO[1]),
              cN = Object(FF.c)(FJ),
              cJ = Object(FI.a)(cN, 2),
              cM = (cJ[0], cJ[1]),
              cb = Object(FF.c)(FM),
              cL = Object(FI.a)(cb, 2),
              cH = (cL[0], cL[1]),
              cY = Object(FF.c)(FL),
              cE = Object(FI.a)(cY, 2),
              cz = (cE[0], cE[1], Object(FF.c)(FS)),
              cG = Object(FI.a)(cz, 2),
              cv = (cG[0], cG[1], Object(FF.d)(FS))
            Object(F4.useEffect)(
              function () {
                var cm = function (cs) {
                  Fg.includes(cs.code) &&
                    ('eye' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'eye',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok &&
                                (SC(false), SA(false), c1(false))
                            })
                        })
                      : 'textbox' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'textbox',
                              fromEscape: true,
                            }).then(function (cd) {
                              true === cd.meta.ok && c4(false)
                            })
                        })
                      : 'range-picker' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'range-picker',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && c7(false)
                            })
                        })
                      : 'envelope' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'envelope',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && cF(false)
                            })
                        })
                      : 'notepad' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'notepad',
                              fromEscape: true,
                            }).then(function (cT) {
                              true === cT.meta.ok && ca(false)
                            })
                        })
                      : 'newspaper' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'newspaper',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && cK(false)
                            })
                        })
                      : 'minigame-numbers' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'minigame-numbers',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && cB(false)
                            })
                        })
                      : 'gov' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'gov',
                              fromEscape: true,
                            }).then(function (cd) {
                              true === cd.meta.ok && cP(false)
                            })
                        })
                      : 'contextmenu' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'contextmenu',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && cM(false)
                            })
                        })
                      : 'laptop' === cv
                      ? Fd('qpixel-interface:closeApp', {}).then(function (cR) {
                          true === cR.meta.ok &&
                            Fd('qpixel-interface:applicationClosed', {
                              name: 'laptop',
                              fromEscape: true,
                            }).then(function (cj) {
                              true === cj.meta.ok && cH(false)
                            })
                        })
                      : 'clothing' === cv && Fd('qpixel-clothing:attemptClose'))
                }
                return (
                  window.addEventListener('keydown', cm),
                  function () {
                    return window.removeEventListener('keydown', cm)
                  }
                )
              },
              [cv]
            )
          },
          Fp = function (SU) {
            var Su = FV(),
              SC = Object(FF.c)(FJ),
              SQ = Object(FI.a)(SC, 2),
              Sx = SQ[0],
              SA = SQ[1],
              Sq = Object(F4.useState)(false),
              c0 = Object(FI.a)(Sq, 2),
              c1 = c0[0],
              c2 = c0[1],
              c3 = Object(FF.c)(FS),
              c4 = Object(FI.a)(c3, 2),
              c5 = (c4[0], c4[1]),
              c6 = Object(F4.useState)([]),
              c7 = Object(FI.a)(c6, 2),
              c8 = c7[0],
              c9 = c7[1],
              cF = Object(F4.useState)([]),
              cS = Object(FI.a)(cF, 2),
              cc = cS[0],
              ca = cS[1],
              ck = Object(F4.useState)(''),
              cZ = Object(FI.a)(ck, 2),
              cK = cZ[0],
              cw = cZ[1]
            Fl('uiMessage', function (cB) {
              var ch = cB.data
              'contextmenu' === cB.app &&
                (true === cB.show
                  ? (c9([]),
                    ca([]),
                    SA(true),
                    c2(true),
                    c5('contextmenu'),
                    c9(ch.options),
                    cw(ch.position))
                  : false === cB.show && (SA(false), c2(false), c9([]), ca([])))
            })
            var cr = function (cB, ch, cO, cP, cN, cJ) {
              if (true === cN) {
                return (
                  SA(false),
                  c2(false),
                  void setTimeout(function () {
                    c9(cc)
                    SA(true)
                    c2(true)
                  }, 100)
                )
              }
              void 0 !== cB
                ? (void 0 !== cO && false !== cO) ||
                  Fd('qpixel-interface:closeApp', {}).then(function (cb) {
                    true === cb.meta.ok &&
                      Fd(''.concat(cB), { key: ch }).then(function (cH) {
                        true === cH.meta.ok &&
                          Fd('qpixel-interface:applicationClosed', {
                            name: 'contextmenu',
                            fromEscape: false,
                          }).then(function (cY) {
                            true === cY.meta.ok &&
                              (SA(false), c2(false), c9([]), ca([]))
                          })
                      })
                  })
                : void 0 !== cP &&
                  (SA(false),
                  c2(false),
                  setTimeout(function () {
                    void 0 !== cJ && Fd(''.concat(cJ), { key: ch })
                    0 === cc.length && ca(c8)
                    var cb = [
                      {
                        title: 'Go Back',
                        backButton: true,
                      },
                    ].concat(cP)
                    c9(cb)
                    SA(true)
                    c2(true)
                  }, 100))
            }
            return (
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsxs)('div', {
                  className: 'context-outer-container',
                  children: [
                    Object(FG.jsx)('div', {
                      className: Su.contextFlexContainer,
                      style: { paddingLeft: '120px' },
                      children: Object(FG.jsx)('div', {
                        className: Su.contextLeftInnerContainer,
                        children:
                          'left' === cK.toString().toLowerCase() &&
                          c8 &&
                          c8.length > 0
                            ? c8.map(function (cB, ch) {
                                return Object(FG.jsx)(FG.Fragment, {
                                  children: Object(FG.jsxs)('div', {
                                    onClick: function () {
                                      return cr(
                                        cB.action,
                                        cB.key,
                                        cB.disabled,
                                        cB.children,
                                        cB.backButton,
                                        cB.extraAction
                                      )
                                    },
                                    className:
                                      void 0 !== cB.disabled &&
                                      true === cB.disabled
                                        ? Su.contextButtonDisabled
                                        : Su.contextButton,
                                    style: {
                                      opacity: c1 ? '1' : '0',
                                      paddingRight:
                                        void 0 !== cB.children ? '0px' : '8px',
                                      paddingLeft:
                                        void 0 !== cB.backButton ? '0px' : '8px',
                                      marginBottom:
                                        void 0 !== cB.backButton ? '16px' : '8px',
                                      transition:
                                        'opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms',
                                    },
                                    children: [
                                      Object(FG.jsx)('div', {
                                        style: {
                                          display:
                                            void 0 !== cB.icon ? '' : 'none',
                                          margin: 'auto 0px',
                                          width: '10%',
                                        },
                                        children: Object(FG.jsx)('i', {
                                          className: 'fas fa-'.concat(
                                            cB.icon,
                                            ' fa-w-14 fa-fw'
                                          ),
                                          style: { color: '#fff' },
                                        }),
                                      }),
                                      Object(FG.jsxs)('div', {
                                        className: Su.contextButtonFlex,
                                        children: [
                                          Object(FG.jsx)('div', {
                                            className: Su.contextButtonChevron,
                                            style: {
                                              display:
                                                void 0 !== cB.backButton
                                                  ? ''
                                                  : 'none',
                                            },
                                            children: Object(FG.jsx)('i', {
                                              className:
                                                'fas fa-chevron-left fa-w-10 fa-fw',
                                              style: { color: '#fff' },
                                            }),
                                          }),
                                          Object(FG.jsxs)('div', {
                                            children: [
                                              Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body1',
                                                gutterBottom: true,
                                                children:
                                                  void 0 !== cB.title
                                                    ? cB.title
                                                    : '',
                                              }),
                                              Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body2',
                                                gutterBottom: true,
                                                children:
                                                  void 0 !== cB.description
                                                    ? cB.description
                                                    : '',
                                              }),
                                            ],
                                          }),
                                        ],
                                      }),
                                      Object(FG.jsx)('div', {
                                        className: Su.contextButtonChevron,
                                        style: {
                                          display:
                                            void 0 !== cB.children ? '' : 'none',
                                        },
                                        children: Object(FG.jsx)('i', {
                                          className:
                                            'fas fa-chevron-right fa-w-10 fa-fw',
                                          style: { color: '#fff' },
                                        }),
                                      }),
                                    ],
                                  }),
                                })
                              })
                            : Object(FG.jsx)(FG.Fragment, {}),
                      }),
                    }),
                    Object(FG.jsx)('div', {
                      className: Su.contextFlexContainer,
                      style: { paddingLeft: '120px' },
                      children: Object(FG.jsx)('div', {
                        className: Su.contextRightInnerContainer,
                        children:
                          'right' === cK.toString().toLowerCase() &&
                          c8 &&
                          c8.length > 0
                            ? c8.map(function (cB, ch) {
                                return Object(FG.jsx)(FG.Fragment, {
                                  children: Object(FG.jsxs)('div', {
                                    onClick: function () {
                                      return cr(
                                        cB.action,
                                        cB.key,
                                        cB.disabled,
                                        cB.children,
                                        cB.backButton,
                                        cB.extraAction
                                      )
                                    },
                                    className:
                                      void 0 !== cB.disabled &&
                                      true === cB.disabled
                                        ? Su.contextButtonDisabled
                                        : Su.contextButton,
                                    style: {
                                      opacity: Sx ? '1' : '0',
                                      paddingRight:
                                        void 0 !== cB.children ? '0px' : '8px',
                                      paddingLeft:
                                        void 0 !== cB.backButton ? '0px' : '8px',
                                      marginBottom:
                                        void 0 !== cB.backButton ? '16px' : '8px',
                                      transition:
                                        'opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms',
                                    },
                                    children: [
                                      Object(FG.jsx)('div', {
                                        style: {
                                          display:
                                            void 0 !== cB.icon ? '' : 'none',
                                          margin: 'auto 0px',
                                          width: '10%',
                                        },
                                        children: Object(FG.jsx)('i', {
                                          className: 'fas fa-'.concat(
                                            cB.icon,
                                            ' fa-w-14 fa-fw'
                                          ),
                                          style: { color: '#fff' },
                                        }),
                                      }),
                                      Object(FG.jsxs)('div', {
                                        className: Su.contextButtonFlex,
                                        children: [
                                          Object(FG.jsx)('div', {
                                            className: Su.contextButtonChevron,
                                            style: {
                                              display:
                                                void 0 !== cB.backButton
                                                  ? ''
                                                  : 'none',
                                            },
                                            children: Object(FG.jsx)('i', {
                                              className:
                                                'fas fa-chevron-left fa-w-10 fa-fw',
                                              style: { color: '#fff' },
                                            }),
                                          }),
                                          Object(FG.jsxs)('div', {
                                            children: [
                                              Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body1',
                                                gutterBottom: true,
                                                children:
                                                  void 0 !== cB.title
                                                    ? cB.title
                                                    : '',
                                              }),
                                              Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body2',
                                                gutterBottom: true,
                                                children:
                                                  void 0 !== cB.description
                                                    ? cB.description
                                                    : '',
                                              }),
                                            ],
                                          }),
                                        ],
                                      }),
                                      Object(FG.jsx)('div', {
                                        className: Su.contextButtonChevron,
                                        style: {
                                          display:
                                            void 0 !== cB.children ? '' : 'none',
                                        },
                                        children: Object(FG.jsx)('i', {
                                          className:
                                            'fas fa-chevron-right fa-w-10 fa-fw',
                                          style: { color: '#fff' },
                                        }),
                                      }),
                                    ],
                                  }),
                                })
                              })
                            : Object(FG.jsx)(FG.Fragment, {}),
                      }),
                    }),
                  ],
                }),
              })
            )
          },
          Fn = function () {
            var SU = Object(FF.d)(FJ)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'contextmenu',
              children: Object(FG.jsx)(Fp, {}),
            })
          },
          Fy = Object(FX.a)({
            thirdEyeContainer: {
              position: 'relative',
              whiteSpace: 'nowrap',
            },
            thirdEyeOptionsWrapper: {
              top: '1.25vw',
              position: 'absolute',
              paddingTop: '16px',
              userSelect: 'none',
              pointerEvents: 'all',
            },
          }),
          Ft = function (SU) {
            var Su = Fy(),
              SC = Object(F4.useState)(''),
              SQ = Object(FI.a)(SC, 2),
              Sx = SQ[0],
              SA = SQ[1],
              Sq = Object(FF.c)(FK),
              c0 = Object(FI.a)(Sq, 2),
              c1 = (c0[0], c0[1]),
              c2 = Object(FF.c)(FS),
              c3 = Object(FI.a)(c2, 2),
              c4 = (c3[0], c3[1]),
              c5 = Object(FF.c)(Fk),
              c6 = Object(FI.a)(c5, 2),
              c7 = c6[0],
              c8 = c6[1],
              c9 = Object(FF.c)(FZ),
              cF = Object(FI.a)(c9, 2),
              cS = cF[0],
              cc = cF[1],
              ca = Object(F4.useState)(''),
              ck = Object(FI.a)(ca, 2),
              cZ = ck[0],
              cK = ck[1],
              cw = Object(F4.useState)(''),
              cr = Object(FI.a)(cw, 2),
              cB = cr[0],
              ch = cr[1],
              cO = Object(F4.useState)([]),
              cP = Object(FI.a)(cO, 2),
              cN = cP[0],
              cJ = cP[1],
              cM = Object(F4.useState)([]),
              cb = Object(FI.a)(cM, 2),
              cL = cb[0],
              cH = cb[1],
              cY = Object(FF.c)(Fc),
              cE = Object(FI.a)(cY, 2),
              cz = cE[0],
              cG = (cE[1], Object(FF.c)(Fa)),
              cv = Object(FI.a)(cG, 2),
              cI = cv[0],
              cf = (cv[1], Object(FF.c)(Fr)),
              cm = Object(FI.a)(cf, 2),
              cl = cm[0],
              cs = (cm[1], Object(FF.c)(FB)),
              cW = Object(FI.a)(cs, 2),
              cR = cW[0],
              cd = (cW[1], Object(FF.c)(FO)),
              cj = Object(FI.a)(cd, 2),
              cT = cj[0],
              ci = (cj[1], Object(FF.c)(FP)),
              cX = Object(FI.a)(ci, 2),
              cV = cX[0],
              cg = (cX[1], Object(FF.c)(FN)),
              cD = Object(FI.a)(cg, 2),
              cp = cD[0]
            cD[1]
            Fl('uiMessage', function (ct) {
              var co = ct.data
              ct.show
              if ('eye' === ct.app) {
                if (
                  (ct.close &&
                    (console.log('CLOSE IS TRUE. CLOSE APP EYE'),
                    c1(false),
                    c8(false),
                    cc(false),
                    SA('')),
                  cz || cI || cl || cR || cT || cV || cp)
                ) {
                  return
                }
                if ('interact' === co.action) {
                  console.log('INTERACT')
                  cc(true)
                  cK(co.payload.context)
                  ch(co.payload.entity)
                  c4('eye')
                } else {
                  if ('refresh' === co.action) {
                    console.log('REFRESH')
                    cJ(co.payload)
                  } else {
                    if ('update' === co.action) {
                      if ((console.log('UPD'), true !== cS)) {
                        if (true === co.payload.active) {
                          c8(true)
                          var cu = co.payload.options,
                            cC = []
                          Object.keys(cN).map(function (cx, cA) {
                            return Object.keys(cu).map(function (cq) {
                              if (cx === cq && true === cu[cq]) {
                                var a0 = {
                                  key: cx,
                                  label: cN[cx].label,
                                  icon: cN[cx].icon,
                                  event: cN[cx].event,
                                  parameters: cN[cx].parameters,
                                }
                                cC.push(a0)
                              }
                            })
                          })
                          cH(cC)
                        } else {
                          c8(false)
                        }
                      }
                    } else {
                      'peek' === co.action &&
                        (true === co.payload.display
                          ? true !== c7 && (c1(true), c8(false))
                          : true !== cS && (c1(false), c8(false)))
                    }
                  }
                }
              }
            })
            var cn = function (ct) {
                SA(ct.currentTarget.id)
              },
              cy = function () {
                SA('')
              }
            return (
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsxs)('div', {
                  className: Su.thirdEyeContainer,
                  children: [
                    Object(FG.jsx)('img', {
                      src: c7
                        ? 'https://gta-assets.nopixel.net/images/peek-active-1.png'
                        : 'https://gta-assets.nopixel.net/images/peek.png',
                      alt: 'peek',
                      style: {
                        maxWidth: '2.5vw',
                        maxHeight: '2.5vw',
                      },
                    }),
                    Object(FG.jsx)('div', {
                      className: Su.thirdEyeOptionsWrapper,
                      style: { display: c7 ? '' : 'none' },
                      children:
                        cL && cL.length > 0
                          ? cL.map(function (ct) {
                              return Object(FG.jsx)(FG.Fragment, {
                                children: Object(FG.jsxs)('div', {
                                  id: ct.key,
                                  className: 'third-eye-option',
                                  onMouseEnter: cn,
                                  onMouseLeave: cy,
                                  children: [
                                    Object(FG.jsx)('i', {
                                      id: ct.key,
                                      className: 'fas fa-'.concat(
                                        ct.icon,
                                        ' fa-w-16 fa-fw fa-lg icon-color'
                                      ),
                                    }),
                                    Object(FG.jsx)(Ff.a, {
                                      id: ct.event,
                                      onClick: function () {
                                        return (
                                          (cU = ct.event),
                                          (co = ct.parameters),
                                          void Fd(
                                            'qpixel-interface:targetSelectOption',
                                            {
                                              entity: cB,
                                              option: {
                                                event: cU,
                                                parameters: co,
                                              },
                                              context: cZ,
                                            }
                                          )
                                        )
                                        var cU, co
                                      },
                                      style: {
                                        color:
                                          Sx.toString() === ct.key.toString()
                                            ? '#1ad4a8'
                                            : '#fff',
                                        wordBreak: 'break-word',
                                        margin: '0',
                                      },
                                      variant: 'h6',
                                      gutterBottom: true,
                                      children: ct.label,
                                    }),
                                  ],
                                }),
                              })
                            })
                          : Object(FG.jsx)(FG.Fragment, {
                              children: Object(FG.jsx)(Ff.a, {
                                style: {
                                  color: '#fff',
                                  wordBreak: 'break-word',
                                  margin: '0',
                                },
                                variant: 'h6',
                                gutterBottom: true,
                                children: 'No Entries ;(',
                              }),
                            }),
                    }),
                  ],
                }),
              })
            )
          },
          FU = function () {
            var SU = Object(FF.d)(FK)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'eye',
              center: true,
              children: Object(FG.jsx)(Ft, {}),
            })
          },
          Fo = Object(FX.a)({
            envelopeContainer: {
              padding: '32px',
              maxWidth: '720px',
              minWidth: '256px',
              pointerEvents: 'all',
              backgroundColor: 'rgb(34, 40, 49)',
            },
            envelopeTextWrapper: {
              display: 'flex',
              alignItems: 'center',
              userSelect: 'none',
            },
          }),
          Fu = function (SU) {
            var So = Fo(),
              Su = Object(FF.c)(Fr),
              SC = Object(FI.a)(Su, 2),
              SQ = (SC[0], SC[1]),
              Sx = Object(FF.c)(FS),
              SA = Object(FI.a)(Sx, 2),
              Sq = (SA[0], SA[1]),
              c0 = Object(F4.useState)(''),
              c1 = Object(FI.a)(c0, 2),
              c2 = c1[0],
              c3 = c1[1]
            return (
              Fl('uiMessage', function (c4) {
                var c5 = c4.data
                'envelope' === c4.app &&
                  (true === c5.show
                    ? (SQ(true),
                      Sq('envelope'),
                      true === c5.textOnly && c3(c5.values))
                    : false === c5.show && (SQ(false), c3('')))
              }),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: So.envelopeContainer,
                  children: Object(FG.jsx)('div', {
                    className: So.envelopeTextWrapper,
                    children: Object(FG.jsx)(Ff.a, {
                      style: {
                        color: '#fff',
                        wordBreak: 'break-word',
                      },
                      variant: 'h4',
                      gutterBottom: true,
                      children: c2,
                    }),
                  }),
                }),
              })
            )
          },
          FC = function () {
            var SU = Object(FF.d)(Fr)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'envelope',
              center: true,
              children: Object(FG.jsx)(Fu, {}),
            })
          },
          FQ = F2(192),
          Fx = F2(183),
          FA = F2(198),
          Fq = F2(189),
          S0 = F2(195),
          S1 = F2(93),
          S2 = F2(79),
          S3 = function (SU) {
            var Su = Object(FF.c)(FN),
              SC = Object(FI.a)(Su, 2),
              SQ = (SC[0], SC[1]),
              Sx = Object(FF.c)(FS),
              SA = Object(FI.a)(Sx, 2),
              Sq = (SA[0], SA[1]),
              c0 = Object(F4.useState)(0),
              c1 = Object(FI.a)(c0, 2),
              c2 = c1[0],
              c3 = c1[1],
              c4 = F5.a.useState(null),
              c5 = Object(FI.a)(c4, 2),
              c6 = c5[0],
              c7 = c5[1],
              c8 = Boolean(c6),
              c9 = F5.a.useState(null),
              cF = Object(FI.a)(c9, 2),
              cS = cF[0],
              cc = cF[1],
              ca = Boolean(cS),
              ck = Object(F4.useState)(false),
              cZ = Object(FI.a)(ck, 2),
              cK = cZ[0],
              cw = cZ[1],
              cr = Object(F4.useState)(false),
              cB = Object(FI.a)(cr, 2),
              ch = cB[0],
              cO = cB[1],
              cP = Object(F4.useState)(false),
              cN = Object(FI.a)(cP, 2),
              cJ = cN[0],
              cM = cN[1],
              cb = Object(F4.useState)(false),
              cL = Object(FI.a)(cb, 2),
              cH = cL[0],
              cY = cL[1],
              cE = Object(F4.useState)(false),
              cz = Object(FI.a)(cE, 2),
              cG = cz[0],
              cv = cz[1],
              cI = Object(F4.useState)([]),
              cf = Object(FI.a)(cI, 2),
              cm = cf[0],
              cl = cf[1],
              cs = Object(F4.useState)(''),
              cW = Object(FI.a)(cs, 2),
              cR = cW[0],
              cd = cW[1]
            Fl('uiMessage', function (cD) {
              var cp = cD.data
              'gov' === cD.app &&
                (cY(false),
                cw(false),
                cv(false),
                true === cp.show
                  ? (SQ(true), Sq('gov'))
                  : false === cp.show && SQ(false))
            })
            var cj = function (cD) {
                c3(cD)
              },
              cT = function () {
                c7(null), cw(true)
              },
              ci = function () {
                c7(null)
                cO(true)
              },
              cX = function () {
                cO(false)
              },
              cV = function (cD) {
                cd(cD.target.value)
              },
              cg = function (cD) {
                return Number(cD).toLocaleString('en-Us', {
                  style: 'currency',
                  currency: 'USD',
                })
              }
            return (
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: 'hud-settings-wrapper',
                  children: Object(FG.jsxs)('div', {
                    className: 'hud-settings',
                    children: [
                      Object(FG.jsx)('div', {
                        className: 'gov-create-account-modal-container',
                        style: { display: ch ? '' : 'none' },
                        children: Object(FG.jsxs)('div', {
                          className: 'gov-create-account-modal-inner-container',
                          children: [
                            Object(FG.jsx)('div', {
                              className: 'spinner-wrapper',
                              style: { display: cJ ? '' : 'none' },
                              children: Object(FG.jsxs)('div', {
                                className: 'lds-spinner',
                                children: [
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'spinner-wrapper',
                              style: { display: cH ? '' : 'none' },
                              children: Object(FG.jsx)(S2.Checkmark, {
                                size: '56px',
                                color: '#009688',
                              }),
                            }),
                            Object(FG.jsxs)('div', {
                              className: 'component-simple-form',
                              style: { display: cG ? 'none' : '' },
                              children: [
                                Object(FG.jsx)('div', {
                                  children: Object(FG.jsxs)('div', {
                                    className: 'input-wrapper',
                                    children: [
                                      Object(FG.jsx)(FQ.a, {
                                        fullWidth: true,
                                        sx: {
                                          width: '100%',
                                          paddingTop: '1%',
                                          paddingBottom: '1%',
                                        },
                                        children: Object(FG.jsx)(Fx.a, {
                                          sx: {
                                            '& .MuiInput-root': {
                                              color: 'white !important',
                                            },
                                            '& label.Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                              {
                                                borderColor:
                                                  'darkgray !important',
                                              },
                                            '& .MuiInput-underline:before': {
                                              borderColor: 'darkgray !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:after': {
                                              borderColor: 'white !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .Mui-focused:after': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInputAdornment-root': {
                                              color: 'darkgray !important',
                                            },
                                          },
                                          id: 'input-with-icon-textfield',
                                          label: 'State ID',
                                          variant: 'standard',
                                          value: cR,
                                          onChange: cV,
                                          InputProps: {
                                            startAdornment: Object(FG.jsx)(FA.a, {
                                              position: 'start',
                                              children: Object(FG.jsx)('i', {
                                                className: 'fas fa-id-card',
                                              }),
                                            }),
                                          },
                                        }),
                                      }),
                                      Object(FG.jsx)(FQ.a, {
                                        fullWidth: true,
                                        sx: {
                                          width: '100%',
                                          paddingTop: '1%',
                                          paddingBottom: '1%',
                                        },
                                        children: Object(FG.jsxs)(Fx.a, {
                                          id: 'outlined-select-currency',
                                          defaultValue: 'savingsaccount',
                                          variant: 'standard',
                                          select: true,
                                          label: 'Account Type',
                                          sx: {
                                            '& .MuiInput-root': {
                                              color: 'white !important',
                                            },
                                            '& label.Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                              {
                                                borderColor:
                                                  'darkgray !important',
                                              },
                                            '& .MuiInput-underline:before': {
                                              borderColor: 'darkgray !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:after': {
                                              borderColor: 'white !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .Mui-focused:after': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInputAdornment-root': {
                                              color: 'darkgray !important',
                                            },
                                          },
                                          children: [
                                            Object(FG.jsx)(Fq.a, {
                                              value: 'savingsaccount',
                                              children: 'Savings Account',
                                            }),
                                            Object(FG.jsx)(Fq.a, {
                                              value: 'businessaccount',
                                              children: 'Business Account',
                                            }),
                                          ],
                                        }),
                                      }),
                                      Object(FG.jsx)(FQ.a, {
                                        fullWidth: true,
                                        sx: {
                                          width: '100%',
                                          paddingTop: '1%',
                                          paddingBottom: '1%',
                                        },
                                        children: Object(FG.jsx)(Fx.a, {
                                          sx: {
                                            '& .MuiInput-root': {
                                              color: 'white !important',
                                            },
                                            '& label.Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& Mui-focused': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                              {
                                                borderColor:
                                                  'darkgray !important',
                                              },
                                            '& .MuiInput-underline:before': {
                                              borderColor: 'darkgray !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInput-underline:after': {
                                              borderColor: 'white !important',
                                              color: 'darkgray !important',
                                            },
                                            '& .Mui-focused:after': {
                                              color: 'darkgray !important',
                                            },
                                            '& .MuiInputAdornment-root': {
                                              color: 'darkgray !important',
                                            },
                                          },
                                          id: 'input-with-icon-textfield',
                                          label: 'Bank ID',
                                          variant: 'standard',
                                          InputProps: {
                                            startAdornment: Object(FG.jsx)(FA.a, {
                                              position: 'start',
                                              children: Object(FG.jsx)('i', {
                                                className: 'fas fa-university',
                                              }),
                                            }),
                                          },
                                        }),
                                      }),
                                    ],
                                  }),
                                }),
                                Object(FG.jsxs)('div', {
                                  className: 'buttons',
                                  children: [
                                    Object(FG.jsx)('div', {
                                      children: Object(FG.jsx)(S0.a, {
                                        onClick: cX,
                                        size: 'small',
                                        color: 'warning',
                                        variant: 'contained',
                                        children: 'Cancel',
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      children: Object(FG.jsx)(S0.a, {
                                        onClick: cX,
                                        size: 'small',
                                        color: 'success',
                                        variant: 'contained',
                                        children: 'Submit',
                                      }),
                                    }),
                                  ],
                                }),
                              ],
                            }),
                          ],
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        className: 'gov-search-state-id-modal-container',
                        style: { display: cK ? '' : 'none' },
                        children: Object(FG.jsxs)('div', {
                          className: 'gov-search-state-id-modal-inner-container',
                          children: [
                            Object(FG.jsx)('div', {
                              className: 'spinner-wrapper',
                              style: { display: cJ ? '' : 'none' },
                              children: Object(FG.jsxs)('div', {
                                className: 'lds-spinner',
                                children: [
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                  Object(FG.jsx)('div', {}),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'spinner-wrapper',
                              style: { display: cH ? '' : 'none' },
                              children: Object(FG.jsx)(S2.Checkmark, {
                                size: '56px',
                                color: '#009688',
                              }),
                            }),
                            Object(FG.jsxs)('div', {
                              className: 'component-simple-form',
                              style: { display: cG ? 'none' : '' },
                              children: [
                                Object(FG.jsx)('div', {
                                  children: Object(FG.jsx)('div', {
                                    className: 'input-wrapper',
                                    children: Object(FG.jsx)(FQ.a, {
                                      fullWidth: true,
                                      sx: { width: '100%' },
                                      children: Object(FG.jsx)(Fx.a, {
                                        sx: {
                                          '& .MuiInput-root': {
                                            color: 'white !important',
                                          },
                                          '& label.Mui-focused': {
                                            color: 'darkgray !important',
                                          },
                                          '& Mui-focused': {
                                            color: 'darkgray !important',
                                          },
                                          '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                            {
                                              borderColor: 'darkgray !important',
                                            },
                                          '& .MuiInput-underline:before': {
                                            borderColor: 'darkgray !important',
                                            color: 'darkgray !important',
                                          },
                                          '& .MuiInput-underline:after': {
                                            borderColor: 'white !important',
                                            color: 'darkgray !important',
                                          },
                                          '& .Mui-focused:after': {
                                            color: 'darkgray !important',
                                          },
                                          '& .MuiInputAdornment-root': {
                                            color: 'darkgray !important',
                                          },
                                        },
                                        id: 'input-with-icon-textfield',
                                        label: 'ID',
                                        variant: 'standard',
                                        value: cR,
                                        onChange: cV,
                                        InputProps: {
                                          startAdornment: Object(FG.jsx)(FA.a, {
                                            position: 'start',
                                            children: Object(FG.jsx)('i', {
                                              className: 'fas fa-pen',
                                            }),
                                          }),
                                        },
                                      }),
                                    }),
                                  }),
                                }),
                                Object(FG.jsxs)('div', {
                                  className: 'buttons',
                                  children: [
                                    Object(FG.jsx)('div', {
                                      children: Object(FG.jsx)(S0.a, {
                                        onClick: function () {
                                          cw(false)
                                        },
                                        size: 'small',
                                        color: 'warning',
                                        variant: 'contained',
                                        children: 'Cancel',
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      children: Object(FG.jsx)(S0.a, {
                                        onClick: function () {
                                          cM(true),
                                            cv(true),
                                            Fd(
                                              'qpixel-interface:getBankAccountsByStateID',
                                              { stateid: cR }
                                            ).then(function (cp) {
                                              cd('')
                                              cM(false)
                                              cY(true)
                                              cl(cp.data)
                                              setTimeout(function () {
                                                cY(false)
                                                cw(false)
                                                cv(false)
                                              }, 1000)
                                            })
                                        },
                                        size: 'small',
                                        color: 'success',
                                        variant: 'contained',
                                        children: 'Submit',
                                      }),
                                    }),
                                  ],
                                }),
                              ],
                            }),
                          ],
                        }),
                      }),
                      Object(FG.jsxs)('div', {
                        className: 'setting-menu',
                        children: [
                          Object(FG.jsx)('div', {
                            onClick: function () {
                              return cj(1)
                            },
                            className: 'boxsetting-menu',
                            id: 'bankaccounts',
                            style: {
                              backgroundColor:
                                1 === c2 ? '#202730' : 'rgb(48, 71, 92)',
                            },
                            children: Object(FG.jsx)(Ff.a, {
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                                marginLeft: '5%',
                              },
                              variant: 'body1',
                              gutterBottom: true,
                              children: 'Bank Accounts',
                            }),
                          }),
                          Object(FG.jsx)('div', {
                            onClick: function () {
                              return cj(2)
                            },
                            className: 'boxsetting-menu',
                            id: 'loans',
                            style: {
                              backgroundColor:
                                2 === c2 ? '#202730' : 'rgb(48, 71, 92)',
                            },
                            children: Object(FG.jsx)(Ff.a, {
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                                marginLeft: '5%',
                              },
                              variant: 'body1',
                              gutterBottom: true,
                              children: 'Loans',
                            }),
                          }),
                          Object(FG.jsx)('div', {
                            onClick: function () {
                              return cj(3)
                            },
                            className: 'boxsetting-menu',
                            id: 'ballots',
                            style: {
                              backgroundColor:
                                3 === c2 ? '#202730' : 'rgb(48, 71, 92)',
                            },
                            children: Object(FG.jsx)(Ff.a, {
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                                marginLeft: '5%',
                              },
                              variant: 'body1',
                              gutterBottom: true,
                              children: 'Ballots',
                            }),
                          }),
                          Object(FG.jsx)('div', {
                            onClick: function () {
                              return cj(4)
                            },
                            className: 'boxsetting-menu',
                            id: 'phoneconvos',
                            style: {
                              backgroundColor:
                                4 === c2 ? '#202730' : 'rgb(48, 71, 92)',
                            },
                            children: Object(FG.jsx)(Ff.a, {
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                                marginLeft: '5%',
                              },
                              variant: 'body1',
                              gutterBottom: true,
                              children: 'Phone Conversations',
                            }),
                          }),
                        ],
                      }),
                      Object(FG.jsx)('div', {
                        className: 'settings-panel',
                        children: Object(FG.jsxs)('div', {
                          className: 'setting-panel',
                          children: [
                            Object(FG.jsx)('div', {
                              className: 'bank-accounts-menu',
                              style: {
                                display: 1 === c2 ? '' : 'none',
                                height: '100%',
                              },
                              children: Object(FG.jsxs)('div', {
                                className: 'column',
                                children: [
                                  Object(FG.jsx)('div', {
                                    className: 'header',
                                    children: Object(FG.jsx)('div', {
                                      className: 'description',
                                      children: Object(FG.jsxs)('div', {
                                        className: 'flex-row',
                                        style: {
                                          justifyContent: 'space-between',
                                        },
                                        children: [
                                          Object(FG.jsx)(Ff.a, {
                                            style: {
                                              color: '#fff',
                                              wordBreak: 'break-word',
                                            },
                                            variant: 'h6',
                                            gutterBottom: true,
                                            children: 'Banking',
                                          }),
                                          Object(FG.jsxs)('div', {
                                            style: { marginRight: '0.9%' },
                                            children: [
                                              Object(FG.jsx)(S0.a, {
                                                onClick: ci,
                                                size: 'small',
                                                color: 'success',
                                                variant: 'contained',
                                                children: 'Create Account',
                                              }),
                                              ' ',
                                              Object(FG.jsx)('i', {
                                                onClick: function (cD) {
                                                  c7(cD.currentTarget)
                                                },
                                                className:
                                                  'fas fa-ellipsis-v fa-w-16 fa-fw fa-xs',
                                              }),
                                            ],
                                          }),
                                          Object(FG.jsxs)(S1.a, {
                                            id: 'demo-positioned-menu',
                                            'aria-labelledby':
                                              'demo-positioned-button',
                                            anchorEl: c6,
                                            open: c8,
                                            onClose: function () {
                                              c7(null)
                                            },
                                            anchorOrigin: {
                                              vertical: 'top',
                                              horizontal: 'left',
                                            },
                                            transformOrigin: {
                                              vertical: 'top',
                                              horizontal: 'left',
                                            },
                                            children: [
                                              Object(FG.jsx)(Fq.a, {
                                                children: 'Search by Account ID',
                                              }),
                                              Object(FG.jsx)(Fq.a, {
                                                onClick: cT,
                                                children: 'Search by State ID',
                                              }),
                                              Object(FG.jsx)(Fq.a, {
                                                children:
                                                  'Search by Business Name',
                                              }),
                                            ],
                                          }),
                                        ],
                                      }),
                                    }),
                                  }),
                                  Object(FG.jsx)('div', { className: 'row' }),
                                  Object(FG.jsx)('div', {
                                    className: 'bank-accounts',
                                    children:
                                      cm && cm.length > 0
                                        ? cm.map(function (cD) {
                                            return Object(FG.jsxs)(FG.Fragment, {
                                              children: [
                                                Object(FG.jsx)('div', {
                                                  className: 'spacer',
                                                  style: {
                                                    width: '99.2%',
                                                    marginBottom: '8px',
                                                    marginTop: '0px',
                                                  },
                                                }),
                                                Object(FG.jsx)('div', {
                                                  className:
                                                    'component-paper cursor-pointer',
                                                  style: {
                                                    width: '99.2%',
                                                    borderBottom:
                                                      '0px solid #fff',
                                                    borderRadius: '0px',
                                                  },
                                                  children: Object(FG.jsx)(
                                                    'div',
                                                    {
                                                      className: 'main-container',
                                                      children: Object(FG.jsx)(
                                                        'div',
                                                        {
                                                          className: 'details',
                                                          children: Object(
                                                            FG.jsx
                                                          )('div', {
                                                            className:
                                                              'description',
                                                            children: Object(
                                                              FG.jsxs
                                                            )('div', {
                                                              className:
                                                                'flex-row',
                                                              style: {
                                                                justifyContent:
                                                                  'space-between',
                                                              },
                                                              children: [
                                                                Object(FG.jsx)(
                                                                  Ff.a,
                                                                  {
                                                                    style: {
                                                                      color:
                                                                        '#fff',
                                                                      wordBreak:
                                                                        'break-word',
                                                                    },
                                                                    variant:
                                                                      'body1',
                                                                    gutterBottom:
                                                                      true,
                                                                    children:
                                                                      'personal' ===
                                                                      cD.id.toString()
                                                                        ? 'Personal Account ('.concat(
                                                                            cg(
                                                                              cD.amount
                                                                            ),
                                                                            ')'
                                                                          )
                                                                        : ''
                                                                            .concat(
                                                                              cD.name,
                                                                              ' ('
                                                                            )
                                                                            .concat(
                                                                              cg(
                                                                                cD.amount
                                                                              ),
                                                                              ')'
                                                                            ),
                                                                  }
                                                                ),
                                                                Object(FG.jsxs)(
                                                                  Ff.a,
                                                                  {
                                                                    style: {
                                                                      color:
                                                                        '#fff',
                                                                      wordBreak:
                                                                        'break-word',
                                                                    },
                                                                    variant:
                                                                      'body1',
                                                                    gutterBottom:
                                                                      true,
                                                                    children: [
                                                                      'personal' ===
                                                                      cD.id.toString()
                                                                        ? 'Default / '.concat(
                                                                            cD.bank_id
                                                                          )
                                                                        : 'Business Account / '.concat(
                                                                            cD.bank_id
                                                                          ),
                                                                      ' ',
                                                                      Object(
                                                                        FG.jsx
                                                                      )('i', {
                                                                        className:
                                                                          'fas fa-ellipsis-v fa-w-16 fa-fw fa-sm',
                                                                      }),
                                                                    ],
                                                                  }
                                                                ),
                                                              ],
                                                            }),
                                                          }),
                                                        }
                                                      ),
                                                    }
                                                  ),
                                                }),
                                              ],
                                            })
                                          })
                                        : Object(FG.jsx)(FG.Fragment, {}),
                                  }),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'loans-menu',
                              style: { display: 2 === c2 ? '' : 'none' },
                              children: Object(FG.jsxs)('div', {
                                className: 'column',
                                children: [
                                  Object(FG.jsx)('div', {
                                    className: 'header',
                                    children: Object(FG.jsx)('div', {
                                      className: 'description',
                                      children: Object(FG.jsxs)('div', {
                                        className: 'flex-row',
                                        style: {
                                          justifyContent: 'space-between',
                                        },
                                        children: [
                                          Object(FG.jsx)(Ff.a, {
                                            style: {
                                              color: '#fff',
                                              wordBreak: 'break-word',
                                            },
                                            variant: 'h6',
                                            gutterBottom: true,
                                            children: 'Loans',
                                          }),
                                          Object(FG.jsx)('div', {
                                            style: { marginRight: '0.9%' },
                                            children: Object(FG.jsx)('i', {
                                              onClick: function (cD) {
                                                cc(cD.currentTarget)
                                              },
                                              className:
                                                'fas fa-ellipsis-v fa-w-16 fa-fw fa-xs',
                                            }),
                                          }),
                                          Object(FG.jsxs)(S1.a, {
                                            id: 'demo-positioned-menu',
                                            'aria-labelledby':
                                              'demo-positioned-button',
                                            anchorEl: cS,
                                            open: ca,
                                            onClose: function () {
                                              cc(null)
                                            },
                                            anchorOrigin: {
                                              vertical: 'top',
                                              horizontal: 'left',
                                            },
                                            transformOrigin: {
                                              vertical: 'top',
                                              horizontal: 'left',
                                            },
                                            children: [
                                              Object(FG.jsx)(Fq.a, {
                                                children: 'Search by Loan ID',
                                              }),
                                              Object(FG.jsx)(Fq.a, {
                                                onClick: cT,
                                                children: 'Search by State ID',
                                              }),
                                            ],
                                          }),
                                        ],
                                      }),
                                    }),
                                  }),
                                  Object(FG.jsx)('div', { className: 'row' }),
                                  Object(FG.jsx)('div', { className: 'loans' }),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'ballots-menu',
                              style: { display: 3 === c2 ? '' : 'none' },
                              children: Object(FG.jsxs)('div', {
                                className: 'column',
                                children: [
                                  Object(FG.jsx)('div', {
                                    className: 'header',
                                    children: Object(FG.jsx)('div', {
                                      className: 'description',
                                      children: Object(FG.jsxs)('div', {
                                        className: 'flex-row',
                                        style: {
                                          justifyContent: 'space-between',
                                        },
                                        children: [
                                          Object(FG.jsx)(Ff.a, {
                                            style: {
                                              color: '#fff',
                                              wordBreak: 'break-word',
                                            },
                                            variant: 'h6',
                                            gutterBottom: true,
                                            children: 'Ballots',
                                          }),
                                          Object(FG.jsx)('div', {
                                            style: { marginRight: '0.9%' },
                                            children: Object(FG.jsx)(S0.a, {
                                              onClick: ci,
                                              size: 'small',
                                              color: 'success',
                                              variant: 'contained',
                                              children: 'Create Ballot',
                                            }),
                                          }),
                                        ],
                                      }),
                                    }),
                                  }),
                                  Object(FG.jsx)('div', { className: 'row' }),
                                  Object(FG.jsx)('div', { className: 'ballots' }),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'phone-conversations-menu',
                              style: { display: 4 === c2 ? '' : 'none' },
                            }),
                          ],
                        }),
                      }),
                    ],
                  }),
                }),
              })
            )
          },
          S4 = function () {
            var SU = Object(FF.d)(FN)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'government',
              center: true,
              children: Object(FG.jsx)(S3, {}),
            })
          },
          S5 = Object(FX.a)({
            interactionsContainer: {
              width: '100vw',
              height: '100vh',
              display: 'flex',
              alignItems: 'center',
              paddingLeft: '16px',
            },
            interactionContainer: { display: 'inline-block' },
          }),
          S6 = F2(186),
          S7 = function (SU) {
            var Su = S5(),
              SC = Object(FF.c)(Fw),
              SQ = Object(FI.a)(SC, 2),
              Sx = SQ[0],
              SA = SQ[1],
              Sq = Object(FF.c)(FS),
              c0 = Object(FI.a)(Sq, 2),
              c1 =
                (c0[0],
                c0[1],
                Object(F4.useState)('[E] Start Catching Chickens')),
              c2 = Object(FI.a)(c1, 2),
              c3 = c2[0],
              c4 = c2[1],
              c5 = Object(F4.useState)(''),
              c6 = Object(FI.a)(c5, 2),
              c7 = c6[0],
              c8 = c6[1],
              c9 = Object(F4.useState)(false),
              cF = Object(FI.a)(c9, 2),
              cS = cF[0],
              cc = cF[1],
              ca = Object(F4.useState)(''),
              ck = Object(FI.a)(ca, 2),
              cZ = ck[0],
              cK = ck[1]
            return (
              Fl('uiMessage', function (cw) {
                var cB = cw.data
                if ('interactions' === cw.app) {
                  if (true === cB.show) {
                    if ((cc(false), cK(''), cB.message.includes('[E]'))) {
                      var ch = cB.message.split('[E]', 3)
                      c4(ch)
                      cc(true)
                      cK('E')
                    } else {
                      if (cB.message.includes('[M]')) {
                        var cO = cB.message.split('[M]', 3)
                        c4(cO)
                        cc(true)
                        cK('M')
                      } else {
                        if (cB.message.includes('[H]')) {
                          var cP = cB.message.split('[H]', 3)
                          c4(cP)
                          cc(true)
                          cK('H')
                        } else {
                          c4(cB.message)
                          cc(false)
                          cK('')
                        }
                      }
                    }
                    c8(cB.type)
                    SA(true)
                  } else {
                    false === cB.show &&
                      (cc(false), cK(''), SA(false), c4(cB.message), c8(cB.type))
                  }
                }
              }),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: Su.interactionsContainer,
                  children: Object(FG.jsx)('div', {
                    className: Su.interactionContainer,
                    children: Object(FG.jsx)(S6.a, {
                      icon: false,
                      className: c7,
                      variant: 'filled',
                      sx: {
                        transform: Sx ? 'none' : 'translateX(calc(-119%))',
                        transition:
                          'transform 600ms cubic-bezier(0, 0, 0.2, 1) 0ms',
                      },
                      children: Object(FG.jsxs)(Ff.a, {
                        style: {
                          color: '#fff',
                          wordBreak: 'break-word',
                        },
                        className: 'interaction-typography',
                        variant: 'body1',
                        gutterBottom: true,
                        children: [
                          Object(FG.jsxs)('span', {
                            className: 'interaction-shadow',
                            style: { display: cS ? '' : 'none' },
                            children: ['[', cZ, '] '],
                          }),
                          c3,
                        ],
                      }),
                    }),
                  }),
                }),
              })
            )
          },
          S8 = function () {
            return Object(FG.jsx)(Fv, {
              show: true,
              name: 'interactions',
              zIndex: 0,
              children: Object(FG.jsx)(S7, {}),
            })
          },
          S9 = function (SU) {
            var So = Object(FF.c)(FO),
              Su = Object(FI.a)(So, 2),
              SC = (Su[0], Su[1]),
              SQ = Object(FF.c)(FS),
              Sx = Object(FI.a)(SQ, 2),
              SA = (Sx[0], Sx[1])
            return (
              Fl('uiMessage', function (Sq) {
                var c0 = Sq.data
                'newspaper' === Sq.app &&
                  (true === c0.show
                    ? (SC(true), SA('newspaper'))
                    : false === c0.show && SC(false))
              }),
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: 'newspaper-wrapper',
                  children: Object(FG.jsx)('div', {
                    className: 'newspaper',
                    children: Object(FG.jsxs)('div', {
                      className: 'content',
                      children: [
                        Object(FG.jsxs)('div', {
                          className: 'header',
                          children: [
                            Object(FG.jsx)('div', {
                              className: 'alert-box',
                              children:
                                'City Alert: We have had multiple reports of injuries from spinning newspapers. Be careful!',
                            }),
                            Object(FG.jsx)('div', {
                              className: 'title',
                              children: 'Los Santos Post',
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: 'subhead',
                          children: [
                            Object(FG.jsx)('span', {
                              children: 'Edition: 49,726',
                            }),
                            Object(FG.jsx)('span', {
                              children:
                                'The Second Best Selling Newspaper in the World',
                            }),
                            Object(FG.jsx)('span', { children: 'Current News' }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: 'columns',
                          children: [
                            Object(FG.jsxs)('div', {
                              className: 'column',
                              children: [
                                Object(FG.jsx)('div', {
                                  className: 'headline',
                                  children: 'Upcoming Elections',
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'subheadline',
                                  children: 'GIVE THEM HOPE',
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'column-content',
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              className: 'column',
                              children: [
                                Object(FG.jsx)('div', {
                                  className: 'headline',
                                  children: 'Recent Elections',
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'subheadline',
                                  children: 'DESTROY THEIR HOPE',
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'column-content',
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              className: 'column',
                              children: [
                                Object(FG.jsx)('div', {
                                  className: 'headline',
                                  children: 'Lockups',
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'subheadline',
                                  children: "PD Gang W's",
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'column-content',
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              className: 'column column-dbl',
                              children: [
                                Object(FG.jsxs)('div', {
                                  className: 'dbl',
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: 'headline',
                                      children: 'Drugs',
                                    }),
                                    Object(FG.jsx)('div', {
                                      className: 'subheadline',
                                      children: 'by Joe Mama',
                                    }),
                                    Object(FG.jsx)('div', {
                                      className: 'column-content',
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: 'dbl',
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: 'headline',
                                      children: 'Stonks',
                                    }),
                                    Object(FG.jsx)('div', {
                                      className: 'subheadline',
                                      children: 'On The Rise?',
                                    }),
                                    Object(FG.jsx)('div', {
                                      className: 'column-content',
                                    }),
                                  ],
                                }),
                              ],
                            }),
                          ],
                        }),
                        Object(FG.jsx)('div', {
                          className: 'subhead',
                          children: Object(FG.jsx)('div', {
                            className: 'taxes',
                            children: 'Recent Tax Changes:',
                          }),
                        }),
                      ],
                    }),
                  }),
                }),
              })
            )
          },
          SF = function () {
            var SU = Object(FF.d)(FO)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'newspaper',
              center: true,
              children: Object(FG.jsx)(S9, {}),
            })
          },
          SS = Object(FX.a)({
            notepadContainer: {
              width: '100vw',
              height: '100vh',
              display: 'flex',
              alignItems: 'flex-end',
              justifyContent: 'center',
            },
            notepadInnerConainer: {
              width: '50vw',
              height: '100vh',
              display: 'flex',
              alignItems: 'center',
              flexDirection: 'column',
              pointerEvents: 'all',
              justifyContent: 'center',
            },
            notepadSaveContainer: {
              width: '50vw',
              height: '3vh',
              margin: '0px auto',
              display: 'flex',
              padding: '24px',
              alignItems: 'center',
              justifyContent: 'end',
              backgroundColor: 'rgb(34, 40, 49)',
            },
            notepadTextArea: {
              color: 'rgb(0, 0, 0)',
              width: '50vw',
              border: '1px solid rgb(238, 238, 238)',
              height: '35vh',
              resize: 'none',
              padding: '11px 20px 0px 70px',
              fontSize: '22px',
              boxShadow: 'rgb(221 221 221) 1px 1px 0px',
              overflowY: 'auto',
              lineHeight: '50px',
              backgroundSize: '100% 50px',
              backgroundImage:
                '-webkit-linear-gradient(top, rgb(255, 255, 255), rgb(255, 255, 255) 49px, rgb(231, 239, 248) 0px), -webkit-radial-gradient(4% 50%, circle closest-corner, rgb(245, 245, 245), rgb(245, 245, 245) 39%, rgb(255, 255, 255) 0%), -webkit-radial-gradient(3.9% 46%, circle closest-corner, rgb(204, 204, 204), rgb(204, 204, 204) 43.5%, rgb(255, 255, 255) 0%)',
            },
          }),
          Sc = function (SU) {
            var Su = SS(),
              SC = Object(FF.c)(FB),
              SQ = Object(FI.a)(SC, 2),
              Sx = (SQ[0], SQ[1]),
              SA = Object(FF.c)(FS),
              Sq = Object(FI.a)(SA, 2),
              c0 = (Sq[0], Sq[1]),
              c1 = Object(F4.useState)(false),
              c2 = Object(FI.a)(c1, 2),
              c3 = c2[0],
              c4 = c2[1],
              c5 = Object(F4.useState)(''),
              c6 = Object(FI.a)(c5, 2),
              c7 = c6[0],
              c8 = c6[1]
            return (
              Fl('uiMessage', function (c9) {
                var cF = c9.data
                'notepad' === c9.app &&
                  (true === cF.show
                    ? (Sx(true),
                      c0('notepad'),
                      c4(cF.canSave),
                      c8(''),
                      false === cF.canSave && c8(cF.content))
                    : false === cF.show && (Sx(false), c4(false), c8('')))
              }),
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: Su.notepadContainer,
                  children: Object(FG.jsxs)('div', {
                    className: Su.notepadInnerConainer,
                    children: [
                      Object(FG.jsx)('div', {
                        className: Su.notepadSaveContainer,
                        style: { display: c3 ? '' : 'none' },
                        children: Object(FG.jsx)('div', {
                          children: Object(FG.jsx)(S0.a, {
                            size: 'small',
                            color: 'success',
                            variant: 'contained',
                            children: 'Save',
                          }),
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        style: { display: c3 ? '' : 'none' },
                        children: Object(FG.jsx)('textarea', {
                          id: 'notepad-content',
                          className: Su.notepadTextArea,
                          spellCheck: 'false',
                          readOnly: false,
                          value: c7,
                          onChange: function (c9) {
                            return c8(c9.target.value)
                          },
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        style: { display: c3 ? 'none' : '' },
                        children: Object(FG.jsx)('textarea', {
                          id: 'notepad-content',
                          className: Su.notepadTextArea,
                          spellCheck: 'false',
                          readOnly: true,
                          value: c7,
                        }),
                      }),
                    ],
                  }),
                }),
              })
            )
          },
          Sa = function () {
            var SU = Object(FF.d)(FB)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'notepad',
              center: true,
              children: Object(FG.jsx)(Sc, {}),
            })
          },
          Sk = Object(FX.a)({
            rangePickerOuterContainer: {
              width: '100vw',
              height: '100vh',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
            },
            rangePickerInnerContainer: {
              height: '30vh',
              display: 'flex',
              padding: '32px',
              alignItems: 'center',
              flexDirection: 'column',
              pointerEvents: 'all',
              justifyContent: 'center',
              backgroundColor: 'rgb(34, 40, 49)',
            },
            rangePickerSliderWrapper: { flex: '1 1 0%' },
            rangePickerButtonWrapper: { marginTop: '32px' },
          }),
          SZ = F2(182),
          SK = F2(187),
          Sw = function (SU) {
            var Su = Sk(),
              SC = Object(FF.c)(Fa),
              SQ = Object(FI.a)(SC, 2),
              Sx = (SQ[0], SQ[1]),
              SA = Object(FF.c)(FS),
              Sq = Object(FI.a)(SA, 2),
              c0 = (Sq[0], Sq[1]),
              c1 = (Object(FF.d)(FS), Object(F4.useState)('')),
              c2 = Object(FI.a)(c1, 2),
              c3 = (c2[0], c2[1])
            return (
              Fl('uiMessage', function (c4) {
                var c5 = c4.data
                'range-picker' === c4.app &&
                  (true === c5.show
                    ? (Sx(true),
                      c0('range-picker'),
                      void 0 !== c5.submitUrl
                        ? c3(c5.submitUrl)
                        : c3('qpixel-interface:rangePickerValues'))
                    : false === c5.show && (Sx(false), c3('')))
              }),
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: Su.rangePickerOuterContainer,
                  children: Object(FG.jsxs)('div', {
                    className: Su.rangePickerInnerContainer,
                    children: [
                      Object(FG.jsx)('div', {
                        className: Su.rangePickerSliderWrapper,
                        children: Object(FG.jsxs)(SZ.a, {
                          sx: { height: '100%' },
                          spacing: 0.1,
                          direction: 'row',
                          children: [
                            Object(FG.jsx)(SK.a, {
                              color: 'primary',
                              size: 'small',
                              orientation: 'vertical',
                            }),
                            Object(FG.jsx)(SK.a, {
                              color: 'primary',
                              size: 'small',
                              orientation: 'vertical',
                            }),
                            Object(FG.jsx)(SK.a, {
                              color: 'primary',
                              size: 'small',
                              orientation: 'vertical',
                            }),
                          ],
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        className: Su.rangePickerButtonWrapper,
                        children: Object(FG.jsx)('div', {
                          children: Object(FG.jsx)(S0.a, {
                            size: 'small',
                            color: 'success',
                            variant: 'contained',
                            children: 'Submit',
                          }),
                        }),
                      }),
                    ],
                  }),
                }),
              })
            )
          },
          Sr = function () {
            var So = Object(FF.d)(Fa)
            return Object(FG.jsx)(Fv, {
              show: So,
              name: 'range-picker',
              center: true,
              children: Object(FG.jsx)(Sw, {}),
            })
          },
          SB = F2(16),
          Sh = Object(FX.a)({
            textBoxContainer: {
              padding: '16px',
              maxWidth: '720px',
              minWidth: '256px',
              pointerEvents: 'all',
              backgroundColor: 'rgb(34, 40, 49)',
            },
            textBoxInputWrapper: {
              maxWidth: '720px',
              minWidth: '256px',
            },
            textBoxButtonWrapper: {
              display: 'flex',
              padding: '0px 16px 16px',
              alignItems: 'center',
              justifyContent: 'center',
            },
          }),
          SO = F2(199),
          SP = F2(200),
          SN = F2(188),
          SJ = function (SU) {
            var Su = Sh(),
              SC = Object(FF.c)(Fc),
              SQ = Object(FI.a)(SC, 2),
              Sx = (SQ[0], SQ[1]),
              SA = Object(FF.c)(FS),
              Sq = Object(FI.a)(SA, 2),
              c0 = (Sq[0], Sq[1]),
              c1 = (Object(FF.d)(FS), Object(F4.useState)([])),
              c2 = Object(FI.a)(c1, 2),
              c3 = c2[0],
              c4 = c2[1],
              c5 = Object(F4.useState)(''),
              c6 = Object(FI.a)(c5, 2),
              c7 = c6[0],
              c8 = c6[1],
              c9 = Object(F4.useState)(''),
              cF = Object(FI.a)(c9, 2),
              cS = cF[0],
              cc = cF[1]
            Fl('uiMessage', function (ck) {
              var cZ = ck.data
              'textbox' === ck.app &&
                (true === cZ.show
                  ? (Sx(true),
                    c0('textbox'),
                    c4(cZ.items),
                    c8(cZ.callbackUrl),
                    cc(cZ.key))
                  : false === cZ.show && (Sx(false), c4([]), c8(''), cc('')))
            })
            var ca = function (ck, cZ) {
              return function (cw) {
                c4(
                  c3.map(function (ch) {
                    return ch.name === ck
                      ? Object(SB.a)(
                          Object(SB.a)({}, ch),
                          {},
                          { value: cZ ? cw.target.checked : cw.target.value }
                        )
                      : ch
                  })
                )
              }
            }
            return (
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsxs)('div', {
                  className: Su.textBoxContainer,
                  children: [
                    Object(FG.jsx)('div', {
                      className: Su.textBoxInputWrapper,
                      children:
                        c3 && c3.length > 0
                          ? c3.map(function (ck, cZ) {
                              return Object(FG.jsx)(
                                'div',
                                {
                                  style: { marginBottom: '16px' },
                                  children: Object(FG.jsx)('div', {
                                    className: 'input-wrapper',
                                    children: Object(FG.jsx)(FQ.a, {
                                      fullWidth: true,
                                      sx: { width: '100%' },
                                      children:
                                        ck['_type'] && 'select' === ck['_type']
                                          ? Object(FG.jsx)(FG.Fragment, {
                                              children: Object(FG.jsx)(Fx.a, {
                                                id: 'outlined-select-currency',
                                                variant: 'standard',
                                                select: true,
                                                label: ck.label,
                                                onChange: ca(ck.name, false),
                                                sx: {
                                                  '& .MuiInput-root': {
                                                    color: 'white !important',
                                                  },
                                                  '& label.Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                      color:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:after': {
                                                    borderColor:
                                                      'white !important',
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .Mui-focused:after': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInputAdornment-root': {
                                                    color: 'darkgray !important',
                                                  },
                                                },
                                                children:
                                                  ck.options &&
                                                  ck.options.length > 0
                                                    ? ck.options.map(function (
                                                        cw,
                                                        cr
                                                      ) {
                                                        return Object(FG.jsx)(
                                                          Fq.a,
                                                          {
                                                            value: cw.id,
                                                            children: cw.name,
                                                          },
                                                          cw.id
                                                        )
                                                      })
                                                    : Object(FG.jsx)(
                                                        FG.Fragment,
                                                        {}
                                                      ),
                                              }),
                                            })
                                          : ck['_type'] &&
                                            'checkbox' === ck['_type']
                                          ? Object(FG.jsx)(FG.Fragment, {
                                              children: Object(FG.jsx)(SO.a, {
                                                children: Object(FG.jsx)(SP.a, {
                                                  style: { color: '#fff' },
                                                  control: Object(FG.jsx)(SN.a, {
                                                    color: 'warning',
                                                    onChange: ca(ck.name, true),
                                                  }),
                                                  label: ck.label,
                                                }),
                                              }),
                                            })
                                          : ck['_type'] &&
                                            'password' === ck['_type']
                                          ? Object(FG.jsx)(FG.Fragment, {
                                              children: Object(FG.jsx)(Fx.a, {
                                                sx: {
                                                  '& .MuiInput-root': {
                                                    color: 'white !important',
                                                  },
                                                  '& label.Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                      color:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:after': {
                                                    borderColor:
                                                      'white !important',
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .Mui-focused:after': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInputAdornment-root': {
                                                    color: 'darkgray !important',
                                                  },
                                                },
                                                id: 'input-with-icon-textfield',
                                                label: ck.label,
                                                type: 'password',
                                                variant: 'standard',
                                                onChange: ca(ck.name, false),
                                                InputProps: {
                                                  startAdornment: Object(FG.jsx)(
                                                    FA.a,
                                                    {
                                                      position: 'start',
                                                      children: Object(FG.jsx)(
                                                        'i',
                                                        {
                                                          className:
                                                            'fas fa-'.concat(
                                                              ck.icon
                                                            ),
                                                        }
                                                      ),
                                                    }
                                                  ),
                                                },
                                              }),
                                            })
                                          : Object(FG.jsx)(FG.Fragment, {
                                              children: Object(FG.jsx)(Fx.a, {
                                                sx: {
                                                  '& .MuiInput-root': {
                                                    color: 'white !important',
                                                  },
                                                  '& label.Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& Mui-focused': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInput-underline:hover:not(.Mui-disabled):before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:before':
                                                    {
                                                      borderColor:
                                                        'darkgray !important',
                                                      color:
                                                        'darkgray !important',
                                                    },
                                                  '& .MuiInput-underline:after': {
                                                    borderColor:
                                                      'white !important',
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .Mui-focused:after': {
                                                    color: 'darkgray !important',
                                                  },
                                                  '& .MuiInputAdornment-root': {
                                                    color: 'darkgray !important',
                                                  },
                                                },
                                                id: 'input-with-icon-textfield',
                                                label: ck.label,
                                                variant: 'standard',
                                                onChange: ca(ck.name, false),
                                                InputProps: {
                                                  startAdornment: Object(FG.jsx)(
                                                    FA.a,
                                                    {
                                                      position: 'start',
                                                      children: Object(FG.jsx)(
                                                        'i',
                                                        {
                                                          className:
                                                            'fas fa-'.concat(
                                                              ck.icon
                                                            ),
                                                        }
                                                      ),
                                                    }
                                                  ),
                                                },
                                              }),
                                            }),
                                    }),
                                  }),
                                },
                                ck.name
                              )
                            })
                          : Object(FG.jsx)(FG.Fragment, {}),
                    }),
                    Object(FG.jsx)('div', {
                      className: Su.textBoxButtonWrapper,
                      children: Object(FG.jsx)('div', {
                        children: Object(FG.jsx)(S0.a, {
                          onClick: function () {
                            var cZ = {}
                            for (var cK in c3) cZ[c3[cK].name] = c3[cK].value
                            Fd('qpixel-interface:closeApp', {}).then(function (cw) {
                              true === cw.meta.ok &&
                                Fd(''.concat(c7), {
                                  key: cS,
                                  values: cZ,
                                }).then(function (cB) {
                                  true === cB.meta.ok &&
                                    Fd('qpixel-interface:applicationClosed', {
                                      name: 'textbox',
                                      fromEscape: false,
                                    }).then(function (cO) {
                                      true === cO.meta.ok &&
                                        (Sx(false), c4([]), c8(''), cc(''))
                                    })
                                })
                            })
                          },
                          size: 'small',
                          color: 'success',
                          variant: 'contained',
                          children: 'Submit',
                        }),
                      }),
                    }),
                  ],
                }),
              })
            )
          },
          SM = function () {
            var SU = Object(FF.d)(Fc)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'textbox',
              center: true,
              children: Object(FG.jsx)(SJ, {}),
            })
          },
          Sb = F2(15),
          SL =
            (F2(117),
            Object(FX.a)({
              button: {
                border: 'none !important',
                minWidth: '17px !important',
                minHeight: '17px !important',
                marginRight: '1rem !important',
                borderRadius: '50px !important',
              },
              laptopOuterContainer: {
                width: '85%',
                border: '5px solid rgba(24, 24, 24, 0.6)',
                height: '85%',
                zIndex: 10,
                overflow: 'hidden',
                position: 'relative',
                borderRadius: '5px',
                backdropFilter: 'blur(32px)',
              },
              laptopInnerContainer: {
                width: '100%',
                height: '100%',
                display: 'flex',
                flexDirection: 'column',
                backgroundSize: 'cover',
                backgroundRepeat: 'no-repeat',
              },
              laptopIconWrapper: {
                flex: '1 1 auto',
                padding: '10px',
              },
              laptopNotificationWrapper: {
                top: '0px',
                right: '3px',
                width: '25%',
                height: '100%',
                display: 'flex',
                position: 'absolute',
                flexDirection: 'column-reverse',
                paddingBottom: '3.5rem',
              },
              laptopApp: {
                border: '1px solid transparent',
                height: '71px',
                display: 'flex',
                padding: '10px',
                maxWidth: '100px',
                alignItems: 'center',
                flexDirection: 'column',
                justifyContent: 'center',
              },
              laptopAppInnerWrapper: {
                width: '35px',
                height: '40px',
                backgroundColor: '#3c3e45',
                color: '#fff',
                borderRadius: '5px',
                textAlign: 'center',
                fontFamily: 'Arial, Helvetica, sans-serif',
              },
              laptopTaskbarAppInnerWrapper: {
                width: '24px',
                height: '24px',
                backgroundColor: '#3c3e45',
                color: '#fff',
                borderRadius: '5px',
                textAlign: 'center',
                fontFamily: 'Arial, Helvetica, sans-serif',
              },
              laptopNotificationModal: {
                right: '0px',
                width: '25%',
                height: '85%',
                margin: '1rem',
                padding: '20px',
                zIndex: 10,
                position: 'absolute',
                background: 'rgba(24, 24, 24, 0.6)',
                borderRadius: '10px',
                backdropFilter: 'blur(32px)',
              },
              laptopNotificationH1: {
                fontSize: '20px !important',
                textAlign: 'center',
                marginBottom: '1rem !important',
              },
              laptopNotificationModalWrapper: {
                overflow: 'scroll',
                maxHeight: '90%',
              },
              laptopSettingsModal: {
                right: '0px',
                width: '25%',
                height: '85%',
                margin: '1rem',
                padding: '20px',
                zIndex: 10,
                position: 'absolute',
                background: 'rgba(24, 24, 24, 0.6)',
                borderRadius: '10px',
                backdropFilter: 'blur(32px)',
              },
              laptopSettingsH1: {
                fontSize: '20px !important',
                textAlign: 'center',
                marginBottom: '1rem !important',
              },
              laptopSettingsModalWrapper: {
                overflow: 'scroll',
                maxHeight: '90%',
              },
              laptopSettingsInput: { marginBottom: '1rem' },
              laptopSettingsButtons: {
                display: 'flex',
                marginTop: '10px',
                justifyContent: 'space-evenly',
              },
              laptopSettingsButton: {
                color: 'rgb(255, 255, 255)',
                background: 'rgb(19, 85, 167)',
              },
              laptopPresetModal: {
                left: '0px',
                right: '0px',
                width: '50%',
                height: '85%',
                display: 'flex',
                padding: '20px',
                zIndex: 10,
                position: 'absolute',
                flexFlow: 'row wrap',
                background: 'rgba(24, 24, 24, 0.6)',
                marginTop: '1rem',
                marginLeft: 'auto',
                marginRight: 'auto',
                borderRadius: '10px',
                backdropFilter: 'blur(32px)',
                justifyContent: 'center',
              },
              laptopPresetH1: {
                height: '20px !important',
                fontSize: '20px !important',
                textAlign: 'center',
              },
              laptopPresetGrid: {
                height: '100%',
                overflow: 'scroll',
                paddingTop: '1rem',
              },
              laptopTaskbar: {
                left: '0px',
                color: 'rgb(255, 255, 255)',
                width: '100%',
                bottom: '0px',
                height: '40px',
                display: 'flex',
                zIndex: 10,
                position: 'absolute',
                background: 'rgba(24, 24, 24, 0.6)',
                paddingRight: '0.6rem',
                flexDirection: 'row',
                backdropFilter: 'blur(32px)',
              },
              laptopTaskbarApps: {
                flex: '1 1 auto',
                height: '100%',
                display: 'flex',
              },
              laptopTaskbarIcon: { height: '24px' },
              laptopTaskbarTime: {
                display: 'flex',
                fontSize: '11px',
                flexBasis: '63px',
                alignItems: 'center',
                flexDirection: 'column',
                justifyContent: 'center',
              },
              laptopTaskbarNotificationsInner: {
                width: '100%',
                border: 'none',
                height: '100%',
                background:
                  'url(https://i.imgur.com/wADOR0k.png) center center / 16px no-repeat, rgba(255, 255, 255, 0)',
                transition: 'background 0.1s ease 0s',
              },
              gridWrapper: {
                width: '100%',
                border: '2px solid rgba(0, 250, 187, 0.5)',
                height: '100%',
                transition: 'all 150ms ease-in 0s',
                borderRadius: '5px',
              },
              fixWidth: { width: '40px' },
              fixPadding: { padding: '9px' },
            })),
          SH = function () {
            var SU = Object(F4.useState)([]),
              So = Object(FI.a)(SU, 2),
              Su = So[0],
              SC = So[1]
            return {
              notifications: Su,
              addNotification: function (SQ) {
                return SC(function (Sx) {
                  return [].concat(Object(Sb.a)(Sx), [SQ])
                })
              },
              deleteNotification: function (SQ) {
                return SC(function (SA) {
                  return SA.filter(function (c0) {
                    return c0.id !== SQ
                  })
                })
              },
            }
          },
          SY = F2(193),
          SE = F2(83),
          Sz = F2.n(SE),
          SG =
            (F2(119),
            function (SU) {
              var Su = SU.deleteNotification,
                SC = SU.notification,
                SQ = SC.id,
                Sx = SC.title,
                SA = SC.body,
                Sq = Object(F4.useState)(false),
                c0 = Object(FI.a)(Sq, 2),
                c1 = c0[0],
                c2 = c0[1]
              return (
                Object(F4.useEffect)(
                  function () {
                    var c4 = setTimeout(function () {
                      c2(true)
                      setTimeout(function () {
                        Su(SQ)
                      }, 300)
                    }, 1000)
                    return function () {
                      clearTimeout(c4)
                    }
                  },
                  [Su, SQ]
                ),
                Object(FG.jsx)('div', {
                  onClick: function () {
                    return (function (c4) {
                      c2(true)
                      setTimeout(function () {
                        Su(c4)
                      }, 300)
                    })(SQ)
                  },
                  className: c1
                    ? 'component-paper cursor-pointer slideoutnotify'
                    : 'component-paper cursor-pointer fade-in',
                  children: Object(FG.jsxs)('div', {
                    className: 'main-container',
                    children: [
                      Object(FG.jsx)('div', {
                        className: 'image',
                        children: Object(FG.jsx)('div', {
                          style: {
                            width: '45px',
                            height: '40px',
                            backgroundColor: '#3c3e45',
                            color: '#fff',
                            borderRadius: '5px',
                            textAlign: 'center',
                            fontFamily: 'Arial, Helvetica, sans-serif',
                          },
                          children: Object(FG.jsx)('div', {
                            style: {
                              display: 'flex',
                              justifyContent: 'center',
                              alignItems: 'center',
                              height: '100%',
                            },
                            children: Object(FG.jsx)('p', { children: 'B' }),
                          }),
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        className: 'details',
                        children: Object(FG.jsxs)('div', {
                          className: 'description',
                          children: [
                            Object(FG.jsx)('div', {
                              className: 'flex-row',
                              children: Object(FG.jsx)(Ff.a, {
                                style: {
                                  color: '#fff',
                                  wordBreak: 'break-word',
                                },
                                variant: 'body1',
                                gutterBottom: true,
                                children: Sx,
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'flex-row',
                              children: Object(FG.jsx)(Ff.a, {
                                style: {
                                  color: '#fff',
                                  wordBreak: 'break-word',
                                },
                                variant: 'body2',
                                gutterBottom: true,
                                children: SA,
                              }),
                            }),
                          ],
                        }),
                      }),
                    ],
                  }),
                })
              )
            }),
          Sv = Object(FX.a)({
            root: {
              top: '0px',
              left: '0px',
              width: '100vw',
              height: '100vh',
              position: 'absolute',
              maxWidth: '100vw',
              minWidth: '100vw',
              maxHeight: '100vh',
              minHeight: '100vh',
              pointerEvents: 'none',
              border: '0px',
              margin: '0px',
              outline: '0px',
              padding: '0px',
              overflow: 'hidden',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              '& .MuiInput-root': {
                color: 'white',
                fontSize: '1.3vmin',
              },
              '& .MuiInput-underline:hover:not(.Mui-disabled):before': {
                borderColor: 'darkgray',
              },
              '& .MuiInput-underline:before': {
                borderColor: 'darkgray',
                color: 'blue',
              },
              '& .MuiInput-underline:after': {
                borderColor: 'white',
                color: 'blue',
              },
              '& .MuiInputLabel-animated': {
                color: 'darkgray',
                fontSize: '1.5vmin',
              },
              '& .MuiInputAdornment-root': { color: 'darkgray' },
            },
            button: {
              border: 'none !important',
              minWidth: '17px !important',
              minHeight: '17px !important',
              marginRight: '1rem !important',
              borderRadius: '50px !important',
            },
            boostingContainer: {
              display: 'flex',
              flexDirection: 'column',
              width: '68vw',
              height: '75%',
              position: 'absolute',
              background: '#2f303b',
              boxShadow:
                'rgb(255 255 255 / 40%) 0px 1px 0px inset, rgb(0 0 0 / 60%) 0px 0px 60px',
            },
            boostingHeader: {
              backgroundColor: '#3c3d4a',
              width: '100%',
              height: '3vh',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
            },
            boostingBar: {
              position: 'absolute',
              borderRadius: '15px',
              width: '90%',
              height: '0.6vh',
              backgroundColor: '#3c3d4a',
            },
            boostingBtn: {
              color: 'rgb(189, 190, 201)',
              backgroundColor: '#2f303b',
              fontSize: '12px',
              padding: '1vh',
              fontWeight: 'normal',
              textTransform: 'none',
              borderRadius: '2px',
              '&:hover': {
                backgroundColor: '#61a49d',
                color: '#fff',
              },
            },
            vehiclesBar: {
              color: '#fff',
              fontFamily: 'Arial, Helvetica, sans-serif',
              fontSize: '14px',
              maxHeight: '47vh',
              overflowY: 'auto',
              overflowX: 'hidden',
              width: '95%',
              display: 'flex',
              marginTop: '2vh',
              flexWrap: 'wrap',
              gap: '2vmin',
            },
            vehicleBoosting: {
              textAlign: 'center',
              backgroundColor: '#3c3d4a',
              height: '38.7vh',
              width: '23%',
              borderRadius: '10px',
              display: 'flex',
              flexDirection: 'column',
              overflow: 'hidden',
            },
            boostingVehicle: {
              backgroundColor: '#3c3d4a',
              width: '12vw',
              height: 'fit-content',
              maxHeight: '25vw',
              borderRadius: '10px',
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              paddingTop: '1vw',
              paddingBottom: '1vw',
            },
            boostingCircle: {
              height: '5vh',
              width: '5vh',
              borderRadius: '55px',
              bacgkroundColor: '#2f303b',
              border: '3px solid #a9d4da',
              fontSize: '17px',
              fontWeight: 'bold',
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
            },
            vehicleCircle: {
              height: '5vh',
              position: 'relative',
              top: '10%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              width: '5vh',
              borderRadius: '55px',
              bacgkroundColor: '#2f303b',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
              border: '3px solid #a9d4da',
              display: 'flex',
              fontWeight: 'bold',
              fontSize: '17px',
            },
            vehicleAlias: {
              position: 'relative',
              top: '12%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              width: '100%',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
              display: 'flex',
            },
            vehicleType: {
              position: 'relative',
              top: '4%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              width: '100%',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
              display: 'flex',
            },
            vehiclePrice: {
              position: 'relative',
              top: '8%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              width: '100%',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
              display: 'flex',
            },
            vehicleExpiry: {
              position: 'relative',
              top: '-2.5%',
              left: '50%',
              transform: 'translate(-50%, -50%)',
              width: '100%',
              justifyContent: 'center',
              alignItems: 'center',
              textAlign: 'center',
              display: 'flex',
            },
            progBar: {
              position: 'relative',
              width: '25%',
              borderRadius: '15px',
              background:
                'linear-gradient(90deg, rgba(190,113,166,1) 0%, rgba(255,255,255,1) 50%, rgba(45,204,207,1) 100%)',
              height: '100%',
              maxWidth: '90%',
            },
          }),
          SI = F2(92),
          Sf = F2.n(SI),
          Sm = F2(190),
          Sl = function (SU) {
            var Su = Sv(),
              SC = Object(FF.c)(FY),
              SQ = Object(FI.a)(SC, 2),
              Sx = SQ[0],
              SA = (SQ[1], Object(FF.c)(FE)),
              Sq = Object(FI.a)(SA, 2),
              c0 = Sq[0],
              c1 = (Sq[1], Object(FF.c)(Fz)),
              c2 = Object(FI.a)(c1, 2),
              c3 = c2[0]
            return (
              c2[1],
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)(Sf.a, {
                  handle: '#boosting-header',
                  bounds: 'parent',
                  defaultPosition: {
                    x: 35,
                    y: 65,
                  },
                  position: null,
                  children: Object(FG.jsxs)('div', {
                    className: Su.boostingContainer,
                    style: { display: SU.show && !Sx ? '' : 'none' },
                    children: [
                      Object(FG.jsxs)('div', {
                        id: 'boosting-header',
                        className: Su.boostingHeader,
                        children: [
                          Object(FG.jsx)('div', {
                            style: { display: 'flex' },
                            children: Object(FG.jsx)('p', {
                              style: {
                                float: 'left',
                                fontFamily: 'Arial, Helvetica, sans-serif',
                                fontSize: '12px',
                                marginLeft: '1rem',
                                color: 'white',
                                fontWeight: 'bold',
                              },
                              children: 'Boosting Contracts',
                            }),
                          }),
                          Object(FG.jsxs)('div', {
                            children: [
                              Object(FG.jsx)(S0.a, {
                                onClick: function () {
                                  return SU.minimize('boosting')
                                },
                                className: Su.button,
                                color: 'warning',
                                size: 'small',
                                variant: 'contained',
                              }),
                              Object(FG.jsx)(S0.a, {
                                onClick: function () {
                                  return SU.close('boosting')
                                },
                                className: Su.button,
                                color: 'error',
                                size: 'small',
                                variant: 'contained',
                              }),
                            ],
                          }),
                        ],
                      }),
                      Object(FG.jsxs)('div', {
                        className: 'boosting-topbuttons',
                        style: {
                          display: 'flex',
                          alignItems: 'center',
                          justifyContent: 'space-between',
                          width: '100%',
                          paddingTop: '2.5vw',
                        },
                        children: [
                          Object(FG.jsx)('div', {
                            style: { marginLeft: '2.5rem' },
                            children: Object(FG.jsx)(S0.a, {
                              style: {
                                color: '#fff',
                                textTransform: 'none',
                                fontWeight: 'normal',
                              },
                              color: 'info',
                              size: 'medium',
                              variant: 'contained',
                              children: 'My Contracts',
                            }),
                          }),
                          Object(FG.jsx)('div', {
                            style: { marginRight: '2.5rem' },
                            children: Object(FG.jsx)(Sm.a, {
                              style: c3
                                ? {}
                                : {
                                    color: '#fff',
                                    textTransform: 'none',
                                    fontWeight: 'normal',
                                  },
                              onClick: function () {
                                return SU.toggleQueue()
                              },
                              loading: c3,
                              color: 'info',
                              size: 'medium',
                              variant: 'contained',
                              disabled: c3,
                              children: c0 ? 'Leave Queue' : 'Join Queue',
                            }),
                          }),
                        ],
                      }),
                      Object(FG.jsx)('div', {
                        className: 'boosting-topbuttons',
                        style: {
                          display: 'flex',
                          alignItems: 'center',
                          justifyContent: 'space-evenly',
                          width: '100%',
                          paddingTop: '1vw',
                        },
                        children: Object(FG.jsxs)('div', {
                          className: Su.boostingBar,
                          children: [
                            Object(FG.jsx)('p', {
                              style: {
                                color: '#fff',
                                position: 'absolute',
                                left: '-1.7%',
                                top: '-0.5vh',
                                fontSize: '1.4vmin',
                                fontFamily: 'Arial, Helvetica, sans-serif',
                              },
                              children: 'C',
                            }),
                            Object(FG.jsx)('p', {
                              style: {
                                color: '#fff',
                                position: 'absolute',
                                right: '-1.7%',
                                top: '-0.5vh',
                                fontSize: '1.4vmin',
                                fontFamily: 'Arial, Helvetica, sans-serif',
                              },
                              children: 'B',
                            }),
                            Object(FG.jsx)('div', { className: Su.progBar }),
                          ],
                        }),
                      }),
                      Object(FG.jsx)('div', {
                        className: 'boosting-topbuttons',
                        style: {
                          display: 'flex',
                          alignItems: 'center',
                          justifyContent: 'space-evenly',
                          width: '100%',
                        },
                        children: Object(FG.jsx)('div', {
                          className: Su.vehiclesBar,
                          children:
                            SU.contracts && SU.contracts.length > 0
                              ? SU.contracts.map(function (c4) {
                                  return Object(FG.jsxs)('div', {
                                    className: Su.boostingVehicle,
                                    children: [
                                      Object(FG.jsx)('div', {
                                        className: Su.boostingCircle,
                                        style: { marginBottom: '0.5vw' },
                                        children: Object(FG.jsx)('p', {
                                          children: c4.class,
                                        }),
                                      }),
                                      Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#bdbec9',
                                            fontFamily:
                                              'Arial, Helvetica, sans-serif',
                                          },
                                          children: 'NotCreative1',
                                        }),
                                      }),
                                      Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            fontFamily:
                                              'Arial, Helvetica, sans-serif',
                                            fontWeight: 'bold',
                                          },
                                          children: c4.car,
                                        }),
                                      }),
                                      Object(FG.jsx)('div', {
                                        children: Object(FG.jsxs)(Ff.a, {
                                          style: {
                                            color: '#bdbec9',
                                            fontFamily:
                                              'Arial, Helvetica, sans-serif',
                                          },
                                          children: [
                                            'Buy In: ',
                                            c4.buyin,
                                            ' GNE',
                                          ],
                                        }),
                                      }),
                                      Object(FG.jsx)('div', {
                                        children: Object(FG.jsxs)(Ff.a, {
                                          style: {
                                            color: '#bdbec9',
                                            fontFamily:
                                              'Arial, Helvetica, sans-serif',
                                          },
                                          children: [
                                            'Expires In: ',
                                            Object(FG.jsx)('span', {
                                              style: { color: 'green' },
                                              children: '6 hours',
                                            }),
                                          ],
                                        }),
                                      }),
                                      Object(FG.jsxs)(SZ.a, {
                                        direction: 'column',
                                        spacing: 1,
                                        sx: {
                                          paddingTop: '1vw',
                                          width: '10vw',
                                        },
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            color: 'secondary',
                                            size: 'medium',
                                            variant: 'contained',
                                            sx: {
                                              color: 'rgb(189, 190, 201)',
                                              backgroundColor: '#2f303b',
                                              fontSize: '15px',
                                              padding: '1vh',
                                              textTransform: 'none',
                                              fontWeight: 'normal',
                                              borderRadius: '2px',
                                              '&:hover': {
                                                backgroundColor: '#61a49d',
                                                color: '#fff',
                                              },
                                            },
                                            children: 'Start Contract',
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            color: 'secondary',
                                            size: 'medium',
                                            variant: 'contained',
                                            sx: {
                                              color: 'rgb(189, 190, 201)',
                                              backgroundColor: '#2f303b',
                                              fontSize: '15px',
                                              padding: '1vh',
                                              textTransform: 'none',
                                              fontWeight: 'normal',
                                              borderRadius: '2px',
                                              '&:hover': {
                                                backgroundColor: '#61a49d',
                                                color: '#fff',
                                              },
                                            },
                                            children: 'Transfer Contract',
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            color: 'secondary',
                                            size: 'medium',
                                            variant: 'contained',
                                            sx: {
                                              color: 'rgb(189, 190, 201)',
                                              backgroundColor: '#2f303b',
                                              fontSize: '15px',
                                              padding: '1vh',
                                              textTransform: 'none',
                                              fontWeight: 'normal',
                                              borderRadius: '2px',
                                              '&:hover': {
                                                backgroundColor: '#61a49d',
                                                color: '#fff',
                                              },
                                            },
                                            children: 'Decline Contract',
                                          }),
                                        ],
                                      }),
                                    ],
                                  })
                                })
                              : Object(FG.jsx)(FG.Fragment, {}),
                        }),
                      }),
                    ],
                  }),
                }),
              })
            )
          },
          Ss = Object(F8.a)({
            palette: {
              mode: 'dark',
              success: { main: 'rgb(19, 85, 167)' },
              warning: { main: '#f2a365' },
              error: { main: 'rgb(239, 87, 87)' },
              info: { main: '#454651' },
              secondary: { main: '#2f303b' },
            },
          }),
          SW = function () {
            var So = SL(),
              Su = Object(FF.c)(FM),
              SC = Object(FI.a)(Su, 2),
              SQ = (SC[0], SC[1]),
              Sx = Object(FF.c)(FS),
              SA = Object(FI.a)(Sx, 2),
              Sq = (SA[0], SA[1]),
              c0 = Object(F4.useState)(false),
              c1 = Object(FI.a)(c0, 2),
              c2 = c1[0],
              c3 = c1[1],
              c4 = Object(F4.useState)([]),
              c5 = Object(FI.a)(c4, 2),
              c6 = c5[0],
              c7 = c5[1],
              c8 = Object(F4.useState)(false),
              c9 = Object(FI.a)(c8, 2),
              cF = c9[0],
              cS = c9[1],
              cc = Object(F4.useState)(false),
              ca = Object(FI.a)(cc, 2),
              ck = ca[0],
              cZ = ca[1],
              cK = Object(F4.useState)(false),
              cw = Object(FI.a)(cK, 2),
              cr = cw[0],
              cB = cw[1],
              ch = Object(F4.useState)(false),
              cO = Object(FI.a)(ch, 2),
              cP = cO[0],
              cN = cO[1],
              cJ = Object(FF.c)(FY),
              cM = Object(FI.a)(cJ, 2),
              cb = cM[0],
              cL = cM[1],
              cH = Object(FF.c)(FE),
              cY = Object(FI.a)(cH, 2),
              cE = cY[0],
              cz = cY[1],
              cG = Object(FF.c)(Fz),
              cv = Object(FI.a)(cG, 2),
              cI = (cv[0], cv[1]),
              cf = SH(),
              cm = cf.addNotification,
              cl = cf.deleteNotification,
              cs = cf.notifications,
              cW = Object(F4.useState)(0),
              cR = Object(FI.a)(cW, 2),
              cd = cR[0],
              cj = cR[1],
              cT = Object(F4.useState)([]),
              ci = Object(FI.a)(cT, 2),
              cX = ci[0],
              cV = ci[1],
              cg = Object(F4.useState)('https://i.imgur.com/me8TVzX.png'),
              cD = Object(FI.a)(cg, 2),
              cp = cD[0],
              cn = cD[1]
            Fl('uiMessage', function (cu) {
              var cC = cu.data
              'laptop' === cu.app &&
                (true === cC.show
                  ? (SQ(true),
                    Sq('laptop'),
                    void 0 !== cC.background && cn(cC.background),
                    void 0 !== cC.hasDongle && c3(cC.hasDongle))
                  : false === cC.show && SQ(false))
            })
            Fl('sendNotify', function (cu) {
              cm({
                id: cd,
                title: cu.title,
                body: cu.body,
              })
              cj(cd + 1)
            })
            var cy = function (cu, cC) {
                var cx = (function (a0) {
                  for (
                    var a1 = '', a2 = '0123456789', a3 = a2.length, a4 = 0;
                    a4 < a0;
                    a4++
                  ) {
                    a1 += a2.charAt(Math.floor(Math.random() * a3))
                  }
                  return a1
                })(4)
                cm({
                  id: cd,
                  title: cu,
                  body: cC,
                })
                cj(cd + 1)
                var cA = {
                  id: cx,
                  title: cu,
                  body: cC,
                }
                cV([].concat(Object(Sb.a)(cX), [cA]))
              },
              ct = function (cu) {
                cn(cu)
              },
              cU = (function () {
                var cC = Object(Fs.a)(
                  FR.a.mark(function cQ(cx) {
                    var cA = {
                      pIIoz: 'boosting',
                      PsLWR: function (a0, a1) {
                        return a0(a1)
                      },
                      fHEXk: 'div',
                      bOoGB: '#fff',
                      eexVR: 'body1',
                      TBxKM: function (a0, a1) {
                        return a0 === a1
                      },
                      tfmMS: 'KgSvD',
                      frZgj: 'ULcqy',
                      DixoT: function (a0, a1) {
                        return a0 !== a1
                      },
                      QgdmZ: 'qjokT',
                      jiahm: 'XGTvn',
                      Ndrpo: 'PqEDI',
                      Oigyr: function (a0, a1, a2) {
                        return a0(a1, a2)
                      },
                      NmIgd: 'qpixel-interface:fetchContracts',
                      nChUi: 'Kanjo',
                      DfKlA: 'coquettec',
                      VpYeB: 'Yosemite Rancher',
                      eJOnE: 'corvettec7',
                      vtJZz: '250',
                      WwHhr: 'Mercedes AMG',
                      xDKte: 'amg',
                      ZabGU: 'Sultan RS',
                      qIsrR: 'sultanrs',
                      uJUlM: 'end',
                      AcRmV: function (a0, a1) {
                        return a0(a1)
                      },
                      AOQSu: function (a0, a1) {
                        return a0 === a1
                      },
                      JgmAG: function (a0, a1, a2) {
                        return a0(a1, a2)
                      },
                      hXLvy: 'clothing',
                    }
                    var cq
                    return FR.a.wrap(function (a0) {
                      var a1 = {
                        lFKrM: function (a2, a3) {
                          return a2(a3)
                        },
                        aJtNT: function (a2, a3) {
                          return a2(a3)
                        },
                        dTWzM: function (a2, a3) {
                          return cA.PsLWR(a2, a3)
                        },
                        GJUHi: cA.fHEXk,
                        gMpgl: cA.bOoGB,
                        xxxWh: 'break-word',
                        qWWrq: cA.eexVR,
                      }
                      if (cA.TBxKM(cA.tfmMS, cA.frZgj)) {
                        return F4.close(cA.pIIoz)
                      } else {
                        for (;;) {
                          switch ((a0.prev = a0.next)) {
                            case 0:
                              if (cA.DixoT(cA.pIIoz, cx)) {
                                if (cA.QgdmZ === 'vsWQz') {
                                  return cb(function (a4) {
                                    return [].concat(a1.lFKrM(c3, cF.a)(a4), [Fd])
                                  })
                                } else {
                                  a0.next = 15
                                  break
                                }
                              }
                              if (!cP || !cb) {
                                if (cA.jiahm !== cA.Ndrpo) {
                                  a0.next = 5
                                  break
                                } else {
                                  return a1.aJtNT(Fd, FE.jsx)(cN.Fragment, {
                                    children: a1.dTWzM(FG, c0.jsx)(a1.GJUHi, {
                                      className: cO.statusHudLine,
                                      children: a1.lFKrM(cw, cP.jsx)(cK.a, {
                                        style: {
                                          color: a1.gMpgl,
                                          wordBreak: a1.xxxWh,
                                        },
                                        variant: a1.qWWrq,
                                        gutterBottom: true,
                                        children: Fs,
                                      }),
                                    }),
                                  })
                                }
                              }
                              cL(false), (a0.next = 15)
                              break
                            case 5:
                              if (!window.invokeNative) {
                                a0.next = 12
                                break
                              }
                              return (a0.next = 8), cA.Oigyr(Fd, cA.NmIgd, {})
                            case 8:
                              ;(cq = a0.sent).meta.ok &&
                                (c7(cq.data), cA.PsLWR(cN, true)),
                                (a0.next = 15)
                              break
                            case 12:
                              cA.PsLWR(c7, [
                                {
                                  id: 1,
                                  car: cA.nChUi,
                                  model: 'kanjo',
                                  buyin: '50',
                                  class: 'A',
                                },
                                {
                                  id: 2,
                                  car: 'Coquette Classic',
                                  model: cA.DfKlA,
                                  buyin: '20',
                                  class: 'B',
                                },
                                {
                                  id: 3,
                                  car: cA.VpYeB,
                                  model: 'yosemiter',
                                  buyin: '10',
                                  class: 'C',
                                },
                                {
                                  id: 4,
                                  car: 'Corvette C7',
                                  model: cA.eJOnE,
                                  buyin: cA.vtJZz,
                                  class: 'S+',
                                },
                                {
                                  id: 5,
                                  car: cA.WwHhr,
                                  model: cA.xDKte,
                                  buyin: '250',
                                  class: 'S+',
                                },
                                {
                                  id: 6,
                                  car: cA.ZabGU,
                                  model: cA.qIsrR,
                                  buyin: '50',
                                  class: 'A',
                                },
                              ]),
                                cA.PsLWR(cN, true)
                            case 15:
                            case cA.uJUlM:
                              return a0.stop()
                          }
                        }
                      }
                    }, cQ)
                  })
                )
                return function (cx) {
                  return cC.apply(this, arguments)
                }
              })(),
              co = function (cu) {
                'boosting' === cu && cL(!cb)
              }
            return (
              FD(),
              Object(FG.jsxs)(F9.a, {
                theme: Ss,
                children: [
                  Object(FG.jsx)('div', { id: 'added-to-cart' }),
                  Object(FG.jsx)('div', {
                    className: So.laptopOuterContainer,
                    id: 'screen',
                    style: {
                      opacity: '1',
                      pointerEvents: 'all',
                    },
                    children: Object(FG.jsxs)('div', {
                      className: So.laptopInnerContainer,
                      style: { backgroundImage: 'url('.concat(cp, ')') },
                      children: [
                        Object(FG.jsx)(Sl, {
                          show: cP,
                          close: function (cu) {
                            'boosting' === cu && (cN(false), cL(false))
                          },
                          minimize: function (cu) {
                            return co(cu)
                          },
                          toggleQueue: function () {
                            cE
                              ? cz(false)
                              : (cI(true),
                                setTimeout(function () {
                                  cI(false)
                                  cz(true)
                                  cy('Boosting', 'Successfully joined queue!')
                                }, 500))
                          },
                          contracts: c6,
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.laptopIconWrapper,
                          children: [
                            Object(FG.jsxs)('div', {
                              className: So.laptopNotificationWrapper,
                              style: {
                                display: cs.length > 0 ? 'flex' : 'none',
                                flexDirection: 'column-reverse',
                              },
                              children: [
                                cs.map(function (cu) {
                                  return Object(FG.jsx)(
                                    SG,
                                    {
                                      deleteNotification: cl,
                                      notification: cu,
                                    },
                                    cu.id
                                  )
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'component-paper cursor-pointer',
                                  style: { display: 'none' },
                                  children: Object(FG.jsxs)('div', {
                                    className: 'main-container',
                                    children: [
                                      Object(FG.jsx)('div', {
                                        className: 'image',
                                        children: Object(FG.jsx)('div', {
                                          style: {
                                            width: '45px',
                                            height: '40px',
                                            backgroundColor: '#3c3e45',
                                            color: '#fff',
                                            borderRadius: '5px',
                                            textAlign: 'center',
                                            fontFamily:
                                              'Arial, Helvetica, sans-serif',
                                          },
                                          children: Object(FG.jsx)('div', {
                                            style: {
                                              display: 'flex',
                                              justifyContent: 'center',
                                              alignItems: 'center',
                                              height: '100%',
                                            },
                                            children: Object(FG.jsx)('p', {
                                              children: 'B',
                                            }),
                                          }),
                                        }),
                                      }),
                                      Object(FG.jsx)('div', {
                                        className: 'details',
                                        children: Object(FG.jsxs)('div', {
                                          className: 'description',
                                          children: [
                                            Object(FG.jsx)('div', {
                                              className: 'flex-row',
                                              children: Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body1',
                                                gutterBottom: true,
                                                children: 'Boosting',
                                              }),
                                            }),
                                            Object(FG.jsx)('div', {
                                              className: 'flex-row',
                                              children: Object(FG.jsx)(Ff.a, {
                                                style: {
                                                  color: '#fff',
                                                  wordBreak: 'break-word',
                                                },
                                                variant: 'body2',
                                                gutterBottom: true,
                                                children: 'YO',
                                              }),
                                            }),
                                          ],
                                        }),
                                      }),
                                    ],
                                  }),
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              className: So.laptopApp,
                              children: [
                                Object(FG.jsx)('img', {
                                  src: 'https://i.imgur.com/95p83mB.png',
                                  alt: 'file-icon',
                                  className: So.fixWidth,
                                }),
                                Object(FG.jsx)(Ff.a, {
                                  style: {
                                    color: '#fff',
                                    wordBreak: 'break-word',
                                    fontSize: '12px',
                                    fontWeight: 'normal',
                                  },
                                  variant: 'h1',
                                  gutterBottom: true,
                                  children: 'Recycle Bin',
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              className: So.laptopApp,
                              children: [
                                Object(FG.jsx)('img', {
                                  src: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAdH0lEQVR42u1dW5Mkx1XO7NkdsdqZ3X3wEkazs9Y72CEjRxiMwZIFgfkX1iNgLMtg69HYQRDh4EXvBMT+BX6BFTzxBkHwbikU3CwLjXe1t5npPlTX9Giqq/JyzsnMunR9X0Rtz1Z11yUrz3e+c/JmDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKbBTvOnz//wHevQ//25Wy2etB7GdJ7LWvX+9w1r/418dsp0Ss/W+5n7a/GZR/UWb476T2vrDdt6C3X4S2zre2mGdb89eHWt+c0Gd87uvZR3309zdPoe9ePbGvdnGCa3rmtb9vI03eFGatvkctn1PJ9X2oPr/jxfH75zAjPVYTPGm9/YPze17XzXXqs8oqPHZ3Lo7hGj+1jarbvx35LtqYy+17v2z/8SuQ62j64v5fkPu/5MRlEl1btKWX+j/wWN3qu171faz1Yc/vQMznhkB1NVusWduHX3VvHDwku4EWQmBWt6M4hWarj4YFb51nzZyDeoeISt7LuIYKXnuPPA9Yho9cQiCXtkQATA3AjC0rP5Zmpt3f7PeUv152o9dRh/31E0uYJGAaZOAYZIABUiAAp7dZ8zU+v+2CpCRQOBeWMqC3oIZz5EALkmAzswLhy9VIcHv1qqgWf18m4wMUpgh7qnjIYHDNgQksPKfgCm/uQUmUBhbX1slhA2fhQPALAngsgKtTs3e/k1z5/4f1PmBmPmLCKFDBlyDceUHAkRA5FED6SRAnXwANybfqABFjK8PBTQqAJgZATgq1uqszsLfPvqaeeHgSBD8k5wMRF7TlR9gpQfihrNKIQEuiVmmauiqAFKrC1IeA2aoAJoV+7QOCW7e/a1q+6IqAcAig054oFEDYQagSN7ATwIc0yFBPqChBLiqwZMt4KsAGD0IgGu6Zx+vmwQaO85rIli3Dtw++r3q0H7D8DKTgThPQILcQMSAnOGAiZ7TsEjA1wrBjfEFCUGO0RMIAQQQIoC9262dy8ozPq/zArePv7HJC5gGEVgmKXTJID00ILZs9zcVUsBewgqje8Qy79kKmgZdrQKcG5I0CwIggCBWNQmse/vdOvqa2a/7C7jSfxIyiFTTTrKQE1+H1EDomj4SiGXkyfBMkxJIgHs+qAAQQMlwoHafzzZ5gS+Zm5/7UosD2oTAIQOmIhCHBOGcgBGHAwISEHUSskzy4PQNgAoAAehMnR8O1GLgtNqemf3DI3Pr3tcrjrjeVviOWD5GBhEiYCcK231+SRcOkE9hpDQPEvNavFBA5uE1KgVACOCtK+cVCTwxe9cPzO37r5u9/VuhkN8TJiiJgF1ZQ9411HOwZZjEJQGX0iABCcgMkN8sCBUAAihCAquaBNaD1W7d+/1aEYSz3saTMwh7ctJUbGdewG/oq9glyEUsbhWQz6SgAkAAUwgfVk+rj+fmxbuv1JvD/bsVesdIhX6OHRIYFgnwlECcdLYfj9s/QJcQ5DcLQgWAAEpi9bxWA/sHR+bw3jeu8gJ+y3eoAh8RBMICVksBR22YQIchHwmkJAUlrQJhFcBvFoSnBwEUFQNnFQk8NnvXb5pb998we/u3g9JeRwQxNWCiIUUwZqdAt+HOtTTZ/oyhACe3wP0OVAAIIA8JLI1ZflrnBdZKYP/wmG+Q1D5mvRVdRwIMA8lGAm0VwDFSYd8AVbMgAALoIy+wfFw3Fb5498v1RlzPTHzpntZKwJ3Vh3M+LgkIegmyCEyQEEQuAATQf17gaa0G9g/vmcOj16rSuc4nAsMJC8i4Z+sx/Fg64DXzJAVjoUBsohK+K9epABg9CKB0XmD50OztH5hbx39U5wU60/OFKmTHmG3E00rzAjYYDvBJQBAKULmEIFQACEAn2UvnBc5/dZEXOHq9UgT3uzYUu69ok1+glSA7CZg0EjCSqcSY74qgAkAAo88LPKzDghfv/na1vcqsghSIEpgJwujQ2wQSUOUDjOENlrLpoYxGBQAggHJ5gccXeYGDY3N47/Wt/gJ+/+5LFBI/L2DiCkKeE9DmAygg/V33xDBe0uQCCIQAAhjg3a+eVSHBST2O4PD4jzv9BcJEwCGBQF5A5cFDA4Ra9kzSUID7fkrkAgAQwGCkc16RwCfGWjIHR9+sFMEXujzBDgn8rQSynEBkpl+2fUVCChEb+6YQ881IxFABIAkQwGikR6UE1nmBG3dfrTeeaHeFBBTMC8hIINBleBXpJCQaDUTC5j5iPlvEwAlGDwIYE5aP6gTh/sH9Sg284RhHwA0JcpMANymY0jRoAlOLu1QAR4ZQggoAQABDYN1p6Pz/zN71Q3N4/C2zt39HoAbahkeZwgHJfIC+TkzW8NYqytgsSMKpz5AMBAGMJy/wcWUyVCsBV17AGMYioF4pn4sEKIOdSLsJc1XAtgLCGAEQwNSkQK0E1mMJbtz9Sr3x627/JJBXBWgtlLoEgB59IACJNxpfXuBhnSC8fnBsbgbyAsGuupSLBALllpQPoMad5FQBrjuKyXwQBhTA2Ehp9cSYs1/W/QUOjv/EOb8APy/AIIGgcdhiRhLuG6BpIeD0C4DdgwAmwQNnFQl8VFXnVaUE/rBSBJK8QB8kkN4qQGIlYvWKBSoABDB+V9DqKruefLRSAusuxDc+92q95SQB2X1xScD9KPFei8RvFkxWAQS7BwFMhZc2nYbOPzHXbx6bmy99k9lfgJMTyJEPUBCbSOpz+zLo51AGG4AAxqVEXHWxzgv84iIvcO9b3ryAjAQkHYUiKoByhAKChCBHKRCjnR92DwIYb0jS+nudFzj933ocwY1f/x3D6+4SG2knaRkIj+kntWWRvFkwWa3A8kEAY4z9o/XyIi+wuPaiIDHoOmATzMGqHu1qxGDkB2QzGO/2tdA9GASwQ0rg3JjlU3PtxkvCVYTDnpOXlQ+M6Y+1CmRVAcwWATQJggDG/eYl3r/5s+dmcZkH8MTNqygJRJoHtfkAtiQIqYAc7yemAmD5UACjJCCK/706rcOAbdksyAlwWwZMjAQkysMImgU55cKZLwAqAAQwBSLIUQHZJBDy8CQcNq8JBbgqwPLLj3kMKgAEMDLvT3LvTxcKoHucqwSEC31GVYBwSG9QfShUACtfAEMHAexUKmLl+a2QBLwz+ZBAS1iGqInML5icC4CBgwDm4v07rQKJJBAy5JRnIU74kTqxafMcxFIKCANAABPy/sST6sTPCRivZ450EhK3CoSuJQkZbNxgKUthAyCAsXn/uAG6SaA5T2AsAxAmAcMiAb+E71cF8IyfQA4ggHF6f640JQEJcAwgx8OUUgGuFgFO9+BYMhBGDwIYnfePeUv/ecg7/bXlU0iWUKCUCsACICCA2Xp/XtzrJQFyhwJqEhA9XDvtJlEBpFABoTK1BtOHgwCG9f7SBSooZKTkJAHyymjK+DiCHoIUaIonhVKRsyvEAghgzDJA6P2jZyYHP/iVQN5QgPMMylxAdGaj1GQgAALozftLnZnUaHytCWkkwLtpbbfkSM8+1gjAGKEiGQgCmKr3J5lKIB+J5EpfqJYHlxMase8fvQZBALvs/YPkQOFwoFQoIFEB6haBJvfFOgZxRgla0AEIYMTenyTeP04CTkJJIoHW16i0CqDEco6VFWgABDAm759S+cndMuCGVRtXigqIx+82/KVgkyB3rgIABNCH8Rf0/iTgDGI2QeoTgpRWVgwVIMrhU6y8EQaAAPpW/DnDBcX6Fu58QIxYmHPue+frtyY+glFaXpSn0DFPAAigP4tP9f5+deH35cz58DmdhJJ7CApifOJMNqJJBmZjZgAEwKjkicN9ZaQiCAW0NMZJCLJUgPFOZZBfUEVIAgABDBf7G6X3l+QDiBkKWKPrKUeZy84dp7u/b+XljDAABDCO2D/V+xtmKMBVKByDS1UB3ev7Oc5PpvzntIllC4AAisX+Kd5fSAIUuC6F74PEz5ipDFm9DCnx3SAMAAH0Fvtzu/xSGYPz9g+gaCiQLxfALKvOMmYkIApFnwCEASCA8rE/x5Y1Y+XdKoDYJGCEucTUpbgFvyOT/VoIA0AAPUUCqcN9Nd6fMlRrZkJQpQK4uQhJboIr4xEGgABKe/9eh/vmywf4WwXk+Q5tywGJd7RnRU4MAwAQQAEZUNb7E2UjAZX4V6sAy3xek2mhUCh9EMAueX+ihgekTE/Slwrw5EsoNm+gDRMjScMA5AFAAEN5f9VwX7cnJUbWXh8KMBRFbDgwSchD6r1DA4QQBoAAxur9U8KAS2MjajlTkocCnHsj3b3HWw6Eg4TYi4HGbhfeHgRQLKDs0/tf7aeM3o0YhOY/bPOXrGQORLKZ3iMAAsjiIQt5f8c+fyiQISFIintlzQxs+b9BGAACmIf3902bFTKORBLIoQIcLQL8FYW4nMocrwCnDwIYh/cvPNyXFVtzHoVjONbkHwtAyq+FyDClNQAAAbAqTh/DfbkGSi0VEK/0nFAgjwrgdAyKJQN5A4T4YQAAAigZCfTi/ZvLfzvChEyhQCdESVUBlFC8nT4BWiAPAALoJfYv7f1jzYThUICrAkhlqNTWEpEz2AzvI7SQqCt0gxoAAWSN/blSM5f378ptXopCqgLiw4Upi6ftKwzImcMAZkIAqcN9W79Xe39XFSdFKBC6X2ISXigfEXg+4pcjwgAQwIgjgSGG+25/zxKDBCK959jNgoabC3BLexIbZco6f2gOBAGU8P69D/hJl7SkiXedHY7YV0wwPoqXH5eqKHWOAAAEII7j+/L+Db/pVAHbhuzuIJQyToDR7ZakZSMIA1hLiEneEwACmKD3pyAJJC6VzeoXQMHshDze7jMMQB4ABCC3ZNP/gB+BTA98jzTNgkIVIBrIkxoGcH7PUikACCBakXISSN7Yn6UCmAnBVBXgf06rIFd92cqmMgcLgAByxv59eP/tYDhCAm17zqwCsrtXRhjAninIRBKJCANAALlj/168v2QGIHKEAhIVYMIqIBYG5FBWpP09vDsIIMX4i3j/3LJXpgJi16SUInPmCbr3QoowQHbHxFcU4AgQQBkHIuzyK273p04OnryiOFEFBK6sm+I797uxyheJPAAIoBfvL5X+kWtTuNrbLdVhxcqDOPcnsXKKlZuCQLOxDPIAIACV9+9rwA/3LmIqoGXMiSpAXJBkBGFAIJoQEwimAgMBJFn8CCb7cHh/4zR08hhXfhXgTgZSRiqxgldGmsPIA4AAJBViiOG+uhpNHa/Z8oKZcgHZ8iKUUpYaKQ+LBwGIY39OfFtqwE840+3r6W8TjYGlAsSklhYGhAlES7gIEaAANJ5LVeko/RYE/s+WVgHFwgBPZyZtocHpgwDKeH/Ts/fnNF0xVw2kTNYh6tBDeQ2UchIGMG8FMJrJPhj3JRjnv60CXCe2+cIA1jh8SRiQaRgvgRpAADkl4iDeX042rDMkTpJJWecaiDybOg+QQ8IAM8gBKL1/kQE/JtgiITmjJf3SYFSqeHl3ni8PAIAAZLG0wPtzK15y7H91HmLeA08FSCYQjeQfyDLK3ApUGHc+ssj4B0wHDgJI9v69DfeN5yTsSnbFrgogtgqI3iZ7tqDYvebvtQOTBwFEvEJuPdtD7G+5ZiZVAcwnIspfbKovU8IFQA1QABJj7sX7E8v7X/7ti+1tQAWE748yGBPpv0+MPABnbRYABNCf9+eMF6BEg/GTkjSNRy7DIspSpFd/c+Yi0DYHahUBGAIEUMT7R7wnCSsvyUiCqwIolgsw4WSgPAyg/t5XZH4A2XoBwO4TwGiG+2q9v08FSO6HmAbNXUVQ8FyU0+AlioGgBEAAMWN0efq+h/sG7stRh0MqIHyXtmBxcpoDlXkAkysPcPGD5c9/9BpMebYhQI7YX+P9U2s0TwW49mcLAwTlFVtFOF+XJJWHBwHMjwA4sjin908ZY0DRus1VAd3zcpKBNIJ30zpOsjxA5NhblQq4A3OGAlAabaKhiLy/p2NQIC4mR6Rug2uC6CbY6DUPICzgSIvt2vh/tvz5X4ME5kEAYx/uG7s2eb8qaYXPO0V3xjwA33Pz1Vz82CsXJAAlMCMFMNLhvqIOR3EVEF8ZMCEMEDACOw9A8renfw3UIYHVByCBmYUAjEUpRzfc1zoPW+J3oLVUoiSpzDvJlouIKoMNCSAc2HECIKXh9Rz7Z3GL3H53vNYAmaqxCeohh5qShhP2kgT+dfXBj1+Bie+8Agj1+BtB7B/0tDZyG8QMeDxzBnruKW/+LqF5j5RGzrvkyxdKACSwgwSgmfhyLLF//DvxMMCXN9AWp34xk21jlXcIkrwHxaPeuSCBn4AEdjsHkEHuF4v9/eogqAIE5uPVCcq+85SwCCfleEusUIDdKQsksLsEMM7JPtj5gcBu32Sg7DAgcs1ssw6T9GDx1UahBKAAxuz927wlm2rbcsOAwXoFUqbvUqZrdEjgZZj9ThCAdKLPHof7cpYns/HfSObnDbcG5MgD5BirL+3AFRoOZTXXqEjA/ghmv0sKgDQeu9RwYZn3jw3mk/QJ6Me7h67CzTfYPIIk2oLgfRffhtlPngCkcWmZ1X3V3j+o9lNX3HH1CpTnAShprQHt/fcxzTnmE9ixHEDOxF9KDlvo/T8LBTxChhUGaJsDNZ2StO3ySqOmEu8L2C0CoIQvZZnsQ6oQKOBfrdewiX3WgnmAYVcYgaMHAWi9cQbvTxmuEbFib58AktZqGsiqaOBzwuLnRQDk8H1DDvih2LEAYdiUqu2aJ5ifBzDKPAC7R6DGUCmHwVuQwm4rACr8/VTvH5/YkjuA2RXf296dYM4BU8yWAHI9aXJTIDB5AiCvTY3I+xuG998+ToF191LzAOoJRNlTdQ1ggr3OSgQCmID3H+mAH8592PDXUlfVpRxNo5TzfcUnP4UpgwDyEkEvk30IvL8gDOA2tdmgt4bpADtFAIbf5XdU3p8xg5HDsMlr7DFnm6iM2At50JAVAJgXAQhf/Ai9f+cHNmDautbF5JLktQSkvp9CMw6BG3ZcAVChGtCn9zf5VsulqFe2I7EoUr4DWDwIQOO9BxnuK2wLL9LHx/IigYRzZrNLKkQkwI4qgOzeP+dwXyFhtI57mwM9uQHDyQ2IvC/5wwAqQBDi25WoGpDE7oYAWzLXN7EGJRhkqvf3f6f3aklU3h5EeQ8s9Q0CKOL9ial5pav7cj1Sxr4IzEihr4m30s4eb50hzfm1MwsDU1cA1NNvpN6f8Z2Cs3VpRv4PI5Rt4bffPy2CAMZEBFm9v3S4r9z7ufMA+spsvV7WFip9aWuDtA8CjBcEUMr7q5N6Cu9vSeB1ef0BbPC6NnNpj7FZDuQwUwUw1Oq+Wu/PTEDagnWblCdVDgqCEYMA+iUDaWN3r95/YB8oKRuCQYIAJuP9NbP8ZvL+xCUMcqYVwk9IemMv6VNzrsxW+gHAY3NRACmVo/Bw3473jzV4pXXfpSFtnkpdxMLiQQBSAxxywA93WnHPryzHFCTPEScVmtT7Jhg8FEBuDikw4OfS+1/uspsiXyVUXkdPwrSWAA0hDqXpU9QBsJsEsE5Ylcj8q71/6DtWXmkpf3ENo9CGIguohB0lgAkM97Wtc9k9Q6tzfvQwgXpPu1Y/QAC7pO+HGO4b8P6LF8zTT3/BrqYkaD/sb0UAzpV6TNphPMAcCUA6BVjO9f2U3n+xX3n/pXl88mGyYejn56RChgb/DgKYlAQkmTFLvb9tLwe+qAng6cP/NrQ8v9i9kjpR/rj8du4xP1kM0SwHkwcBbHlzYZeYvif7aO6qpP/y/NQ8/uTDLJUZwhYkAgWQ9UXnm+yj6/33qu26efLJhyYQIyjvnHbIjmCcIIAs8nTo4b6tXXbfnJ8+Ns8efbTlvUXpScbkIFacLwFAADvj7cc03Lf1vUoBPPnVf8mcHqWWxwj98xjXLgQBzMD7BytJgeG+jq8uz58PUt8tO2tQbmYgYt4hbBsEkL+qDTbcd/t7q9Vy0hkSOGMQwMTJoOfhvq3958+fJDzJjC0KU4KBAPJWnn6H+0bl9coGzly6l1yJk8NQQQCDePkxDvfNMHWHVdzylLW9ulsvekZAAQzp/QdYyw6+FpgxAeRa4SfB+0sVQpb+/ZS/+HaL8cGU81IAqSv8ZB7uy6yAdrZGPIqbto0NBDAvti853DeHOuH/yg5ujHZ69eOq3i82D7CYMxlc291H62HAjzj2L1/HWFdYd6Sys3Z+C7OdvWl/ziZwuLazRl7a+1tOC0R3mW3bMtHcywUUXn5AcDWaAgEY011ielZksFsKgJrvsbD3d+6iURpDv6QwibzCImD4hnkMBDCtl15wuO/0PODc4SIAjuG75lkhEMDQ0p9Mpqm+lMN9U0MKeP6hCCDm+Tn7rIkORwUBjCg/UGC4b2puApbaN6xQ8vv2QQGMPwwoPNkHm1SAkSkAreGvWm+Ypvymp68AOIm/MXt/A+8/IgJw7Wtua+NfNkhg8hS/g0lA7pp8uSb7gPefOAH4PP+q8XnWMPrVLhXEtBUAab9MCu+vJJ8B2QDCIkgAbcO/9O60+TxtkMCkZf4OEsDVu7CLX1PE/u3wYbe9/+4TAX8FhBXRQ7PdCtA0+ueN/6/moOOmqwAu59vc/3wl0H7ptrxeJvtwkQR5qqktbpx2NNRiR2k/H338+O8bcfz681mLBGYVvO1oM2Dfk31IJikdgT+e6TiAs/Plf/zGq3/3t9WfT6vtfK5G70qGTNS+t41rKxzIMdxXOtmHj1QU1ctKikF9KZvrRYwwJNjCyenZ8m/++V8+eKP6+9HG6581SGC2mKoCeFBt3+689joc+CjR+ysVQjBOIfP5r/8jcnIAFEAWfj/60zcr43rba4R9TvbhJYyd6S4OgADGSAJ/9m718fpa3omMru/JPgjGD4AASpHAe5WFfbn689/CNpnL+3NJBUYPgAB6IoE/f/9CCdCDbN4/13BfeH8ABNALCZzYo++8Wdnk23wvn2myD3h/AAQwEiK49513KwNs5QVcdtnDZB/w/gAIYAgS+Iv3qo9NXqDvyT4IZACAAEZAAu9vlMCDst4fBg+AAEZKAt89qbZNXqCPAT+YGxAAAYyPCI6/2+gvUGq4b8z7gwQAEMCAJPBWIy8A7w8AsyKADQm8v1ECD5K8P3G9P4wfAAGMjAS+d1Jt7nEEWYb7QggAIIAJEMHbF3kBMidZhvvC+wMggMmRwHvGtsYRlPD+uzudHAACmDoJfP/9yjY3eYGC3h/2D4AARkoC979/Um1vVn++rfL+xFEI9eds16AHQAATIIK/dMwv4PP+qm7Fiw0BLEAGAAhgnCTwnnGOIzAM6R/NI1gHCYAMABDAuEjgr943zf4Cebz/ZVm3N5ABAAIYIQmc2Ps/aOQFkr2/jwBipAAyAEAAwxHBD1rzCyStR+gy8ti+RYsMQAgACKBXEvjCDxt5Acvw/t4YIGbkCwYpQB0AIIABSKCRF2jbHnc1YraRx/ZZqAIABNA/CZxU28X8AuultaLLa3WIQWv4CAkAEMBoiODlH170F7D2ZJsEooOKFsqtbeyXK9c2l64GABBAr3kB2uQF7N6VbYYHFWkkf/OE55ttCeMHQABjygvYhacoKRQC+JJ8lx5+bein5mLN+rOW4QMACGB4EnjnIi9Q9xeoirJWA177tAESuFymerkx+Gebz2VD7gMACGCkamAzjmCdF7hmttcVsy4FYBpefu3d1+vVP9l8wtsDIIDJkcDLjf4CayVgN0V7lSi0G8M+3xj542r7dGP4p434HkYPgAAmSgKbvIB9UCuBDQmsiB5uJP2janu4+byM7c9h9AAIYGdI4J2Tiggu5h2slcCeWa3onzaG/6zh7WH0wPD1FUVQDvTBT1+rPtbbu+uEIUoEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAyID/B2J/nRzbGb2EAAAAAElFTkSuQmCC',
                                  alt: 'file-icon',
                                  className: So.fixWidth,
                                }),
                                Object(FG.jsx)(Ff.a, {
                                  style: {
                                    color: '#fff',
                                    wordBreak: 'break-word',
                                    fontSize: '12px',
                                    fontWeight: 'normal',
                                  },
                                  variant: 'h1',
                                  gutterBottom: true,
                                  children: 'Stuff',
                                }),
                              ],
                            }),
                            Object(FG.jsxs)('div', {
                              onClick: function () {
                                return cU('boosting')
                              },
                              className: So.laptopApp,
                              style: { display: c2 ? '' : 'none' },
                              children: [
                                Object(FG.jsx)('div', {
                                  className: So.laptopAppInnerWrapper,
                                  children: Object(FG.jsx)('div', {
                                    style: {
                                      display: 'flex',
                                      justifyContent: 'center',
                                      alignItems: 'center',
                                      height: '100%',
                                    },
                                    children: Object(FG.jsx)('p', {
                                      children: 'B',
                                    }),
                                  }),
                                }),
                                Object(FG.jsx)('div', {
                                  style: { marginTop: '3%' },
                                  children: Object(FG.jsx)(Ff.a, {
                                    style: {
                                      color: '#fff',
                                      wordBreak: 'break-word',
                                      fontSize: '12px',
                                      fontWeight: 'normal',
                                    },
                                    variant: 'h1',
                                    gutterBottom: true,
                                    children: 'Boosting',
                                  }),
                                }),
                              ],
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.laptopNotificationModal,
                          style: {
                            transition: 'all 500ms ease-in-out 0s',
                            transform: 'translate('.concat(
                              cF ? '0%' : '125%',
                              ')'
                            ),
                          },
                          children: [
                            Object(FG.jsx)(Ff.a, {
                              className: So.laptopNotificationH1,
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                              },
                              variant: 'h1',
                              gutterBottom: true,
                              children: 'Notifications',
                            }),
                            Object(FG.jsx)('div', {
                              className: So.laptopNotificationModalWrapper,
                              children:
                                cX && cX.length > 0
                                  ? cX.map(function (cu) {
                                      return Object(FG.jsx)('div', {
                                        onClick: function () {
                                          return (function (cx) {
                                            var cA = cX.filter(function (cq) {
                                              return cq.id !== cx
                                            })
                                            cV(cA)
                                          })(cu.id)
                                        },
                                        className:
                                          'component-paper cursor-pointer',
                                        children: Object(FG.jsxs)('div', {
                                          className: 'main-container',
                                          children: [
                                            Object(FG.jsx)('div', {
                                              className: 'image',
                                              children: Object(FG.jsx)('div', {
                                                style: {
                                                  width: '45px',
                                                  height: '40px',
                                                  backgroundColor: '#3c3e45',
                                                  color: '#fff',
                                                  borderRadius: '5px',
                                                  textAlign: 'center',
                                                  fontFamily:
                                                    'Arial, Helvetica, sans-serif',
                                                },
                                                children: Object(FG.jsx)('div', {
                                                  style: {
                                                    display: 'flex',
                                                    justifyContent: 'center',
                                                    alignItems: 'center',
                                                    height: '100%',
                                                  },
                                                  children: Object(FG.jsx)('p', {
                                                    children: 'B',
                                                  }),
                                                }),
                                              }),
                                            }),
                                            Object(FG.jsx)('div', {
                                              className: 'details',
                                              children: Object(FG.jsxs)('div', {
                                                className: 'description',
                                                children: [
                                                  Object(FG.jsx)('div', {
                                                    className: 'flex-row',
                                                    children: Object(FG.jsx)(
                                                      Ff.a,
                                                      {
                                                        style: {
                                                          color: '#fff',
                                                          wordBreak: 'break-word',
                                                        },
                                                        variant: 'body1',
                                                        gutterBottom: true,
                                                        children: cu.title,
                                                      }
                                                    ),
                                                  }),
                                                  Object(FG.jsx)('div', {
                                                    className: 'flex-row',
                                                    children: Object(FG.jsx)(
                                                      Ff.a,
                                                      {
                                                        style: {
                                                          color: '#fff',
                                                          wordBreak: 'break-word',
                                                        },
                                                        variant: 'body2',
                                                        gutterBottom: true,
                                                        children: cu.body,
                                                      }
                                                    ),
                                                  }),
                                                ],
                                              }),
                                            }),
                                          ],
                                        }),
                                      })
                                    })
                                  : Object(FG.jsx)(FG.Fragment, {}),
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.laptopSettingsModal,
                          style: {
                            transition: 'all 300ms ease-in-out 0s',
                            transform: 'translate('.concat(
                              ck ? '0%' : '150%',
                              ')'
                            ),
                          },
                          children: [
                            Object(FG.jsx)(Ff.a, {
                              className: So.laptopSettingsH1,
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                              },
                              variant: 'h1',
                              gutterBottom: true,
                              children: 'Settings',
                            }),
                            Object(FG.jsxs)('div', {
                              className: So.laptopSettingsModalWrapper,
                              children: [
                                Object(FG.jsxs)('div', {
                                  className: So.laptopSettingsInput,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: 'input-wrapper',
                                      children: Object(FG.jsx)(FQ.a, {
                                        fullWidth: true,
                                        sx: { width: '100%' },
                                        children: Object(FG.jsx)(Fx.a, {
                                          id: 'input-with-icon-textfield',
                                          label: 'Enter Background (16:9)',
                                          variant: 'standard',
                                          value: cp,
                                          onChange: function (cu) {
                                            cn(cu.target.value)
                                          },
                                          InputProps: {
                                            startAdornment: Object(FG.jsx)(FA.a, {
                                              position: 'start',
                                              children: Object(FG.jsx)('i', {
                                                className: 'fas fa-images',
                                              }),
                                            }),
                                          },
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsxs)('div', {
                                      className: So.laptopSettingsButtons,
                                      children: [
                                        Object(FG.jsx)('div', {
                                          children: Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              Fd('qpixel-interface:saveSettings', {
                                                bg: cp,
                                              })
                                            },
                                            color: 'success',
                                            size: 'small',
                                            variant: 'contained',
                                            children: 'Save',
                                          }),
                                        }),
                                        Object(FG.jsx)('div', {
                                          children: Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              cB(!cr)
                                            },
                                            color: 'success',
                                            size: 'small',
                                            variant: 'contained',
                                            children: 'Presets',
                                          }),
                                        }),
                                      ],
                                    }),
                                  ],
                                }),
                                Object(FG.jsx)('div', {
                                  className: So.laptopSettingsInput,
                                  children: Object(FG.jsx)(FQ.a, {
                                    fullWidth: true,
                                    sx: { width: '100%' },
                                    children: Object(FG.jsx)(SP.a, {
                                      style: { color: '#fff' },
                                      control: Object(FG.jsx)(SN.a, {
                                        color: 'warning',
                                        disableFocusRipple: true,
                                        disableTouchRipple: true,
                                        disableRipple: true,
                                      }),
                                      label: 'White Font',
                                    }),
                                  }),
                                }),
                              ],
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.laptopPresetModal,
                          style: {
                            transition: 'all 500ms ease-in-out 0s',
                            transform: 'translate('.concat(
                              cr ? '0%' : '250%',
                              ')'
                            ),
                          },
                          children: [
                            Object(FG.jsx)(Ff.a, {
                              className: So.laptopPresetH1,
                              style: {
                                color: '#fff',
                                wordBreak: 'break-word',
                              },
                              variant: 'h1',
                              gutterBottom: true,
                              children: 'Preset Backgrounds',
                            }),
                            Object(FG.jsxs)(SY.a, {
                              className: So.laptopPresetGrid,
                              container: true,
                              spacing: 3,
                              children: [
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/EEwTSk1.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/EEwTSk1.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/p924kQR.png')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/p924kQR.png) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/H1SL3u3.png')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/H1SL3u3.png) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/QUx3wNC.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/QUx3wNC.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/8gCOoIZ.png')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/8gCOoIZ.png) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/4yp0klI.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/4yp0klI.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/vn68cBQ.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/vn68cBQ.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/QxqrDwG.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/QxqrDwG.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/hnA5H1Y.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/hnA5H1Y.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/8Lthbn7.png')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/8Lthbn7.png) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/l5romrM.jpg')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/l5romrM.jpg) 0% 0% / cover',
                                    },
                                  }),
                                }),
                                Object(FG.jsx)(SY.a, {
                                  onClick: function () {
                                    return ct('https://i.imgur.com/ArrXblZ.png')
                                  },
                                  item: true,
                                  xs: 4,
                                  children: Object(FG.jsx)('div', {
                                    className: So.gridWrapper,
                                    style: {
                                      background:
                                        'url(https://i.imgur.com/ArrXblZ.png) 0% 0% / cover',
                                    },
                                  }),
                                }),
                              ],
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.laptopTaskbar,
                          children: [
                            Object(FG.jsxs)('div', {
                              className: So.laptopTaskbarApps,
                              children: [
                                Object(FG.jsx)('div', {
                                  className: 'laptop-taskbar-wrapper',
                                  children: Object(FG.jsx)('img', {
                                    src: 'https://i.imgur.com/i9wWn4D.png',
                                    alt: 'file-icon',
                                    className: So.laptopTaskbarIcon,
                                    style: { height: '35px' },
                                  }),
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'laptop-taskbar-wrapper',
                                  children: Object(FG.jsx)('img', {
                                    src: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEABAMAAACuXLVVAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAHlBMVEUAAAD/uAAAu/Jo6v/862D87mb94Uz+0Cz/uAD/vw2N2j46AAAAAnRSTlMAnxYjQ+0AAAE6SURBVHja7dzBSQRREEXRDsEYnAzGGAyhwUR+AC6UMmsRXNrolEU/lHPXn+bwajeL2TZJkiRJkqTPqtFdGvCcBoxOUOkJKj1BpSeo9ASVnqDSE1R6gkpPUOkJKj1BpSeo9ASVnqBODmAQ8Pa439zTJOB1DwNWGNC5wCigc4FRwAoDWheYBLQuMAlYYUDvAoOA3gUGASsMaF5gDtC8wBxghQHdC4wBuhcYA6wwoH2BKUD7AlOANQp42U8MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4K8A7ocC6AMuDwNdAQAAAAAAAAAAAAAAAAAAAAAAAAD+HeB6/JvsBeAkwH4QAAAAAAAAAAAAAAAAAAAAAADA7wBfdPTBo3/puuU9wPaTjj449R4A4HvAQVPvASRJkiTpo3eErGkYBFzd4QAAAABJRU5ErkJggg==',
                                    alt: 'file-icon',
                                    className: So.laptopTaskbarIcon,
                                  }),
                                }),
                                Object(FG.jsx)('div', {
                                  className: 'laptop-taskbar-wrapper',
                                  children: Object(FG.jsx)('img', {
                                    src: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAACXBIWXMAAAsTAAALEwEAmpwYAAAGymlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEzLTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoV2luZG93cykiIHhtcDpDcmVhdGVEYXRlPSIyMDIxLTA1LTEwVDE2OjEzOjA1LTA0OjAwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAyMS0wNy0wOFQyMjoyMDoxNi0wNDowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAyMS0wNy0wOFQyMjoyMDoxNi0wNDowMCIgZGM6Zm9ybWF0PSJpbWFnZS9wbmciIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpjOGE4OGY0Yy1hNWE0LWRlNGUtOWI1OS01YTViNmQ2YmFlMGEiIHhtcE1NOkRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDoxZmE2OWNjZC02MWQzLWRiNDYtOGQyZC1kMzc2M2I0Y2ZkMjEiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo4ZGI2MzczNS1jMWMwLWUxNDktYjEyZS03NTA2YjNmNjRiN2YiPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjcmVhdGVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjhkYjYzNzM1LWMxYzAtZTE0OS1iMTJlLTc1MDZiM2Y2NGI3ZiIgc3RFdnQ6d2hlbj0iMjAyMS0wNS0xMFQxNjoxMzowNS0wNDowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo2MjllZmE3MS0wOWU4LWEwNGEtODNjZS03NTI2ZTEyOGY5MTAiIHN0RXZ0OndoZW49IjIwMjEtMDUtMTFUMTQ6NTQ6NDItMDQ6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YzhhODhmNGMtYTVhNC1kZTRlLTliNTktNWE1YjZkNmJhZTBhIiBzdEV2dDp3aGVuPSIyMDIxLTA3LTA4VDIyOjIwOjE2LTA0OjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+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',
                                    alt: 'file-icon',
                                    className: So.laptopTaskbarIcon,
                                  }),
                                }),
                                Object(FG.jsx)('div', {
                                  onClick: function () {
                                    return co('boosting')
                                  },
                                  className: 'laptop-taskbar-wrapper',
                                  style: {
                                    backgroundColor:
                                      cP && !cb
                                        ? 'rgba(255, 255, 255, 0.08)'
                                        : '',
                                    display: cP ? '' : 'none',
                                  },
                                  children: Object(FG.jsx)('div', {
                                    className: So.laptopTaskbarAppInnerWrapper,
                                    children: Object(FG.jsx)('div', {
                                      style: {
                                        display: 'flex',
                                        justifyContent: 'center',
                                        alignItems: 'center',
                                        height: '100%',
                                      },
                                      children: Object(FG.jsx)('p', {
                                        children: 'B',
                                      }),
                                    }),
                                  }),
                                }),
                              ],
                            }),
                            Object(FG.jsx)('div', {
                              onClick: function () {
                                cZ(!ck)
                              },
                              className: 'laptop-taskbar-wrapper',
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-cog fa-w-16 fa-fw fa-1x',
                                style: { color: '#fff' },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: 'laptop-taskbar-wrapper',
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-wifi fa-w-20 fa-fw fa-1x',
                                style: { color: '#fff' },
                              }),
                            }),
                            Object(FG.jsxs)('div', {
                              className: So.laptopTaskbarTime,
                              children: [
                                Object(FG.jsx)(Ff.a, {
                                  style: {
                                    color: '#fff',
                                    wordBreak: 'break-word',
                                    fontSize: '1em',
                                  },
                                  variant: 'body1',
                                  gutterBottom: true,
                                  children: Sz()().format('hh:mm A'),
                                }),
                                Object(FG.jsx)(Ff.a, {
                                  style: {
                                    color: '#fff',
                                    wordBreak: 'break-word',
                                    fontSize: '1em',
                                  },
                                  variant: 'body1',
                                  gutterBottom: true,
                                  children: Sz()().format('M/DD/YYYY'),
                                }),
                              ],
                            }),
                            Object(FG.jsx)('div', {
                              onClick: function () {
                                cS(!cF)
                              },
                              className: 'laptop-taskbar-notifications',
                              children: Object(FG.jsx)('div', {
                                className: So.laptopTaskbarNotificationsInner,
                              }),
                            }),
                          ],
                        }),
                      ],
                    }),
                  }),
                ],
              })
            )
          },
          SR = function () {
            var SU = Object(FF.d)(FM)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'laptop',
              center: true,
              children: Object(FG.jsx)(SW, {}),
            })
          },
          Sd = Object(FX.a)({
            taskbarOuterContainer: {
              width: '100vw',
              height: '100vh',
              display: 'flex',
              position: 'relative',
              flexDirection: 'column',
            },
            taskbarInnerContainer: {
              flex: '1 1 0%',
              width: '100%',
              height: '100%',
              display: 'flex',
              alignItems: 'center',
              flexDirection: 'column',
              justifyContent: 'center',
            },
            taskbarCircleContainer: {
              width: '48px',
              height: '48px',
              position: 'relative',
            },
            taskbarCircleInnerContainer: {
              display: 'flex',
              alignItems: 'center',
            },
            taskbarNormalContainer: {
              color: 'white',
              width: '288px',
              border: '2px solid rgb(230, 230, 229)',
              height: '40px',
              position: 'relative',
              backgroundColor: 'rgba(0, 0, 0, 0.4)',
            },
            taskbarTextContainer: {
              top: '0px',
              left: '0px',
              width: '100%',
              height: '100%',
              display: 'flex',
              position: 'absolute',
              alignItems: 'center',
              justifyContent: 'center',
            },
            taskbarSliderContainer: {
              top: '0px',
              left: '0px',
              height: '100%',
              zIndex: '50',
              position: 'absolute',
              backgroundColor: 'rgb(79, 124, 172)',
            },
            taskbarText: {
              color: 'white',
              zIndex: '100',
              textShadow:
                'rgb(55 71 79) -1px 1px 0px, rgb(55 71 79) 1px 1px 0px, rgb(55 71 79) 1px -1px 0px, rgb(55 71 79) -1px -1px 0px',
              paddingLeft: '10px',
              width: '100% !important',
              fontStyle: 'normal !important',
              fontFamily: 'Arial, Helvetica, sans-serif !important',
              fontWeight: '600 !important',
              fontVariant: 'small-caps !important',
              letterSpacing: '0px !important',
              textTransform: 'none',
              textDecoration: 'none !important',
            },
            taskbarSvg: {
              width: '100%',
              height: '100%',
              display: 'flex',
              position: 'absolute',
              alignItems: 'center',
              justifyContent: 'center',
            },
            taskbarFlex: { flex: '1 1 0%' },
          }),
          Sj = function (SU) {
            var So = Sd(),
              Su = Object(FF.c)(Fb),
              SC = Object(FI.a)(Su, 2),
              SQ = (SC[0], SC[1]),
              Sx = Object(FF.c)(FS),
              SA = Object(FI.a)(Sx, 2),
              Sq = (SA[0], SA[1], Object(F4.useState)('')),
              c0 = Object(FI.a)(Sq, 2),
              c1 = (c0[0], c0[1]),
              c2 = Object(F4.useState)(''),
              c3 = Object(FI.a)(c2, 2),
              c4 = c3[0],
              c5 = c3[1],
              c6 = Object(F4.useState)(0),
              c7 = Object(FI.a)(c6, 2),
              c8 = c7[0],
              c9 = c7[1],
              cF = Object(F4.useState)(0),
              cS = Object(FI.a)(cF, 2),
              cc = cS[0],
              ca = cS[1],
              ck = Object(F4.useState)('125.66370614359172'),
              cZ = Object(FI.a)(ck, 2),
              cK = cZ[0],
              cw = cZ[1],
              cr = Object(F4.useState)('125.66370614359172'),
              cB = Object(FI.a)(cr, 2),
              ch = cB[0],
              cO = cB[1],
              cP = Object(F4.useState)(false),
              cN = Object(FI.a)(cP, 2),
              cJ = cN[0],
              cM = cN[1]
            return (
              Fl('uiMessage', function (cb) {
                var cL = cb.data
                'taskbar' === cb.app &&
                  (void 0 !== cL.update && ca(cL.value),
                  true === cL.display
                    ? (SQ(true),
                      c1(cL.taskID),
                      c5(cL.label),
                      c9(cL.duration),
                      ca(0))
                    : false === cL.display &&
                      (SQ(false),
                      c1(''),
                      c5(''),
                      c9(0),
                      ca(0),
                      cw('125.66370614359172'),
                      cO('125.66370614359172')))
                'preferences' === cb.app &&
                  void 0 !== cL['hud.misc.circle.taskbar.enabled'] &&
                  cM(cL['hud.misc.circle.taskbar.enabled'])
              }),
              Object(F4.useEffect)(
                function () {
                  if (
                    (0 === c8 &&
                      cc >= 100 &&
                      (SQ(false),
                      c1(''),
                      c5(''),
                      c9(0),
                      cJ && (cw('125.66370614359172'), cO('125.66370614359172'))),
                    c8 > 0 &&
                      (setTimeout(function () {
                        c9(c8 - 1000)
                      }, 1000),
                      cJ))
                  ) {
                    var cL = 40 * Math.PI,
                      cH = cL - ((100 * cc) / 100 / 100) * cL
                    cw(''.concat(cL))
                    cO(''.concat(cH))
                  }
                },
                [c8, cc]
              ),
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsxs)('div', {
                  className: So.taskbarOuterContainer,
                  children: [
                    Object(FG.jsx)('div', { className: So.taskbarFlex }),
                    Object(FG.jsxs)('div', {
                      className: So.taskbarInnerContainer,
                      children: [
                        Object(FG.jsx)('div', {
                          className: So.taskbarFlex,
                          style: { display: cJ ? 'none' : '' },
                        }),
                        Object(FG.jsxs)('div', {
                          className: So.taskbarCircleInnerContainer,
                          style: { display: cJ ? 'flex' : 'none' },
                          children: [
                            Object(FG.jsxs)('div', {
                              className: So.taskbarCircleContainer,
                              children: [
                                Object(FG.jsx)('div', {
                                  className: So.taskbarSvg,
                                  children: Object(FG.jsx)('svg', {
                                    version: '1.1',
                                    xmlns: 'http://www.w3.org/2000/svg',
                                    style: {
                                      height: '48px',
                                      width: '48px',
                                      transform: 'rotate(-90deg)',
                                      filter:
                                        'drop-shadow(rgba(0, 0, 0, 0.4) 0px 0px 2px)',
                                    },
                                    children: Object(FG.jsx)('circle', {
                                      r: '20',
                                      cx: '24',
                                      cy: '24',
                                      fill: 'transparent',
                                      stroke: 'rgba(255, 255, 255, 0.5)',
                                      'stroke-width': '6',
                                      'stroke-dasharray': '125.66370614359172',
                                      'stroke-dashoffset': '0',
                                      style: {
                                        transition:
                                          'stroke-dashoffset 600ms linear 0s',
                                        willChange: 'transition',
                                      },
                                    }),
                                  }),
                                }),
                                Object(FG.jsx)('div', {
                                  className: So.taskbarSvg,
                                  children: Object(FG.jsxs)('svg', {
                                    version: '1.1',
                                    xmlns: 'http://www.w3.org/2000/svg',
                                    style: {
                                      height: '48px',
                                      width: '48px',
                                      transform: 'rotate(-90deg)',
                                      filter:
                                        'drop-shadow(rgba(0, 0, 0, 0.4) 0px 0px 2px)',
                                    },
                                    children: [
                                      Object(FG.jsx)('circle', {
                                        r: '20',
                                        cx: '24',
                                        cy: '24',
                                        fill: 'transparent',
                                        stroke: '#4F7CAC',
                                        'stroke-width': '6',
                                        'stroke-dasharray': cK,
                                        'stroke-dashoffset': ch,
                                        style: {
                                          transition:
                                            'stroke-dashoffset 0ms linear 0s',
                                          willChange: 'transition',
                                        },
                                      }),
                                      ' ',
                                    ],
                                  }),
                                }),
                              ],
                            }),
                            Object(FG.jsx)('div', {
                              children: Object(FG.jsx)('p', {
                                className: So.taskbarText,
                                children: c4,
                              }),
                            }),
                          ],
                        }),
                        Object(FG.jsx)('div', {
                          className: So.taskbarInnerContainer,
                          style: { display: cJ ? 'none' : 'flex' },
                          children: Object(FG.jsxs)('div', {
                            className: So.taskbarNormalContainer,
                            children: [
                              Object(FG.jsx)('div', {
                                className: So.taskbarTextContainer,
                                children: Object(FG.jsx)('p', {
                                  className: So.taskbarText,
                                  style: { textAlign: 'center' },
                                  children: c4,
                                }),
                              }),
                              Object(FG.jsx)('div', {
                                className: So.taskbarSliderContainer,
                                style: {
                                  width: ''.concat(cc, '%'),
                                  transition: 'width 0ms linear 0s',
                                },
                              }),
                            ],
                          }),
                        }),
                      ],
                    }),
                  ],
                }),
              })
            )
          },
          ST = function () {
            var SU = Object(FF.d)(Fb)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'taskbar',
              zIndex: 0,
              children: Object(FG.jsx)(Sj, {}),
            })
          },
          Si = Object(FX.a)({
            root: {
              top: '0px',
              left: '0px',
              width: '100vw',
              height: '100vh',
              position: 'absolute',
              maxWidth: '100vw',
              minWidth: '100vw',
              maxHeight: '100vh',
              minHeight: '100vh',
              border: '0px',
              margin: '0px',
              outline: '0px',
              padding: '0px',
              overflow: 'hidden',
              '& .MuiInput-root': {
                color: 'white',
                fontSize: '1.3vmin',
              },
              '& .MuiInput-underline:hover:not(.Mui-disabled):before': {
                borderColor: 'darkgray',
              },
              '& .MuiInput-underline:before': {
                borderColor: 'darkgray',
                color: 'blue',
              },
              '& .MuiInput-underline:after': {
                borderColor: 'white',
                color: 'blue',
              },
              '& .MuiInputLabel-animated': {
                color: 'darkgray',
                fontSize: '1.5vmin',
              },
              '& .MuiInputAdornment-root': { color: 'darkgray' },
            },
            clothingHeader: {
              display: 'flex',
              width: '100%',
              height: '5%',
              marginBottom: '2vh',
            },
            clothingHeaderInner: {
              display: 'flex',
              width: '100%',
              justifyContent: 'space-between',
              alignItems: 'center',
              paddingLeft: '12px',
              paddingRight: '12px',
            },
            clothingInnerContainerWrapper: {
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              width: '100%',
              height: '100%',
              maxHeight: '92%',
              overflow: 'auto',
            },
            clothingInnerContainer: {
              display: 'flex',
              flexDirection: 'column',
              width: '95%',
              height: 'max-content',
              borderRadius: '3px',
              marginBottom: '3vh',
              backgroundColor: '#30475e',
            },
            clothingInnerContainerHeader: {
              display: 'flex',
              flexDirection: 'column',
              paddingLeft: '1vh',
              paddingBottom: '1.5vh',
            },
            clothingInnerContainerHeaderSlider: {
              display: 'flex',
              flexDirection: 'column',
              paddingLeft: '1vh',
            },
            clothingInnerContainerInputWrapper: {
              display: 'flex',
              flexDirection: 'unset',
              paddingLeft: '1vh',
              paddingBottom: '1vh',
            },
            clothingLeftSidebar: {
              display: 'flex',
              alignItems: 'flex-end',
              flexDirection: 'column',
              width: '100px',
              height: '100%',
            },
            clothingLeftSideBarTab: {
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              width: '40%',
              height: '4%',
              backgroundColor: 'rgb(34, 40, 49)',
              borderRadius: '3px',
              marginTop: '5%',
              marginRight: '5%',
            },
            clothingContainer: {
              display: 'flex',
              width: '490px',
              height: '100%',
              backgroundColor: 'rgb(34, 40, 49)',
              flexDirection: 'column',
            },
            clothingRightSidebar: {
              display: 'flex',
              width: '4vw',
            },
            clothingRightSidebarInner: {
              display: 'flex',
              justifyContent: 'center',
              flexDirection: 'column',
              width: '100%',
              height: '100%',
              backgroundColor: '#30475e',
            },
            clothingRightSidebarIcon: {
              display: 'flex',
              justifyContent: 'center',
              paddingTop: '0.5vh',
              paddingBottom: '0.5vh',
            },
            clothingRightSidebarTabs: {
              display: 'flex',
              height: '100%',
              alignItems: 'center',
              flexDirection: 'column',
            },
            clothingRightSidebarTab: {
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
              height: '5.5%',
              width: '100%',
              cursor: 'pointer',
            },
          }),
          SX = F2(201),
          SV = function (SU) {
            var Su = Si(),
              SC = Object(FF.c)(FL),
              SQ = Object(FI.a)(SC, 2),
              Sx = (SQ[0], SQ[1]),
              SA = Object(FF.c)(FS),
              Sq = Object(FI.a)(SA, 2),
              c0 = (Sq[0], Sq[1]),
              c1 = Object(F4.useState)(false),
              c2 = Object(FI.a)(c1, 2),
              c3 = c2[0],
              c4 = c2[1],
              c5 = Object(F4.useState)(0),
              c6 = Object(FI.a)(c5, 2),
              c7 = c6[0],
              c8 = c6[1],
              c9 = Object(F4.useState)(0),
              cF = Object(FI.a)(c9, 2),
              cS = (cF[0], cF[1], Object(F4.useState)(0)),
              cc = Object(FI.a)(cS, 2),
              ca = cc[0],
              ck = cc[1],
              cZ = Object(F4.useState)(0),
              cK = Object(FI.a)(cZ, 2),
              cw = cK[0],
              cr = cK[1],
              cB = Object(F4.useState)(0),
              ch = Object(FI.a)(cB, 2),
              cO = ch[0],
              cP = ch[1],
              cN = Object(F4.useState)(0),
              cJ = Object(FI.a)(cN, 2),
              cM = cJ[0],
              cb = cJ[1],
              cL = Object(F4.useState)(0),
              cH = Object(FI.a)(cL, 2),
              cY = cH[0],
              cE = cH[1],
              cz = Object(F4.useState)(0),
              cG = Object(FI.a)(cz, 2),
              cv = cG[0],
              cI = cG[1],
              cf = Object(F4.useState)(0),
              cm = Object(FI.a)(cf, 2),
              cl = cm[0],
              cs = cm[1],
              cW = Object(F4.useState)(0),
              cR = Object(FI.a)(cW, 2),
              cd = cR[0],
              cj = cR[1],
              cT = Object(F4.useState)(0),
              ci = Object(FI.a)(cT, 2),
              cX = ci[0],
              cV = ci[1],
              cg = Object(F4.useState)(0),
              cD = Object(FI.a)(cg, 2),
              cp = cD[0],
              cn = cD[1],
              cy = Object(F4.useState)(0),
              ct = Object(FI.a)(cy, 2),
              cU = ct[0],
              co = ct[1],
              cu = Object(F4.useState)(0),
              cC = Object(FI.a)(cu, 2),
              cQ = cC[0],
              cx = cC[1],
              cA = Object(F4.useState)(0),
              cq = Object(FI.a)(cA, 2),
              a0 = cq[0],
              a1 = cq[1],
              a2 = Object(F4.useState)(0),
              a3 = Object(FI.a)(a2, 2),
              a4 = a3[0],
              a5 = a3[1],
              a6 = Object(F4.useState)(0),
              a7 = Object(FI.a)(a6, 2),
              a8 = a7[0],
              a9 = a7[1],
              aF = Object(F4.useState)(0),
              aS = Object(FI.a)(aF, 2),
              ac = aS[0],
              aa = aS[1]
            Fl('uiMessage', function (aN) {
              var aM = aN.data
              'clothing' === aN.app &&
                (true === aN.show
                  ? (Sx(true), c0('clothing'))
                  : false === aN.show && (Sx(false), c0('main')),
                void 0 !== aM.action &&
                  ('attemptClose' === aM.action && c4(true),
                  'clothingCount' === aM.action &&
                    (void 0 !== aM.maxHair && cr(aM.maxHair),
                    void 0 !== aM.maxHats && cb(aM.maxHats),
                    void 0 !== aM.maxShirts && cI(aM.maxShirts),
                    void 0 !== aM.maxCoatsOpen && cj(aM.maxCoatsOpen),
                    void 0 !== aM.maxClosedCoats && cn(aM.maxClosedCoats),
                    void 0 !== aM.maxPants && cx(aM.maxPants),
                    void 0 !== aM.maxChaps && a5(aM.maxChaps),
                    void 0 !== aM.maxPonchos && aa(aM.maxPonchos))))
            })
            Fl('attemptClose', function (aN) {
              console.log('ATTEMPT CLOSE')
              c4(true)
            })
            var ak = function (aN) {
              Fd('qpixel-clothing:switchCameraMode', { name: aN })
            }
            Object(F4.useEffect)(function () {
              var aJ = function (aM) {
                'ArrowLeft' === aM.key &&
                  Fd('qpixel-clothing:rotateCamera', { direction: 'left' })
                'ArrowRight' === aM.key &&
                  Fd('qpixel-clothing:rotateCamera', { direction: 'right' })
                'a' === aM.key &&
                  Fd('qpixel-clothing:rotateCamera', { direction: 'left' })
                'd' === aM.key &&
                  Fd('qpixel-clothing:rotateCamera', { direction: 'right' })
              }
              return (
                window.addEventListener('keydown', aJ),
                function () {
                  return window.removeEventListener('keydown', aJ)
                }
              )
            }, [])
            var aZ = function (aN) {
                aN > cw ||
                  (ck(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'hair',
                  }))
              },
              aK = function (aN) {
                aN > cM ||
                  (cP(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'hats',
                  }))
              },
              aw = function (aN) {
                aN > cv ||
                  (cE(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'shirts_full',
                  }))
              },
              ar = function (aN) {
                aN > cd ||
                  (cs(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'coats',
                  }))
              },
              aB = function (aN) {
                aN > cp ||
                  (cV(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'coats_closed',
                  }))
              },
              ah = function (aN) {
                aN > cQ ||
                  (co(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'pants',
                  }))
              },
              aO = function (aN) {
                aN > a4 ||
                  (a1(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'chaps',
                  }))
              },
              aP = function (aN) {
                aN > ac ||
                  (a9(aN),
                  Fd('qpixel-clothing:updateClothing', {
                    id: aN,
                    type: 'ponchos',
                  }))
              }
            return (
              FD(),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsxs)(SY.a, {
                  container: true,
                  className: Su.root,
                  children: [
                    Object(FG.jsx)('div', {
                      style: {
                        display: 'flex',
                        justifyContent: 'flex-end',
                        alignItems: 'center',
                        width: '50%',
                        height: '100%',
                        backgroundColor: 'transparent',
                      },
                      children: Object(FG.jsx)('div', {
                        style: {
                          display: 'flex',
                          opacity: c3 ? 1 : 0,
                          backgroundColor: 'rgb(34, 40, 49)',
                          width: '550px',
                          height: '130px',
                          borderRadius: '4px',
                          transition: 'all 800ms ease 0s',
                        },
                        children: Object(FG.jsxs)('div', {
                          style: {
                            display: 'flex',
                            flexDirection: 'column',
                            padding: '2vh',
                          },
                          children: [
                            Object(FG.jsx)('div', {
                              style: { paddingBottom: '3.5vh' },
                              children: Object(FG.jsxs)(Ff.a, {
                                style: {
                                  color: '#fff',
                                  wordBreak: 'break-word',
                                  fontWeight: 400,
                                },
                                variant: 'body1',
                                gutterBottom: true,
                                children: [
                                  'Total: ',
                                  Object(FG.jsx)('span', {
                                    style: { color: '#85bb65' },
                                    children: '$0.00 Incl. 15% tax',
                                  }),
                                ],
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              children: Object(FG.jsxs)(SZ.a, {
                                direction: 'row',
                                spacing: 9,
                                children: [
                                  Object(FG.jsx)(S0.a, {
                                    sx: { fontSize: '11px' },
                                    size: 'small',
                                    color: 'success',
                                    variant: 'contained',
                                    children: 'Pay Cash',
                                  }),
                                  Object(FG.jsx)(S0.a, {
                                    sx: { fontSize: '11px' },
                                    size: 'small',
                                    color: 'success',
                                    variant: 'contained',
                                    children: 'Pay Bank',
                                  }),
                                  Object(FG.jsx)(S0.a, {
                                    onClick: function () {
                                      c4(false)
                                      Fd('qpixel-interface:closeApp', {}).then(
                                        function (aJ) {
                                          true === aJ.meta.ok &&
                                            Fd(
                                              'qpixel-interface:applicationClosed',
                                              {
                                                name: 'clothing',
                                                fromEscape: true,
                                              }
                                            ).then(function (aM) {
                                              true === aM.meta.ok && Sx(false)
                                            })
                                        }
                                      )
                                    },
                                    sx: { fontSize: '11px' },
                                    size: 'small',
                                    color: 'warning',
                                    variant: 'contained',
                                    children: 'Discard',
                                  }),
                                  Object(FG.jsx)(S0.a, {
                                    onClick: function () {
                                      return c4(false)
                                    },
                                    sx: { fontSize: '11px' },
                                    size: 'small',
                                    color: 'error',
                                    variant: 'contained',
                                    children: 'Go Back',
                                  }),
                                ],
                              }),
                            }),
                          ],
                        }),
                      }),
                    }),
                    Object(FG.jsxs)('div', {
                      style: {
                        display: 'flex',
                        width: '50%',
                        height: '100%',
                        backgroundColor: 'transparent',
                        justifyContent: 'flex-end',
                        flexDirection: 'row',
                      },
                      children: [
                        Object(FG.jsxs)('div', {
                          className: Su.clothingLeftSidebar,
                          children: [
                            Object(FG.jsx)('div', {
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-hat-cowboy-side fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              onClick: function () {
                                return ak('head')
                              },
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-mask fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-glasses fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              onClick: function () {
                                return ak('torso')
                              },
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-tshirt fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-shopping-bag fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-drumstick-bite fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                            Object(FG.jsx)('div', {
                              onClick: function () {
                                return ak('leg')
                              },
                              className: Su.clothingLeftSideBarTab,
                              children: Object(FG.jsx)('i', {
                                className: 'fas fa-socks fa-fw fa-w-14',
                                style: {
                                  color: 'white',
                                  fontSize: '15px',
                                },
                              }),
                            }),
                          ],
                        }),
                        Object(FG.jsxs)('div', {
                          className: Su.clothingContainer,
                          children: [
                            Object(FG.jsx)('div', {
                              className: Su.clothingHeader,
                              children: Object(FG.jsxs)('div', {
                                className: Su.clothingHeaderInner,
                                children: [
                                  Object(FG.jsx)('div', {
                                    children: Object(FG.jsx)(Ff.a, {
                                      style: {
                                        color: '#85bb65',
                                        wordBreak: 'break-word',
                                        fontWeight: 500,
                                      },
                                      variant: 'body2',
                                      gutterBottom: true,
                                      children: '$0.00 Incl. 15% tax',
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    children: Object(FG.jsxs)(SX.a, {
                                      sx: {
                                        borderRadius: '3px',
                                        fontSize: '11px',
                                      },
                                      disableElevation: true,
                                      variant: 'contained',
                                      children: [
                                        Object(FG.jsx)(S0.a, {
                                          sx: { fontSize: '11px' },
                                          size: 'small',
                                          color: 'success',
                                          variant: 'contained',
                                          children: 'Pay',
                                        }),
                                        Object(FG.jsx)(S0.a, {
                                          onClick: function () {
                                            return c4(true)
                                          },
                                          sx: { fontSize: '11px' },
                                          size: 'small',
                                          color: 'warning',
                                          variant: 'contained',
                                          children: 'Exit',
                                        }),
                                      ],
                                    }),
                                  }),
                                ],
                              }),
                            }),
                            Object(FG.jsxs)('div', {
                              className: Su.clothingInnerContainerWrapper,
                              style: { display: 0 === c7 ? '' : 'none' },
                              children: [
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Hair',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== ca ? aZ(ca - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: ca,
                                              label: ''.concat(
                                                cw,
                                                ' hair styles'
                                              ),
                                              onChange: function (aN) {
                                                return aZ(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return ca <= cw ? aZ(ca + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Hats',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== cO ? aK(cO - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: cO,
                                              label: ''.concat(cM, ' hats'),
                                              onChange: function (aN) {
                                                return aK(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return cO <= cM ? aK(cO + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Shirts',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== cY ? aw(cY - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: cY,
                                              label: ''.concat(cv, ' shirts'),
                                              onChange: function (aN) {
                                                return aw(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return cY <= cv ? aw(cY + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Coats Open',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== cl ? ar(cl - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: cl,
                                              label: ''.concat(cd, ' open coats'),
                                              onChange: function (aN) {
                                                return ar(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return cl <= cd ? ar(cl + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Coats Closed',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== cX ? aB(cX - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: cX,
                                              label: ''.concat(
                                                cp,
                                                ' closed coats'
                                              ),
                                              onChange: function (aN) {
                                                return aB(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return cX <= cp ? aB(cX + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Ponchos',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== a8 ? aP(a8 - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: a8,
                                              label: ''.concat(ac, ' ponchos'),
                                              onChange: function (aN) {
                                                return aP(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return a8 <= ac ? aP(a8 + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Pants',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== cU ? ah(cU - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: cU,
                                              label: ''.concat(cQ, ' pants'),
                                              onChange: function (aN) {
                                                return ah(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return cU <= cQ ? ah(cU + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Chaps',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== a0 ? aO(a0 - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: a0,
                                              label: ''.concat(a4, ' chaps'),
                                              onChange: function (aN) {
                                                return aO(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return a0 <= a4 ? aO(a0 + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                                Object(FG.jsxs)('div', {
                                  className: Su.clothingInnerContainer,
                                  children: [
                                    Object(FG.jsx)('div', {
                                      className: Su.clothingInnerContainerHeader,
                                      children: Object(FG.jsx)('div', {
                                        children: Object(FG.jsx)(Ff.a, {
                                          style: {
                                            color: '#fff',
                                            wordBreak: 'break-word',
                                            fontWeight: 0,
                                          },
                                          variant: 'h6',
                                          gutterBottom: true,
                                          children: 'Chaps',
                                        }),
                                      }),
                                    }),
                                    Object(FG.jsx)('div', {
                                      className:
                                        Su.clothingInnerContainerInputWrapper,
                                      children: Object(FG.jsxs)(SX.a, {
                                        disableElevation: true,
                                        variant: 'contained',
                                        children: [
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return 0 !== a0 ? aO(a0 - 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '30px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '<',
                                          }),
                                          Object(FG.jsx)(FQ.a, {
                                            fullWidth: true,
                                            sx: { width: '50%' },
                                            children: Object(FG.jsx)(Fx.a, {
                                              sx: {
                                                input: { textAlign: 'center' },
                                              },
                                              id: 'input-with-icon-textfield',
                                              variant: 'standard',
                                              value: a0,
                                              label: ''.concat(a4, ' chaps'),
                                              onChange: function (aN) {
                                                return aO(Number(aN.target.value))
                                              },
                                              type: 'number',
                                              InputLabelProps: {
                                                style: {
                                                  color: '#fff',
                                                  top: '-16px',
                                                  left: '-40px',
                                                },
                                              },
                                              InputProps: {
                                                style: { marginTop: '3px' },
                                              },
                                            }),
                                          }),
                                          Object(FG.jsx)(S0.a, {
                                            onClick: function () {
                                              return a0 <= a4 ? aO(a0 + 1) : ''
                                            },
                                            sx: {
                                              borderRadius: '4px',
                                              maxWidth: '30px',
                                              maxHeight: '29px',
                                              minWidth: '30px',
                                              minHeight: '30px',
                                            },
                                            size: 'small',
                                            color: 'error',
                                            variant: 'contained',
                                            children: '>',
                                          }),
                                        ],
                                      }),
                                    }),
                                  ],
                                }),
                              ],
                            }),
                          ],
                        }),
                        Object(FG.jsx)('div', {
                          className: Su.clothingRightSidebar,
                          children: Object(FG.jsxs)('div', {
                            className: Su.clothingRightSidebarInner,
                            children: [
                              Object(FG.jsx)('div', {
                                className: Su.clothingRightSidebarIcon,
                                children: Object(FG.jsx)('img', {
                                  style: { height: '45px' },
                                  src: 'https://i.imgur.com/i9wWn4D.png',
                                  alt: 'icon',
                                }),
                              }),
                              Object(FG.jsxs)('div', {
                                className: Su.clothingRightSidebarTabs,
                                children: [
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(0)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        0 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className: 'fas fa-female fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(1)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        1 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className: 'fas fa-smile fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(2)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        2 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className: 'fas fa-meh-blank fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(3)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        3 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className: 'fas fa-cut fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(4)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        4 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className: 'fas fa-palette fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                  Object(FG.jsx)('div', {
                                    onClick: function () {
                                      return c8(5)
                                    },
                                    className: Su.clothingRightSidebarTab,
                                    style: {
                                      background:
                                        5 === c7 ? 'rgb(34, 40, 49)' : '#30475e',
                                    },
                                    children: Object(FG.jsx)('i', {
                                      className:
                                        'fas fa-cloud-upload-alt fa-fw fa-w-14',
                                      style: {
                                        color: 'white',
                                        fontSize: '25px',
                                      },
                                    }),
                                  }),
                                ],
                              }),
                            ],
                          }),
                        }),
                      ],
                    }),
                  ],
                }),
              })
            )
          },
          Sg = function () {
            var SU = Object(FF.d)(FL)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'clothing',
              children: Object(FG.jsx)(SV, {}),
            })
          },
          SD = Object(FX.a)({
            statusHudOuterContainer: {
              width: '100vw',
              height: '100vh',
              display: 'flex',
              alignItems: 'flex-end',
              justifyContent: 'center',
            },
            statusHudInnerContainer: {
              border: '1px solid black',
              padding: '8px 32px',
              backgroundColor: 'rgb(34, 40, 49)',
            },
            statusHudLine: { marginBottom: '4px' },
          }),
          Sp = function (SU) {
            var Su = SD(),
              SC = Object(FF.c)(FH),
              SQ = Object(FI.a)(SC, 2),
              Sx = (SQ[0], SQ[1]),
              SA = Object(FF.c)(FS),
              Sq = Object(FI.a)(SA, 2),
              c0 = (Sq[0], Sq[1], Object(F4.useState)('')),
              c1 = Object(FI.a)(c0, 2),
              c2 = c1[0],
              c3 = c1[1],
              c4 = Object(F4.useState)([]),
              c5 = Object(FI.a)(c4, 2),
              c6 = c5[0],
              c7 = c5[1]
            return (
              Fl('uiMessage', function (c8) {
                var c9 = c8.data
                'status-hud' === c8.app &&
                  (true === c9.show
                    ? (c3(''),
                      c7([]),
                      Sx(true),
                      c9.title && c3(c9.title),
                      c9.values && c7(c9.values))
                    : false === c9.show && (c3(''), c7([]), Sx(false)))
              }),
              Object(FG.jsx)(FG.Fragment, {
                children: Object(FG.jsx)('div', {
                  className: Su.statusHudOuterContainer,
                  children: Object(FG.jsxs)('div', {
                    className: Su.statusHudInnerContainer,
                    children: [
                      c2 &&
                        Object(FG.jsx)('div', {
                          className: Su.statusHudLine,
                          children: Object(FG.jsx)(Ff.a, {
                            style: {
                              color: '#fff',
                              wordBreak: 'break-word',
                            },
                            variant: 'h6',
                            gutterBottom: true,
                            children: c2,
                          }),
                        }),
                      c6 && c6.length > 0
                        ? c6.map(function (c8) {
                            return Object(FG.jsx)(FG.Fragment, {
                              children: Object(FG.jsx)('div', {
                                className: Su.statusHudLine,
                                children: Object(FG.jsx)(Ff.a, {
                                  style: {
                                    color: '#fff',
                                    wordBreak: 'break-word',
                                  },
                                  variant: 'body1',
                                  gutterBottom: true,
                                  children: c8,
                                }),
                              }),
                            })
                          })
                        : Object(FG.jsx)(FG.Fragment, {}),
                    ],
                  }),
                }),
              })
            )
          },
          Sn = function () {
            var SU = Object(FF.d)(FH)
            return Object(FG.jsx)(Fv, {
              show: SU,
              name: 'status-hud',
              zIndex: 0,
              children: Object(FG.jsx)(Sp, {}),
            })
          },
          Sy = Object(F8.a)({
            components: {
              MuiTypography: { styleOverrides: { root: { margin: '0' } } },
              MuiMenuItem: {
                styleOverrides: {
                  root: {
                    backgroundColor: 'rgba(255, 255, 255, 0.02)',
                    '&.Mui-selected': {
                      backgroundColor: 'rgba(255, 255, 255, 0.3)',
                      '&.Mui-focusVisible': { background: 'rgba(0, 0, 0, 0.3)' },
                    },
                    '&.Mui-selected:hover': {
                      backgroundColor: 'rgba(255, 255, 255, 0.3)',
                    },
                  },
                },
              },
              MuiCircularProgress: {
                styleOverrides: { circle: { strokeLinecap: 'butt' } },
              },
              MuiInput: {
                styleOverrides: {
                  root: {
                    '& .MuiInput-root': {
                      color: 'white !important',
                      fontSize: '1.3vmin !important',
                    },
                    '& label.Mui-focused': { color: 'darkgray !important' },
                    '& Mui-focused': { color: 'darkgray !important' },
                    '& .MuiInput-underline:hover:not(.Mui-disabled):before': {
                      borderColor: 'darkgray !important',
                    },
                    '& .MuiInput-underline:before': {
                      borderColor: 'darkgray !important',
                      color: 'darkgray !important',
                    },
                    '& .MuiInput-underline:after': {
                      borderColor: 'white !important',
                      color: 'darkgray !important',
                    },
                    '& .Mui-focused:after': {
                      color: 'darkgray !important',
                      fontSize: '1.5vmin !important',
                    },
                    '& .MuiInputAdornment-root': { color: 'darkgray !important' },
                  },
                },
              },
              MuiTooltip: {
                styleOverrides: {
                  tooltip: {
                    fontSize: '1em',
                    maxWidth: '1000px',
                  },
                },
              },
            },
            palette: {
              mode: 'dark',
              primary: { main: '#95ef77' },
              secondary: { main: '#424cab' },
              success: { main: '#95ef77' },
              warning: { main: '#f2a365' },
              error: { main: '#ffffff' },
              info: { main: '#2d465b' },
            },
          }),
          St = function () {
            return Object(FG.jsx)('div', {
              id: 'main-app-container',
              children: Object(FG.jsxs)(F9.a, {
                theme: Sy,
                children: [
                  Object(FG.jsx)(Fi, {}),
                  Object(FG.jsx)(Fn, {}),
                  Object(FG.jsx)(FC, {}),
                  Object(FG.jsx)(S4, {}),
                  Object(FG.jsx)(SF, {}),
                  Object(FG.jsx)(Sa, {}),
                  Object(FG.jsx)(Sr, {}),
                  Object(FG.jsx)(SM, {}),
                  Object(FG.jsx)(SR, {}),
                  Object(FG.jsx)(ST, {}),
                  Object(FG.jsx)(FU, {}),
                  Object(FG.jsx)(Sg, {}),
                  Object(FG.jsx)(Sn, {}),
                  Object(FG.jsx)(S8, {}),
                ],
              }),
            })
          }
        F2(123)
        F2(124)
        F2(125)
        F2(126)
        F7.a.render(
          Object(FG.jsx)(FF.a, { children: Object(FG.jsx)(St, {}) }),
          document.getElementById('root')
        )
      },
      29: function (c, a, k) {},
    },
    [[127, 1, 2]],
  ])
  