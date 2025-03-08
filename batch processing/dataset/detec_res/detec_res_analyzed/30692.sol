'solc --version' running
'solc ./dataset/contracts/transaction_order/30692.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/30692.sol:
./dataset/contracts/transaction_order/30692.sol:6:22: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
    address emails = 0x25df6e3da49f41ef5b99e139c87abc12c3583d13;
                     ^----------------------------------------^
./dataset/contracts/transaction_order/30692.sol:37:13: Warning: Return value of low-level calls not used.
            emails.delegatecall(bytes4(sha3("logEvent()")));
            ^---------------------------------------------^
./dataset/contracts/transaction_order/30692.sol:38:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            adr.send(this.balance);
            ^--------------------^
./dataset/contracts/transaction_order/30692.sol:17:26: Warning: Unused local variable
    function changeOwner(address adr){
                         ^---------^

INFO:Detectors:
firstTest.withdrawal() (dataset/contracts/transaction_order/30692.sol#31-41) sends eth to arbitrary user
	Dangerous calls:
	- adr.send(this.balance) (dataset/contracts/transaction_order/30692.sol#38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
firstTest.withdrawal() (dataset/contracts/transaction_order/30692.sol#31-41) uses delegatecall to a input-controlled function id
	- emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30692.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#controlled-delegatecall
INFO:Detectors:
firstTest.withdrawal() (dataset/contracts/transaction_order/30692.sol#31-41) ignores return value by emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30692.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
firstTest.withdrawal() (dataset/contracts/transaction_order/30692.sol#31-41) ignores return value by adr.send(this.balance) (dataset/contracts/transaction_order/30692.sol#38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
firstTest.changeOwner(address).adr (dataset/contracts/transaction_order/30692.sol#17) shadows:
	- firstTest.adr (dataset/contracts/transaction_order/30692.sol#7) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
firstTest.Set(address,uint256) (dataset/contracts/transaction_order/30692.sol#10-15) should emit an event for: 
	- Limit = limit (dataset/contracts/transaction_order/30692.sol#13) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
firstTest.Set(address,uint256).dataBase (dataset/contracts/transaction_order/30692.sol#10) lacks a zero-check on :
		- emails = dataBase (dataset/contracts/transaction_order/30692.sol#14)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Deprecated standard detected emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30692.sol#37):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/30692.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in firstTest.withdrawal() (dataset/contracts/transaction_order/30692.sol#31-41):
	- emails.delegatecall(bytes4(sha3()(logEvent()))) (dataset/contracts/transaction_order/30692.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Contract firstTest (dataset/contracts/transaction_order/30692.sol#3-44) is not in CapWords
Function firstTest.Set(address,uint256) (dataset/contracts/transaction_order/30692.sol#10-15) is not in mixedCase
Variable firstTest.Owner (dataset/contracts/transaction_order/30692.sol#5) is not in mixedCase
Variable firstTest.Limit (dataset/contracts/transaction_order/30692.sol#8) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
firstTest.slitherConstructorVariables() (dataset/contracts/transaction_order/30692.sol#3-44) uses literals with too many digits:
	- Limit = 1000000000000000000 (dataset/contracts/transaction_order/30692.sol#8)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
firstTest.Owner (dataset/contracts/transaction_order/30692.sol#5) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/30692.sol analyzed (1 contracts with 100 detectors), 17 result(s) found
