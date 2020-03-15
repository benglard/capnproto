# Copyright (c) 2013-2014 Sandstorm Development Group, Inc. and contributors
# Licensed under the MIT License:
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

@0x9eb32e19f86ee174;

using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("addressbook");

struct Person {
  # Person is a nice struct
  id @0 :UInt32; # Person::id is a nice field
  name @1 :Text; # Name field
  email @2 :Text; # Email field
  phones @3 :List(PhoneNumber); # List of phones
  # this is a long list of phones

  struct PhoneNumber {
    # PhoneNumber is a nice struct
    number @0 :Text;
    type @1 :Type;

    enum Type {
      # Type is a nice enum
      mobile @0;
      home @1;
      work @2;
    }
  }

  employment :union {
    # Employment is a nice union
    unemployed @4 :Void;
    employer @5 :Text;
    school @6 :Text;
    selfEmployed @7 :Void;
    # We assume that a person is only one of these.
  }
}

struct AddressBook { # AddressBook is a nice struct
  # Really nice indeed!
  # I've never known a better struct. This is a long doc comment!
  people @0 :List(Person);
}
