//
//  main.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

//Object creation for Mobile Class
var m1 = Mobile(billId: "M001", billDate: "2017-07-08".toDate(), billType: .Mobile, mobileManufacturerName: "Bell", planName: "Freedom", mobileNumber: "4372435981", internetGBUsed: 3.29, minuteUsed: 400.0)

//Object Creation for Hydro Class
var h1 = Hydro(billId: "H001", billDate: "2016-07-08".toDate(), billType: .Hydro, agencyName: "Hydroessens", unitConsumed: 900)
//Object Creation for Internet Class
var i1 = Internet(billId: "I001", billDate: "2015-01-08".toDate(), billType: .Internet,providerName: "Rogers", internetGBUsed: 2.25)

var m2 = Mobile(billId: "M002", billDate: "2018-04-09".toDate(), billType: .Mobile, mobileManufacturerName: "Virgin", planName: "Fido", mobileNumber: "5045678901", internetGBUsed: 1.45, minuteUsed: 600.0)

var h2 = Hydro(billId: "H002", billDate: "2019-02-03".toDate(), billType: .Hydro,agencyName: "EssentialHydro", unitConsumed: 570)


var i2 = Internet(billId: "I002", billDate: "2015-01-08".toDate(), billType: .Mobile,providerName: "BSNL", internetGBUsed: 7.75)

// Object Creation For customer Class
var c1 = Customer(customerId: 1, firstName: "Jyothi", lastName: "Thomas", emailId: "jyothithomas.05@gmail.com")
var c2 = Customer(customerId: 2, firstName: "James", lastName: "Thomas", emailId: "jamest644@gmail.com")
var c3 = Customer(customerId: 3, firstName: "Raelyn", lastName: "James", emailId: "rae_lyn05@gmail.com")
var c4 = Customer(customerId: 4, firstName: "Annos", lastName: "Mol", emailId: "ann_oos@gmail.com")


var in1 = Insurance(billId: "IN001", billType: .Insurance, insuranceProviderName: "Lic", typeOfInsurance: "Life Security", startDate: "2019-09-09".toDate(), endDate: Date())

// adding bill class details to customer object
c1.addBill(bill: m1, billId: m1.billId)
c1.addBill(bill: i1, billId: i1.billId)
c1.addBill(bill: h1, billId: h1.billId)
c1.display()

c2.addBill(bill: m2, billId: m2.billId)
c2.addBill(bill: i2, billId: i2.billId)
c2.display()

c3.addBill(bill: h2, billId: h2.billId)
c3.display()

c4.addBill(bill: in1, billId: in1.billId)
c4.display()

//appending all customers to an array for getting customer details
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

//function to display the details of a customer by ID
   func getCustomerById(customerId: Int)
   {
   var flag = 0
   for i in customers
     {
        if (customerId == i.customerId)
         {
        print("******* Customer Details by ID ***********")
         flag = 1
         i.display()
         }
     }
     if (flag == 0){
       print("\n No Customer with this Id:(\(customerId)) Exist")
     }
   }

//getCustomerById(customerId: 1)














