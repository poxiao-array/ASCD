'solc --version' running
'solc ./dataset/contracts/transaction_order/21990.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Marriage.Marriage(address,address,string,string)._groomAddr (dataset/contracts/transaction_order/21990.sol#226) lacks a zero-check on :
		- groomAddr = _groomAddr (dataset/contracts/transaction_order/21990.sol#228)
Marriage.Marriage(address,address,string,string)._brideAddr (dataset/contracts/transaction_order/21990.sol#226) lacks a zero-check on :
		- brideAddr = _brideAddr (dataset/contracts/transaction_order/21990.sol#229)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Marriage.cancel() (dataset/contracts/transaction_order/21990.sol#285-292) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now - groomSignedAt >= 60) (dataset/contracts/transaction_order/21990.sol#287)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
DateTime.monthStr(uint256) (dataset/contracts/transaction_order/21990.sol#171-186) has a high cyclomatic complexity (13).
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cyclomatic-complexity
INFO:Detectors:
Version constraint 0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.20 (dataset/contracts/transaction_order/21990.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StrUtil.concat(string,string)._a (dataset/contracts/transaction_order/21990.sol#4) is not in mixedCase
Parameter StrUtil.concat(string,string)._b (dataset/contracts/transaction_order/21990.sol#4) is not in mixedCase
Struct DateTime._DateTime (dataset/contracts/transaction_order/21990.sol#58-62) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/21990.sol analyzed (3 contracts with 100 detectors), 9 result(s) found
