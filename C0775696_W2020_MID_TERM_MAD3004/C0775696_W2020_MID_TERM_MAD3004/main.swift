//
//  main.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

var b1 = Bill(billId: 01, billDate: Date(), billType: .Mobile)
var m1 = Mobile(billId: 01, billDate: Date(), billType: .Mobile, mobileManufacturerName: "Bell", planName: "Freedom", mobileNumber: "4372435081", internetGBUsed: 3.29, minuteUsed: 400)

b1.display()
m1.display()

