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

var b2 = Bill(billId: 21, billDate: Date(), billType: .Hydro)
var h1 = Hydro(agencyName: "Hydroessens", unitConsumed: 900, billId: 21, billType: .Hydro)

var b3 = Bill(billId: 31, billDate: Date(), billType: .Internet)
var i1 = Internet(providerName: "Rogers", internetGBUsed: 4.25, billId: 31, billType: .Internet)

var c1 = Customer(customerId: 1, firstName: "Jyothi", lastName: "Thomas", emailId: "jyothithomas.05@gmail.com", bill: ["Internet" : i1.totalInternetBill, "Hydro": h1.totalHydroBill, "Mobile" : m1.totalMobileBill])

var b4 = Bill(billId: 12, billDate: Date(), billType: .Mobile)
var m2 = Mobile(billId: 12, billType: .Mobile, mobileManufacturerName: "Virgin", planName: "Fido", mobileNumber: "5045678901", internetGBUsed: 5.45, minuteUsed: 600)

var b5 = Bill(billId: 22, billDate: Date(), billType: .Hydro)
var h2 = Hydro(agencyName: "EssentialHydro", unitConsumed: 570, billId: 22, billType: .Hydro)

var c2 = Customer(customerId: 2, firstName: "James", lastName: "Thomas", emailId: "jamest644@gmail.com", bill: ["Hydro": h2.totalHydroBill, "Mobile" : m2.totalMobileBill])

c1.display()
b1.display()
m1.display()
b2.display()
h1.display()
b3.display()
i1.display()

c2.display()
b4.display()
m2.display()
b5.display()
h2.display()




