import Foundation
import CoreData

public 
class Manageorder: NSManagedobject { // NSManagedobject: A base class that implements the behavior required of a Core Data model object
    func toOrder -> Order{
        let billingAddress = Address(street1: billingAddressStreet1!, street2: billingAddressStreet2!, city: billingAddressCity!, state: billingAddressState!, zip: billingAddressZIP!)
    let shipmentAddress = Address(street1: shipmentAddressStreet1!, street2: shipmentAddressStreet2!, city: shipmentAddressCity!, state: shipmentAddressState!, zip: shipmentAddressZIP!)
    let paymentMethod = PaymentMethod(creditCardNumber: paymentMethodCreditCardNumber!, expirationDate: paymentMethodExpirationDate!, cvv: paymentMethodCVV!)
    let shipmentMethod = ShipmentMethod(speed: .Standard)
    return Order(firstname: FirstName!, lastname: LastName!, email: Email!, billingAddress: billingAddress, paymentMethod: paymentMethod,shipmentAddress: shipmentAddress)
    }

    func fromOrder(order: Order){
    firstName = order.firstName
   lastName = order.lastName
   phone = order.phone
   email = order.email

// Billing address is coming from struct billingaddress of Oder.swift
   billingAddressStreet1 = order.billingAddress.street1
    billingAddressStreet2 = order.billingAddress.street2
    billingAddressCity = order.billingAddress.city
    billingAddressState = order.billingAddress.state
    billingAddressZIP = order.billingAddress.zip

// comes from paymentmethod of Order.swift
    paymentMethodCreditCardNumber = order.paymentMethod.creditCardNumber
    paymentMethodExpirationDate = order.paymentMethod.expirationDate
    paymentMethodCVV = order.paymentMethod.cvv

// comes from shipping address of Order.swift
    shipmentAddressStreet1 = order.shipmentAddress.street1
    shipmentAddressStreet2 = order.shipmentAddress.street2
    shipmentAddressCity = order.shipmentAddress.city
    shipmentAddressState = order.shipmentAddress.state
    shipmentAddressZIP = order.shipmentAddress.zip

// nsNUMBER is a object wrapper to convert scalar numeric datatype
    shipmentMethodSpeed = NSNumber(integerLiteral: order.shipmentMethod.speed.rawValue)

    id = order.id
    date = order.date
    total = order.total

    }
}
