//
//  main.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

var b1 = Bill(billId: 11, billDate: Date(), billType: .Mobile)
var m1 = Mobile(billId: 11, billType: .Mobile, mobileManufacturerName: "Bell", planName: "Freedom", mobileNumber: "4372435081", internetGBUsed: 3.29, minuteUsed: 4000)

b1.display()
m1.display()

var b2 = Bill(billId: 21, billDate: Date(), billType: .Hydro)
var h1 = Hydro(agencyName: "Hydroessens", unitConsumed: 900, billId: 21, billType: .Hydro)

b2.display()
h1.display()

var b3 = Bill(billId: 31, billDate: Date(), billType: .Internet)
var i1 = Internet(providerName: "Rogers", internetGBUsed: 4.25, billId: 31, billType: .Internet)

b3.display()
i1.display()

var c1 = Customer(customerId: 1, firstName: "Jyothi", lastName: "Thomas", emailId: "jyothithomas.05@gmail.com", bill: ["Internet" : i1.totalInternetBill, "Hydro": h1.totalHydroBill, "Mobile" : m1.totalMobileBill])

c1.display()



