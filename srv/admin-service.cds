

using com.sophistex.exercise1 as db from '../db/schema';

service DemoService @(path : '/odata/v4/demoservice') { 
    entity Books as projection on db.Books {
        *,
        'Sophistex' as Company: String
    } actions {
        action determinePrice() returns Integer;
    }
    entity Authors as projection on db.Authors {
        *,
        books        
    }

    function testFunction() returns String;
    action testAction(param1: String) returns String;

}