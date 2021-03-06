/* E-mail confirmation sample for BlackBerry 10 - Client side
 * Copyright (C) <2015> Dielson Carvalho <dielson.carvalho@compelab.org>
 * Copyright (C) <2015> Leandro Melo de Sales <leandro@compelab.org>
 *
 * This code is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU. Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this code; if not, write to the
 
 
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

import bb.cascades 1.4

Page {
    attachedObjects: [
        ComponentDefinition {
            id: mRegisterFactory
            Register {
            }
        }
    ]
    titleBar: TitleBar {
        title: "Account Status"
    }
    actions: [
        ActionItem {
            title: "Add Account"
            imageSource: "asset:///images/ic_add.png"
            ActionBar.placement: ActionBarPlacement.OnBar
            onTriggered: {
                var registerObject = mRegisterFactory.createObject();
                registerObject.open();
            }
        }
    ]
    Container {
        topPadding: 30
        layout: DockLayout {
        }
        Container {
            verticalAlignment: VerticalAlignment.Top
            horizontalAlignment: HorizontalAlignment.Center
            Button {
                text: qsTr("Clean confirmed account")
                onClicked: {
                    _status.resetStatus();
                }
            }
        }
        
        Container {
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            Container {
                horizontalAlignment: HorizontalAlignment.Center
                ActivityIndicator {
                    id: mActivity
                    preferredHeight: 100
                    preferredWidth: 100
                    onCreationCompleted: {
                        _status.waitingConfirmation.connect(mActivity.start);
                        _status.confirmed.connect(mActivity.stop);
                    }
                }
            }
            Label {
                text: _status.statusMessage
                textFit.minFontSizeValue: 11.0
                multiline: true
            }
        }
    }
}
