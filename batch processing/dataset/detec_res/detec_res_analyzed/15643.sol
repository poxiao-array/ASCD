'solc --version' running
'solc ./dataset/contracts/transaction_order/15643.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
HTLC.resolve(bytes32) (dataset/contracts/transaction_order/15643.sol#25-31) sends eth to arbitrary user
	Dangerous calls:
	- beneficiary.transfer(address(this).balance) (dataset/contracts/transaction_order/15643.sol#30)
HTLC.refund() (dataset/contracts/transaction_order/15643.sol#33-38) sends eth to arbitrary user
	Dangerous calls:
	- funder.transfer(address(this).balance) (dataset/contracts/transaction_order/15643.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
HTLC.constructor(address,bytes32,uint256).beneficiary_ (dataset/contracts/transaction_order/15643.sol#10) lacks a zero-check on :
		- beneficiary = beneficiary_ (dataset/contracts/transaction_order/15643.sol#11)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
HTLC.refund() (dataset/contracts/transaction_order/15643.sol#33-38) uses timestamp for comparisons
	Dangerous comparisons:
	- now < unlockTime (dataset/contracts/transaction_order/15643.sol#34)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.23 (dataset/contracts/transaction_order/15643.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/15643.sol analyzed (1 contracts with 100 detectors), 6 result(s) found
