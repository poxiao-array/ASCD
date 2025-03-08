'solc --version' running
'solc ./dataset/contracts/transaction_order/33512.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33512.sol:
./dataset/contracts/transaction_order/33512.sol:22:9: Warning: Return value of low-level calls not used.
        adr.call.value(msg.value)(data);
        ^-----------------------------^

INFO:Detectors:
MultiplicatorX3.Command(address,bytes) (dataset/contracts/transaction_order/33512.sol#17-23) ignores return value by adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/33512.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
MultiplicatorX3.Command(address,bytes).adr (dataset/contracts/transaction_order/33512.sol#17) lacks a zero-check on :
		- adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/33512.sol#22)
MultiplicatorX3.multiplicate(address).adr (dataset/contracts/transaction_order/33512.sol#25) lacks a zero-check on :
		- adr.transfer(this.balance + msg.value) (dataset/contracts/transaction_order/33512.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.18 (dataset/contracts/transaction_order/33512.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in MultiplicatorX3.Command(address,bytes) (dataset/contracts/transaction_order/33512.sol#17-23):
	- adr.call.value(msg.value)(data) (dataset/contracts/transaction_order/33512.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function MultiplicatorX3.Command(address,bytes) (dataset/contracts/transaction_order/33512.sol#17-23) is not in mixedCase
Variable MultiplicatorX3.Owner (dataset/contracts/transaction_order/33512.sol#5) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Command(address,bytes) should be declared external:
	- MultiplicatorX3.Command(address,bytes) (dataset/contracts/transaction_order/33512.sol#17-23)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/33512.sol analyzed (1 contracts with 100 detectors), 9 result(s) found
