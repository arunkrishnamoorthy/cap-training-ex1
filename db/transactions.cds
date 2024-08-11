namespace com.sophistex.exercise1.tx;

using { cuid, managed } from '@sap/cds/common';

aspect person {
    firstName: String(100);
    lastName: String(100);
    phone: String(20);
    email: String(100);
}

entity Customer: person {
    key ID: String(10);
}

entity Orders: cuid, managed {
    Customer: Association to one Customer;
    items: Composition of many OrderItems on items.parent = $self;
    virtual TotalAmount: Decimal(16,3);
}

entity OrderItems: cuid,managed {
    parent: Association to Orders;
    material: String(100);
    qty: Double;
}



