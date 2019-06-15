{
    "id": "0e296cc1-2798-4ac5-a7bc-c28c92b6d121",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "TJSON",
    "IncludedResources": [
        "Scripts\\scr_tjson_demo",
        "Rooms\\rm_tjson_demo",
        "Included Files\\tjson-doc.html"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554172285166,
    "date": "2019-44-14 09:06:57",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "c0a83702-99c3-4158-b39b-595bd9f1f22a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "31840a67-5659-4048-9275-3da47de8f8d5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_error_text",
                    "hidden": false,
                    "value": "g_tj_error_text"
                },
                {
                    "id": "379a395c-9b9e-49be-8baa-871ad43fd756",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_true",
                    "hidden": false,
                    "value": "g_tj_true"
                },
                {
                    "id": "df7fc3bc-80d6-4bde-9ce2-e5bff049bf28",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_false",
                    "hidden": false,
                    "value": "g_tj_false"
                },
                {
                    "id": "7c43542a-631c-41e6-b59a-16c5087ab37d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_error",
                    "hidden": false,
                    "value": "g_tj_error"
                },
                {
                    "id": "32c5344e-5fe3-48c9-9fa7-075d02808bf7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_null",
                    "hidden": false,
                    "value": "undefined"
                },
                {
                    "id": "013e0086-49ae-44f2-8863-038be72fdf5c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_separator",
                    "hidden": true,
                    "value": "chr(27)"
                },
                {
                    "id": "feeddc7c-5050-4609-985f-33643f6c2d80",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_undefined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "eef7fc09-7fa5-460f-bf63-52bac18d610c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_boolean",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "73457edc-98ab-44d4-b5ac-9c2c1ca55e13",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_number",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "4c6053d9-3b25-47c4-a1a2-0e53e8cca2a9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_string",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "9cbda8ff-4994-41e2-8b7d-bcd2794149a7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_array",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "c1800dd6-0622-4ac4-b95f-3ba1b911bf5d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_object",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "5c97f487-8490-4102-a78c-b13fe4e67af1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_error",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "4adbda6f-e5bc-424a-835f-8abe75c92df2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_key_sep",
                    "hidden": true,
                    "value": "27"
                },
                {
                    "id": "758c2e20-864d-4f79-bb2f-210605cb4951",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_key_true",
                    "hidden": true,
                    "value": "35554"
                },
                {
                    "id": "11b41320-8780-4fc9-af77-1a0d7316260a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_key_false",
                    "hidden": true,
                    "value": "35554"
                },
                {
                    "id": "37db49c5-7bcd-40e2-91b6-8599e99559ec",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_key_null",
                    "hidden": true,
                    "value": "37090"
                },
                {
                    "id": "57e3bf06-2a3a-497c-a23c-16bb0a174b16",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_key_number",
                    "hidden": true,
                    "value": "35554"
                },
                {
                    "id": "9c2720b7-eb00-4892-9a07-0ad69283934c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_unknown",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "05877415-00c5-4282-856f-98dfb688c705",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_decode_esc",
                    "hidden": true,
                    "value": "92"
                }
            ],
            "copyToTargets": 113497714200782,
            "filename": "tjson-native.gml",
            "final": "",
            "functions": [
                {
                    "id": "b1e803f2-093e-4bd4-8766-acd49363220a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_init_gml",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_init_gml",
                    "returnType": 2
                },
                {
                    "id": "6e9ceeda-ccda-40d0-b733-bf062fc0463c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "tj_stringbuf_add_sub",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_stringbuf_add_sub",
                    "returnType": 2
                },
                {
                    "id": "d533e1de-2cd3-4e32-ba2c-e6d5f9ec4a66",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_stringbuf_to_string",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_stringbuf_to_string",
                    "returnType": 2
                },
                {
                    "id": "4a18442e-5716-481d-8f3e-b887d4862bc4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_opt_value_keys",
                    "help": "tj_opt_value_keys(?allow:bool)->bool : [native-only] Returns\/changes whether keys can be non-string (non-spec-compliant)",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_opt_value_keys",
                    "returnType": 2
                },
                {
                    "id": "b6b4d4d6-969f-4b94-921c-f35ed499c668",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_uxchar",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_uxchar",
                    "returnType": 2
                },
                {
                    "id": "7eba6c5d-ea7d-4a5c-972b-00731d0af227",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_decode_string",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode_string",
                    "returnType": 2
                },
                {
                    "id": "6af288d8-c8cf-4442-a838-29b24738f268",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_decode_number",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode_number",
                    "returnType": 2
                },
                {
                    "id": "dfc58680-38de-47c9-bf0f-db31239fb765",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_decode_value",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode_value",
                    "returnType": 2
                },
                {
                    "id": "ccd9a2e3-f4ac-4403-951e-144d6c19d361",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_decode",
                    "help": "tj_decode(json:string)->TjValue",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode",
                    "returnType": 2
                },
                {
                    "id": "886aa2ae-6ddc-4860-ab28-a77876fe7553",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_encode_string",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode_string",
                    "returnType": 2
                },
                {
                    "id": "c33e2d29-a95b-4931-8783-e8d21a36ea06",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "tj_encode_value",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode_value",
                    "returnType": 2
                },
                {
                    "id": "06b50b61-c3b6-4832-a55b-6d9335f66103",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_encode",
                    "help": "tj_encode(value:TjValue, ?indent:string)->string",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode",
                    "returnType": 2
                },
                {
                    "id": "9cdabd73-bd56-46eb-b607-86a83b6a9319",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_source__new",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_source__new",
                    "returnType": 2
                },
                {
                    "id": "52bc2498-bb8c-4545-aad7-96794b13341c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "tj_source_sub",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_source_sub",
                    "returnType": 2
                },
                {
                    "id": "617909eb-0903-4969-8316-20b16493f552",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_array",
                    "help": "tj_is_array(q:dynamic)->bool : Returns whether a value is a TJSON array",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_array",
                    "returnType": 2
                },
                {
                    "id": "5d9f033d-63cd-45af-98f2-700103c31dd0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_object",
                    "help": "tj_is_object(q:dynamic)->bool : Returns whether a value is a TJSON object",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_object",
                    "returnType": 2
                },
                {
                    "id": "224f44d5-b3db-43ba-8f6e-bb68ee13927c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_magic_value",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_magic_value",
                    "returnType": 2
                },
                {
                    "id": "ed1d4774-9932-4376-ba9f-434ddaa2c616",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_bool",
                    "help": "tj_bool(v:bool)->TjValue",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_bool",
                    "returnType": 2
                },
                {
                    "id": "c20feb9d-8a52-4c1e-9840-576fa2bcb3b3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_bool",
                    "help": "tj_is_bool(v:TjValue)->bool",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_bool",
                    "returnType": 2
                },
                {
                    "id": "ff12c29e-0802-401f-8764-f1488da2a87a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_typeof",
                    "help": "tj_typeof(q:TjValue)->string : Returns a type of given TJSON value as string.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_typeof",
                    "returnType": 2
                },
                {
                    "id": "62d01fcb-a6a8-4dec-8a75-ec03611d515c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_typeid",
                    "help": "tj_typeid(q:TjValue)->string : Returns a type of given TJSON value as tj_type.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_typeid",
                    "returnType": 2
                },
                {
                    "id": "dc72aa5d-fc93-4c36-92f2-cd647c1b52fc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_object_empty_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_object_empty_init",
                    "returnType": 2
                },
                {
                    "id": "5e435dab-4f5f-4419-8280-28238ad52f17",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_object",
                    "help": "tj_object(...key_value_pairs:TjValue)->TjValue : Creates a TJSON object from pairs of provided keys and values",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_object",
                    "returnType": 2
                },
                {
                    "id": "01081c23-bbdd-4b7c-a333-35faeb4c2f79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_array",
                    "help": "tj_array(...values:TjValue)->array<TjValue> : Crates an TJSON array from the provided arguments.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_array",
                    "returnType": 2
                },
                {
                    "id": "dbaeaa69-b93c-4929-a475-ed26b46fc61c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_get",
                    "help": "tj_get(q:TjValue, key:string)->TjValue : Retrieves a field out of a TJSON object.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_get",
                    "returnType": 2
                },
                {
                    "id": "7dfc67d6-a691-4d41-b429-40560b691a0b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "tj_set",
                    "help": "tj_set(q:TjValue, key:string, val:TjValue) : Changes a field in the given TJSON object.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_set",
                    "returnType": 2
                },
                {
                    "id": "c71fbf51-00d4-4c39-a03f-db6fde81099e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_size",
                    "help": "tj_size(q:TjValue)->int : Returns the number of fields on given TJSON object, 0 if it isn't an object.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_size",
                    "returnType": 2
                },
                {
                    "id": "a5fe086d-d939-43d8-af34-30de9b798d49",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_keys",
                    "help": "tj_keys(q:TjValue)->array<string> : Returns an array containing the fields of the given TJSON object.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_keys",
                    "returnType": 2
                },
                {
                    "id": "3337ae47-449b-4775-8407-d7cf3555dfd1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_compare",
                    "help": "tj_compare(a:TjValue, b:TjValue)->bool : Recursively compares whether the two values match.",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_compare",
                    "returnType": 2
                },
                {
                    "id": "02f67faf-e867-49bf-a47e-07101681457f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_encode_float",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode_float",
                    "returnType": 2
                },
                {
                    "id": "12d15604-a326-4aa3-b2e0-b28a9837e727",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_object_wkey",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_object_wkey",
                    "returnType": 2
                },
                {
                    "id": "034fb111-29a9-4ed4-bdb2-f384bc8c73c8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_decode_uxchar",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode_uxchar",
                    "returnType": 2
                },
                {
                    "id": "5cb86225-2c8a-468a-ad28-4f18a6f36af7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_decode_main",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode_main",
                    "returnType": 2
                },
                {
                    "id": "246b1020-d13a-4a16-b476-bf877d8c85d0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_encode_number",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode_number",
                    "returnType": 2
                },
                {
                    "id": "ceee5b0e-b2a0-4bc0-998f-03f65c95ab9b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_encode_main",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode_main",
                    "returnType": 2
                },
                {
                    "id": "ab640c60-6d39-40b7-bdfe-922a37380ea7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_copy",
                    "help": "tj_copy(val:TjValue)->TjValue : Recursively copies the given TJSON value and returns it",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_copy",
                    "returnType": 2
                },
                {
                    "id": "73fe9b8b-9841-4669-b1ab-307d2fdeef16",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_stringbuf_add_key",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_stringbuf_add_key",
                    "returnType": 2
                },
                {
                    "id": "15b7ab62-401a-4740-b0b1-3ca0d00042fc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_object_empty_lookup_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_object_empty_lookup_init",
                    "returnType": 2
                },
                {
                    "id": "f669f6d4-b09a-4eb1-ac31-7ce233d942aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_delete",
                    "help": "tj_delete(q:TjValue, key:string) : Removes a field from a TJSON object (note: not fast)",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_delete",
                    "returnType": 2
                },
                {
                    "id": "16cebd6e-c028-4593-8235-ed701a0a9ced",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_opt_ident_keys",
                    "help": "tj_opt_ident_keys(?allow:bool)->bool : [native-only] Returns\/changes whether keys can be unquoted (non-spec-compliant)",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_opt_ident_keys",
                    "returnType": 2
                }
            ],
            "init": "tj_init_gml",
            "kind": 2,
            "order": [
                
            ],
            "origname": "tjson-native.gml",
            "uncompress": false
        },
        {
            "id": "4279f58f-22c8-46ce-be07-9087de918e0c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "8828dd27-3ffe-42c5-9612-fab48fbdd3bb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_error_text",
                    "hidden": true,
                    "value": "tj_get_error_text()"
                }
            ],
            "copyToTargets": 98336,
            "filename": "tjson-web.js",
            "final": "",
            "functions": [
                {
                    "id": "24f55eb4-3bd0-4fbb-a05e-6af13575a2bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_get_error_value",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_get_error_value",
                    "returnType": 2
                },
                {
                    "id": "e19b3f83-7b3c-4d91-a600-3a1a11d55c10",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_get_error_text",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_get_error_text",
                    "returnType": 2
                },
                {
                    "id": "187cca05-7616-4649-a230-820524e79b71",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_get_null_value",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_get_null_value",
                    "returnType": 2
                },
                {
                    "id": "e1981af5-6f8c-4642-a370-e24bdd157c63",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_bool",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_bool",
                    "returnType": 2
                },
                {
                    "id": "20e0834c-2ded-4e07-8bb9-02e8aa2da78d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_bool",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_bool",
                    "returnType": 2
                },
                {
                    "id": "cce906cb-7693-4f67-8d21-b4a11e7dc999",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_object",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_object",
                    "returnType": 2
                },
                {
                    "id": "14cc4ccb-0301-495d-873d-47b2e94559e2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_array",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_array",
                    "returnType": 2
                },
                {
                    "id": "adf6b213-4379-418a-9f2d-4306bf1ba159",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_object",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_object",
                    "returnType": 2
                },
                {
                    "id": "965c73e4-5261-4470-acb9-f997ab3667af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_is_array",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_is_array",
                    "returnType": 2
                },
                {
                    "id": "6e3c4579-730c-4492-8c3c-335fdee33e55",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_get",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_get",
                    "returnType": 2
                },
                {
                    "id": "742f994c-fa44-4d2b-b855-606a4a65bf5f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "tj_set",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_set",
                    "returnType": 2
                },
                {
                    "id": "d4ec0f41-4a2b-40b6-a531-0492c570443d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_size",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_size",
                    "returnType": 2
                },
                {
                    "id": "6323d22d-f0d4-4f7f-a3d2-818f1859f508",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_keys",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_keys",
                    "returnType": 2
                },
                {
                    "id": "2ccbe997-d098-4773-af78-66637d8665f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_typeof",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_typeof",
                    "returnType": 2
                },
                {
                    "id": "f3b2c806-4935-406d-a1aa-3cd8dfb0d6df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_typeid",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_typeid",
                    "returnType": 2
                },
                {
                    "id": "8a7030dc-a4fb-45d3-9663-fa022077a79b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_compare",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_compare",
                    "returnType": 2
                },
                {
                    "id": "80f409b4-ba62-4980-badd-c52fcf44d101",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_decode",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_decode",
                    "returnType": 2
                },
                {
                    "id": "748d8b54-8d09-4c29-b082-bbc4fb600424",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tj_encode",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_encode",
                    "returnType": 2
                },
                {
                    "id": "fb865c11-3969-4053-966b-39a9b047f0ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_init_js",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_init_js",
                    "returnType": 2
                },
                {
                    "id": "b2be89f6-f83c-40cb-89e0-0a302a751a96",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tj_delete",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_delete",
                    "returnType": 2
                },
                {
                    "id": "687efba3-ef0d-4e7f-b3d4-1214ee61fab3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tj_copy",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_copy",
                    "returnType": 2
                },
                {
                    "id": "55326f9b-b956-4df0-851f-0442acdf6ff6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_opt_value_keys",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_opt_value_keys",
                    "returnType": 2
                },
                {
                    "id": "0a4922d7-55b7-4aff-94a0-b40f37f9a13d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_opt_ident_keys",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_opt_ident_keys",
                    "returnType": 2
                }
            ],
            "init": "tj_init_js",
            "kind": 5,
            "order": [
                
            ],
            "origname": "extensions\\tjson-web.js",
            "uncompress": false
        },
        {
            "id": "ad7262ad-b53e-4ca1-9a33-ca89e42714b3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "4b9726bf-84b8-4523-8cf5-a5ae20021851",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_true",
                    "hidden": true,
                    "value": "(global.g_tj_true)"
                },
                {
                    "id": "70f07729-bc1e-4624-bfc9-d3d0e774b25b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_false",
                    "hidden": true,
                    "value": "(global.g_tj_false)"
                },
                {
                    "id": "4cdcfd68-b653-4e3b-b44d-ccc94c507925",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_null",
                    "hidden": true,
                    "value": "(global.g_tj_null)"
                },
                {
                    "id": "e4428b64-f25b-4ab1-b65c-a57fc9950add",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_error",
                    "hidden": true,
                    "value": "(global.g_tj_error)"
                },
                {
                    "id": "0686d095-3e7b-40e0-bce3-3e3b9addcfb2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_undefined",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "764fa4a9-8ffe-4f57-9025-1df7cb6e4ccb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_boolean",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "8eaea0cb-fc50-4c80-934c-4e6cc1124115",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_number",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "af0135dc-bd61-4896-8659-ef152b611858",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_string",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "67df9a00-01d3-48d7-a601-74e7d3c20f74",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_array",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "eb273aa4-94c6-4d22-b990-ca9857395119",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_object",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "53075cd1-a811-4ce8-bc9f-031afd8f6a5a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "tj_type_error",
                    "hidden": true,
                    "value": "6"
                }
            ],
            "copyToTargets": 98336,
            "filename": "tjson-web.gml",
            "final": "",
            "functions": [
                {
                    "id": "fb80a23c-9f18-4de1-904c-e202ba584853",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tj_init_js_gml",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "tj_init_js_gml",
                    "returnType": 2
                }
            ],
            "init": "tj_init_js_gml",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "cc.yal.tjson",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.3"
}