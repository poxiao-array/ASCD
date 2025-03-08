'solc --version' running
'solc ./dataset/contracts/transaction_order/20746.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TopIvy._payout(address) (dataset/contracts/transaction_order/20746.sol#73-79) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(this.balance) (dataset/contracts/transaction_order/20746.sol#75)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/20746.sol#77)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
TopIvy.buyVotes(uint8) (dataset/contracts/transaction_order/20746.sol#48-57) contains a tautology or contradiction:
	- require(bool)(_id >= 0 && _id <= 7) (dataset/contracts/transaction_order/20746.sol#52)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
TopIvy.setCEO(address) (dataset/contracts/transaction_order/20746.sol#61-64) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/20746.sol#63) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/20746.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter TopIvy.payout(address)._to (dataset/contracts/transaction_order/20746.sol#42) is not in mixedCase
Parameter TopIvy.buyVotes(uint8)._id (dataset/contracts/transaction_order/20746.sol#48) is not in mixedCase
Parameter TopIvy.setCEO(address)._newCEO (dataset/contracts/transaction_order/20746.sol#61) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/20746.sol analyzed (1 contracts with 100 detectors), 8 result(s) found
