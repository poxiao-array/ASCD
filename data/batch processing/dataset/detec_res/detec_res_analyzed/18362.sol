'solc --version' running
'solc ./dataset/contracts/transaction_order/18362.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Challenge.withdraw() (dataset/contracts/transaction_order/18362.sol#15-22) sends eth to arbitrary user
	Dangerous calls:
	- previous_owner.transfer(address(this).balance - 10000000000000000) (dataset/contracts/transaction_order/18362.sol#19)
	- creator.transfer(address(this).balance) (dataset/contracts/transaction_order/18362.sol#21)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
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
	- ^0.4.11 (dataset/contracts/transaction_order/18362.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Challenge.change_flag_hash(bytes32) (dataset/contracts/transaction_order/18362.sol#24-29) is not in mixedCase
Function Challenge.check_flag(bytes32) (dataset/contracts/transaction_order/18362.sol#31-40) is not in mixedCase
Variable Challenge.previous_owner (dataset/contracts/transaction_order/18362.sol#5) is not in mixedCase
Variable Challenge.flag_hash (dataset/contracts/transaction_order/18362.sol#8) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/18362.sol analyzed (1 contracts with 100 detectors), 7 result(s) found
