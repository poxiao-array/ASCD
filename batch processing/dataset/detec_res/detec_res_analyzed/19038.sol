'solc --version' running
'solc ./dataset/contracts/transaction_order/19038.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/19038.sol:
./dataset/contracts/transaction_order/19038.sol:7:2: Warning: No visibility specified. Defaulting to "public".
	function OnePercentGift(){
 ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
OnePercentGift.reclaimUnwantedGift() (dataset/contracts/transaction_order/19038.sol#21-23) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(address(this).balance) (dataset/contracts/transaction_order/19038.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
OnePercentGift.claim() (dataset/contracts/transaction_order/19038.sol#15-19) uses a dangerous strict equality:
	- msg.value == address(this).balance * 100 (dataset/contracts/transaction_order/19038.sol#16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
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
	- ^0.4.21 (dataset/contracts/transaction_order/19038.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/19038.sol analyzed (1 contracts with 100 detectors), 4 result(s) found
