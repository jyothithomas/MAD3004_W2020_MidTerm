//
//  main.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

var m1 = Mobile(billId: "M001", billDate: "2017-07-08".toDate(), billType: .Mobile, mobileManufacturerName: "Bell", planName: "Freedom", mobileNumber: 4372435981, internetGBUsed: 3.29, minuteUsed: 400.0)


var h1 = Hydro(billId: "H001", billDate: "2016-07-08".toDate(), billType: .Hydro, agencyName: "Hydroessens", unitConsumed: 900)

var i1 = Internet(billId: "I001", billDate: "2015-01-08".toDate(), billType: .Internet,providerName: "Rogers", internetGBUsed: 4.25)

var m2 = Mobile(billId: "M002", billDate: "2018-04-09".toDate(), billType: .Mobile, mobileManufacturerName: "Virgin", planName: "Fido", mobileNumber: 5045678901, internetGBUsed: 5.45, minuteUsed: 600.0)

var h2 = Hydro(billId: "H002", billDate: "2019-02-03".toDate(), billType: .Hydro,agencyName: "EssentialHydro", unitConsumed: 570)


var i2 = Internet(billId: "I002", billDate: "2015-01-08".toDate(), billType: .Mobile,providerName: "BSNL", internetGBUsed: 7.75)

var c1 = Customer(customerId: 1, firstName: "Jyothi", lastName: "Thomas", emailId: "jyothithomas.05@gmail.com")
var c2 = Customer(customerId: 2, firstName: "James", lastName: "Thomas", emailId: "jamest644@gmail.com")
var c3 = Customer(customerId: 3, firstName: "Raelyn", lastName: "James", emailId: "rae_lyn05@gmail.com")
var c4 = Customer(customerId: 4, firstName: "Annos", lastName: "Mol", emailId: "ann_oos@gmail.com")

/*c1.display()
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
i2.display()*/

//var in1 = Insurance(billId: 41, billType: .Insurance, insuranceProviderName: "Lic", typeOfInsurance: "Life Security", startDate: Date(), endDate: Date())

c1.addBill(bill: m1, billId: m1.billId)
c1.addBill(bill: i1, billId: i1.billId)
c1.addBill(bill: h1, billId: h1.billId)
c1.display()

c2.addBill(bill: m2, billId: m2.billId)
c2.addBill(bill: i2, billId: i2.billId)
c2.display()

c3.addBill(bill: h2, billId: h2.billId)
c3.display()

var customers = [Customer]()
customers.append(c1)
customers.append(c2)
customers.append(c3)
customers.append(c4)

if customers.count==0
{
    print("No customers")
}
else
{
    print("***********************List Of Customers*****************************")
    for i in customers
    {
        print("\(i.customerId) : \(i.fullName)")
    }
}

   /* func findCustomerByID(id: Int)
    {
        for c in customers
        {
            if (id == c.customerId)
            {
               print(id)
                

            }
            else
            {
                print("Customer  \(id) not found")
            }
        }
        return nil

    }*/

    














