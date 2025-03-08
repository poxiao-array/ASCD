'solc --version' running
'solc ./dataset/contracts/transaction_order/16054.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/16054.sol:
./dataset/contracts/transaction_order/16054.sol:142:5: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
    function Hack(){
    ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/16054.sol:79:5: Warning: This declaration shadows an existing declaration.
    uint256 secret = uint256(hash);
    ^------------^
./dataset/contracts/transaction_order/16054.sol:15:1: The shadowed declaration is here:
uint256 public secret;
^-------------------^

./dataset/contracts/transaction_order/16054.sol:80:5: Warning: Invoking events without "emit" prefix is deprecated.
    str(secret);
    ^---------^
./dataset/contracts/transaction_order/16054.sol:92:2: Warning: Return value of low-level calls not used.
	firstTarget.call.value(msg.value)();
	^---------------------------------^
./dataset/contracts/transaction_order/16054.sol:97:2: Warning: Return value of low-level calls not used.
	secondTarget.call.value(msg.value)();
	^----------------------------------^
./dataset/contracts/transaction_order/16054.sol:123:2: Warning: Return value of low-level calls not used.
	owner.call.value(1 wei)();
	^-----------------------^
./dataset/contracts/transaction_order/16054.sol:163:9: Warning: Invoking events without "emit" prefix is deprecated.
        what(secret);
        ^----------^
./dataset/contracts/transaction_order/16054.sol:170:13: Warning: Invoking events without "emit" prefix is deprecated.
            test1(true);
            ^---------^
./dataset/contracts/transaction_order/16054.sol:173:13: Warning: Invoking events without "emit" prefix is deprecated.
            test1(false);
            ^----------^
./dataset/contracts/transaction_order/16054.sol:142:5: Warning: No visibility specified. Defaulting to "public". 
    function Hack(){
    ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
DrainMe (dataset/contracts/transaction_order/16054.sol#3-134) contract sets array length with a user-controlled value:
	- seed.length = _add (dataset/contracts/transaction_order/16054.sol#105)
DrainMe (dataset/contracts/transaction_order/16054.sol#3-134) contract sets array length with a user-controlled value:
	- players.push(msg.sender) (dataset/contracts/transaction_order/16054.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
DrainMe.unlockSecret() (dataset/contracts/transaction_order/16054.sol#76-88) uses a weak PRNG: "secret % 5 == 0 (dataset/contracts/transaction_order/16054.sol#81)" 
Hack.test() (dataset/contracts/transaction_order/16054.sol#158-176) uses a weak PRNG: "secret % 5 == 0 (dataset/contracts/transaction_order/16054.sol#164)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
DrainMe.unlockSecret() (dataset/contracts/transaction_order/16054.sol#76-88) uses a dangerous strict equality:
	- secret % 5 == 0 (dataset/contracts/transaction_order/16054.sol#81)
Hack.test() (dataset/contracts/transaction_order/16054.sol#158-176) uses a dangerous strict equality:
	- secret % 5 == 0 (dataset/contracts/transaction_order/16054.sol#164)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
DrainMe.callFirstTarget() (dataset/contracts/transaction_order/16054.sol#90-93) ignores return value by firstTarget.call.value(msg.value)() (dataset/contracts/transaction_order/16054.sol#92)
DrainMe.callSecondTarget() (dataset/contracts/transaction_order/16054.sol#95-98) ignores return value by secondTarget.call.value(msg.value)() (dataset/contracts/transaction_order/16054.sol#97)
DrainMe.winPrize() (dataset/contracts/transaction_order/16054.sol#122-124) ignores return value by owner.call.value(1)() (dataset/contracts/transaction_order/16054.sol#123)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
DrainMe.unlockSecret().secret (dataset/contracts/transaction_order/16054.sol#79) shadows:
	- DrainMe.secret (dataset/contracts/transaction_order/16054.sol#15) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
DrainMe.setSecret(uint256) (dataset/contracts/transaction_order/16054.sol#48-50) should emit an event for: 
	- secret = _secret (dataset/contracts/transaction_order/16054.sol#49) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Reentrancy in Hack.test() (dataset/contracts/transaction_order/16054.sol#158-176):
	External calls:
	- contr.DranMe() (dataset/contracts/transaction_order/16054.sol#165)
	- contr.becomePlayer.value(20000000000000000)() (dataset/contracts/transaction_order/16054.sol#166)
	- contr.manipulateSecret.value(10000000000000000)() (dataset/contracts/transaction_order/16054.sol#167)
	- contr.claimPrize() (dataset/contracts/transaction_order/16054.sol#168)
	External calls sending eth:
	- contr.becomePlayer.value(20000000000000000)() (dataset/contracts/transaction_order/16054.sol#166)
	- contr.manipulateSecret.value(10000000000000000)() (dataset/contracts/transaction_order/16054.sol#167)
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/16054.sol#169)
	Event emitted after the call(s):
	- test1(true) (dataset/contracts/transaction_order/16054.sol#170)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData.
It is used by:
	- ^0.4.23 (dataset/contracts/transaction_order/16054.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in DrainMe.callFirstTarget() (dataset/contracts/transaction_order/16054.sol#90-93):
	- firstTarget.call.value(msg.value)() (dataset/contracts/transaction_order/16054.sol#92)
Low level call in DrainMe.callSecondTarget() (dataset/contracts/transaction_order/16054.sol#95-98):
	- secondTarget.call.value(msg.value)() (dataset/contracts/transaction_order/16054.sol#97)
Low level call in DrainMe.winPrize() (dataset/contracts/transaction_order/16054.sol#122-124):
	- owner.call.value(1)() (dataset/contracts/transaction_order/16054.sol#123)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Event DrainMe.str(uint256) (dataset/contracts/transaction_order/16054.sol#74) is not in CapWords
Function DrainMe.DranMe() (dataset/contracts/transaction_order/16054.sol#21-23) is not in mixedCase
Parameter DrainMe.setSecret(uint256)._secret (dataset/contracts/transaction_order/16054.sol#48) is not in mixedCase
Parameter DrainMe.setSeed(uint256,uint256)._index (dataset/contracts/transaction_order/16054.sol#100) is not in mixedCase
Parameter DrainMe.setSeed(uint256,uint256)._value (dataset/contracts/transaction_order/16054.sol#100) is not in mixedCase
Parameter DrainMe.addSeed(uint256)._add (dataset/contracts/transaction_order/16054.sol#104) is not in mixedCase
Parameter DrainMe.guessSeed(uint256)._seed (dataset/contracts/transaction_order/16054.sol#108) is not in mixedCase
Event Hack.test1(bool) (dataset/contracts/transaction_order/16054.sol#156) is not in CapWords
Event Hack.what(uint256) (dataset/contracts/transaction_order/16054.sol#157) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Hack.test() (dataset/contracts/transaction_order/16054.sol#158-176):
	External calls:
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/16054.sol#169)
	External calls sending eth:
	- contr.becomePlayer.value(20000000000000000)() (dataset/contracts/transaction_order/16054.sol#166)
	- contr.manipulateSecret.value(10000000000000000)() (dataset/contracts/transaction_order/16054.sol#167)
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/16054.sol#169)
	Event emitted after the call(s):
	- test1(true) (dataset/contracts/transaction_order/16054.sol#170)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
DrainMe.firstTarget (dataset/contracts/transaction_order/16054.sol#9) should be constant 
DrainMe.secondTarget (dataset/contracts/transaction_order/16054.sol#10) should be constant 
Hack.contr (dataset/contracts/transaction_order/16054.sol#138) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/16054.sol analyzed (2 contracts with 100 detectors), 30 result(s) found
