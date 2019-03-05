//
//  AccountSettingsPinCodeViewController.swift
//  i2app
//
//  Created by Arcus Team on 5/23/16.
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//

import UIKit
import Cornea

class AccountSettingsPinCodeViewController: ArcusPinCodeViewController, PlaceEditor {

    var currentPlaceAndRole: PlaceAndRoleModel?
    var numberOfGuestPlaces: Int?
    var numberOfOwnedPlaces: Int?

    fileprivate let pinCodeConfirmSegueIdentifier = "pinCodeConfirmSegue"

    @IBOutlet weak var tickMarkContainerView: UIView!

    //-------------------------------------------------------------------------------
    // MARK: - UIViewController
    //-------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        setBackgroundColorToDashboardColor()
        navBar(withBackButtonAndTitle: NSLocalizedString("PIN CODE", comment:""))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let pinCodeConfirmVC = segue.destination
          as? AccountSettingsPinCodeConfirmationViewController else {
            return
        }

        pinCodeConfirmVC.initiallyEnteredPin = self.enteredPin
        pinCodeConfirmVC.placeIdToSetPinOn = currentPlaceAndRole?.placeId
        pinCodeConfirmVC.tickToTopValueToUse = tickMarkContainerView.frame.origin.y
    }

    //-------------------------------------------------------------------------------
    // MARK: - ArcusPinCodeViewController overrides
    //-------------------------------------------------------------------------------
    @IBAction override func numericButtonPressed(_ sender: UIButton!) {
        super.numericButtonPressed(sender)
        if enteredPin.characters.count == 4 {
            performSegue(withIdentifier: pinCodeConfirmSegueIdentifier, sender: self)
        }
    }

}