namespace com.sophistex.exercise1;
using { Currency } from '@sap/cds/common';
entity Books {
    key ID: Int16;
        Title: String(40) not null;
        price: Price @assert.range: [0,100];
        author: Association to one Authors; // Managed to one Association
        status: BookStatus default '01';
        stock: Integer;
}

type BookStatus : String enum {
    draft = '01';
    published = '02';
    archived = '03';
}

type Price {
    amount: Decimal(16,3);
    currency: Currency
}

type mailAddress {
            kind: String;
            mail: String;
        }

type mailAddresses : many { kind: String; mail: String; }


entity Authors {
    key ID: String(10);
        name: String(100);
        email: mailAddresses;
        books: Association to many Books on books.author = $self;
}


entity Employees {
    key ID: String;
        name: String;
        address: Association to Address on address.owner = $self;
}

entity Address {
    key ID: String;
    owner: Association to Employees;
    address: String;
}