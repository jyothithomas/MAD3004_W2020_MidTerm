//
//  main.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation
var b1 = Bill(billId: 11, billDate: "2012-12-12".toDate(), billType: .Mobile)
var m1 = Mobile(billId: b1.billId, billType: .Mobile, mobileManufacturerName: "Bell", planName: "Freedom", mobileNumber: "4372435081", internetGBUsed: 3.29, minuteUsed: 4000)
var h1 = Hydro(agencyName: "Hydroessens", unitConsumed: 900, billId:b1.billId, billType: .Hydro)
var i1 = Internet(providerName: "Rogers", internetGBUsed: 4.25, billId: b1.billId, billType: .Internet)
var c1 = Customer(customerId: 1, firstName: "Jyothi", lastName: "Thomas", emailId: "jyothithomas.05@gmail.com", bill: ["Internet" : i1.totalBill(), "Hydro": h1.totalBill(), "Mobile" : m1.totalBill()])


var b4 = Bill(billId: 12, billDate: "2015-01-08".toDate(), billType: .Mobile)
var m2 = Mobile(billId: b4.billId, billType: .Mobile, mobileManufacturerName: "Virgin", planName: "Fido", mobileNumber: "5045678901", internetGBUsed: 5.45, minuteUsed: 600)
var h2 = Hydro(agencyName: "EssentialHydro", unitConsumed: 570, billId: b4.billId, billType: .Hydro)
var c2 = Customer(customerId: 2, firstName: "James", lastName: "Thomas", emailId: "jamest644@gmail.com", bill: ["Hydro": h2.totalBill(), "Mobile" : m2.totalBill()])


var b6 = Bill(billId: 32, billDate: "2014-02-07".toDate(), billType: .Internet)
var i2 = Internet(providerName: "BSNL", internetGBUsed: 7.75, billId: b6.billId , billType: .Internet)
var c3 = Customer(customerId: 3, firstName: "Raelyn", lastName: "James", emailId: "rae_lyn05@gmail.com", bill: ["Internet" : i2.totalBill()])

var in1 = Insurance(billId: 41, billType: .Insurance, insuranceProviderName: "Lic", typeOfInsurance: "Life Security", startDate: Date(), endDate: Date())

c1.display()
b1.display()
m1.display()
h1.display()
i1.display()

c2.display()
b4.display()
m2.display()
h2.display()

c3.display()
b6.display()
i2.display()













