'solc --version' running
'solc ./dataset/contracts/transaction_order/11731.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Bidding.destroyContract() (dataset/contracts/transaction_order/11731.sol#200-204) uses a dangerous strict equality:
	- require(bool)(address(this).balance == 0) (dataset/contracts/transaction_order/11731.sol#202)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Bidding.setOperator(address) (dataset/contracts/transaction_order/11731.sol#216-219) should emit an event for: 
	- operatorAddress = _operator (dataset/contracts/transaction_order/11731.sol#218) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Bidding.setBidding(uint40,uint256) (dataset/contracts/transaction_order/11731.sol#159-165) should emit an event for: 
	- timeEnd = _duration + uint40(now) (dataset/contracts/transaction_order/11731.sol#163) 
	- highestBid = _startPrice (dataset/contracts/transaction_order/11731.sol#164) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Bidding.setOperator(address)._operator (dataset/contracts/transaction_order/11731.sol#216) lacks a zero-check on :
		- operatorAddress = _operator (dataset/contracts/transaction_order/11731.sol#218)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Bidding.isEnded() (dataset/contracts/transaction_order/11731.sol#167-170) uses timestamp for comparisons
	Dangerous comparisons:
	- timeEnd < now (dataset/contracts/transaction_order/11731.sol#169)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.21 (dataset/contracts/transaction_order/11731.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Bidding.setBidding(uint40,uint256)._duration (dataset/contracts/transaction_order/11731.sol#159) is not in mixedCase
Parameter Bidding.setBidding(uint40,uint256)._startPrice (dataset/contracts/transaction_order/11731.sol#159) is not in mixedCase
Parameter Bidding.setOperator(address)._operator (dataset/contracts/transaction_order/11731.sol#216) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/11731.sol analyzed (3 contracts with 100 detectors), 10 result(s) found
