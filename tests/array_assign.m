useStrict();

import "io";
import "cmd";

const nestedArray = ["poop", 43, ["pop", 2], ["nested", ["array", [":("]]]];
print(nestedArray); // [ poop, 43, [ "pop", 2 ], [ "nested", [ "array", [ ":(" ] ] ] ]

nestedArray[0] = "not poop";
print(nestedArray); // [ not poop, 43, [ "pop", 2 ], [ "nested", [ "array", [ ":(" ] ] ] ]

nestedArray[2][1] = 5;
print(nestedArray); // [ poop, 43, [ "pop", 5 ], [ "nested", [ "array", [ ":(" ] ] ] ]

nestedArray[3][1][1][0] = ":)";
print(nestedArray); // [ poop, 43, [ "pop", 5 ], [ "nested", [ "array", [ ":)" ] ] ] ]

// you must use brackets to use an expression within the item selector (otherwise it will error)
nestedArray[2][(0+1)] = 7;
print(nestedArray); // [ poop, 43, [ "pop", 7 ], [ "nested", [ "array", [ ":)" ] ] ] ]

nestedArray[util.strlen("a")] = 34;
print(nestedArray); // // [ poop, 34, [ "pop", 7 ], [ "nested", [ "array", [ ":)" ] ] ] ]


const msg = "Search array for: ";
const searchFor = io::read(msg);

let foundIndex = -1;
let display = "";
let inArr = "main";

func recursiveLoop {
    while (let i = 0; i<util.len(util.arg)) {
        if (util.arg[i] == searchFor) {
            foundIndex = i;
            display = foundIndex;
            break;
        }
        i += 1;
    }
}

recursiveLoop(nestedArray);

if (foundIndex > -1) {
    print("FOUND OCCURANCE AT: "+inArr+":"+display);
} else {
    printf("No occurances of \"%v\" found.", searchFor);
}