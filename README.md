# ObjExC

Set of extensions to Objective-C, which should make your coding easier.

### NSObject+ObjExC

* `ex_as:(Class)cls`
* `ex_as:(Class)cls strict:(BOOL)strict`

Allows to safely "cast" objects to expected class. Great when you get `id` as a result but have to make sure it's a selected class (ex. when getting JSON).

#### Convenience methods

* `ex_asString`
* `ex_asNumber`
* `ex_asArray`
* `ex_asDictionary`
* `ex_asSet`

#### Example

    - (void)fetchPost
    {
    	[self.backendManager fetchJSONFromURL:[NSURL URLWithString:@"http://someurl"] 
    						   withCompletion:^(id responeObject) {
    		NSDictionary *jsonDict = [responseObject ex_as:[NSDictionary class]];
    		// or [responeObject ex_asDictionary] for short
    		if (jsonDict) { // <- this will be nil if responseObject wasn't NSDictionary
    						// in most cases it would be safe to skip the if and just get nils
    			NSString *title = jsonDict[@"title"];
    			NSString *username = jsonDict[@"username"];
    			// ...
    		}
    	}];
    }

#### Shorthand

If you don't want to use `ex_` prefix for all those methods, define `OBJEX_AS_SHORTHAND` in your project.