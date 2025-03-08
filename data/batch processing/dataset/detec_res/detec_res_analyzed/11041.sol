'solc --version' running
'solc ./dataset/contracts/transaction_order/11041.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MyDeposit.Owner (dataset/contracts/transaction_order/11041.sol#24) shadows:
	- Ownable.Owner (dataset/contracts/transaction_order/11041.sol#13)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
MyDeposit.kill() (dataset/contracts/transaction_order/11041.sol#50-53) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
MyDeposit.kill() (dataset/contracts/transaction_order/11041.sol#50-53) uses a dangerous strict equality:
	- address(this).balance == 0 (dataset/contracts/transaction_order/11041.sol#51)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Ownable.transferOwner(address) (dataset/contracts/transaction_order/11041.sol#17-20) should emit an event for: 
	- Owner = _Owner (dataset/contracts/transaction_order/11041.sol#19) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Modifier Ownable.onlyOwner() (dataset/contracts/transaction_order/11041.sol#15) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
MyDeposit.withdraw(uint256) (dataset/contracts/transaction_order/11041.sol#41-48) uses timestamp for comparisons
	Dangerous comparisons:
	- now >= openDate (dataset/contracts/transaction_order/11041.sol#42)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.24 (dataset/contracts/transaction_order/11041.sol#10)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Ownable.transferOwner(address)._Owner (dataset/contracts/transaction_order/11041.sol#17) is not in mixedCase
Variable Ownable.Owner (dataset/contracts/transaction_order/11041.sol#13) is not in mixedCase
Parameter MyDeposit.initalize(uint256)._openDate (dataset/contracts/transaction_order/11041.sol#28) is not in mixedCase
Variable MyDeposit.Owner (dataset/contracts/transaction_order/11041.sol#24) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/11041.sol analyzed (2 contracts with 100 detectors), 12 result(s) found
