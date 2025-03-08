'solc --version' running
'solc ./dataset/contracts/transaction_order/27401.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/27401.sol:
./dataset/contracts/transaction_order/27401.sol:37:9: Warning: Return value of low-level calls not used.
        adr.call.value(msg.value)(data);
        ^-----------------------------^

INFO:Detectors:
WhaleGiveaway2.GetFreebie() (dataset/contracts/transaction_order/27401.sol#14-22) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/27401.sol#20)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
WhaleGiveaway2.Command(address,bytes) (dataset/contracts/transaction_order/27401.sol#32-38) ignores return value by adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/27401.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
WhaleGiveaway2.Command(address,bytes).adr (dataset/contracts/transaction_order/27401.sol#32) lacks a zero-check on :
		- adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/27401.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/27401.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in WhaleGiveaway2.Command(address,bytes) (dataset/contracts/transaction_order/27401.sol#32-38):
	- adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/27401.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function WhaleGiveaway2.GetFreebie() (dataset/contracts/transaction_order/27401.sol#14-22) is not in mixedCase
Function WhaleGiveaway2.Command(address,bytes) (dataset/contracts/transaction_order/27401.sol#32-38) is not in mixedCase
Variable WhaleGiveaway2.Owner (dataset/contracts/transaction_order/27401.sol#5) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Command(address,bytes) should be declared external:
	- WhaleGiveaway2.Command(address,bytes) (dataset/contracts/transaction_order/27401.sol#32-38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/27401.sol analyzed (1 contracts with 100 detectors), 10 result(s) found
