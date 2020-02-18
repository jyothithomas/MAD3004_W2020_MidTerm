//
//  Customer.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

class Customer: IDisplay
{
    var customerId: Int
    var firstName: String
    var lastName: String
    var fullName: String
        {
            return "\(firstName) \(lastName)"
        }
    var emailId: String
    lazy var bills = [String : Bill]()
    var totalAmountToPay: Double = 0.0
        init(customerId:Int, firstName:String, lastName:String, emailId:String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName 
        self.emailId = emailId
            if isValidEmail(self.emailId)
            {
              self.emailId = emailId
            }
              else
            {
              print("\nTHIS EMAIL IS INVALID: \(emailId)")
              exit(0)
            }
    }
    func addBill(bill: Bill, billId: String)
    {
        bills.updateValue(bill, forKey: billId)
    }
    
    func removeBill(billID:String)
    {
        bills.removeValue(forKey: billID)
    }
    
    func calculateTotalBill() {
        for i in bills {
            totalAmountToPay = totalAmountToPay + i.value.totalBilltoPay
        }
    }
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
    
    func display() {
        print("************************Customer Details*******************************")
        print("Customer ID:                     \(customerId) ")
        print("Customer Name                    \(fullName)")
        print("Customer Email id                \(emailId)")
                print("bill details")
        for i in bills
        {
            i.value.display()
        }
         if bills.count == 0
        {
            print("This Customer has no bills")
        }
        else
        {
            calculateTotalBill()
            print("\t \t Total Bill Amount to Pay : \(totalAmountToPay.currency())")
        }
        print("***********************************************************************")
    }
}
