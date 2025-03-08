'solc --version' running
'solc ./dataset/contracts/transaction_order/34455.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/34455.sol:
./dataset/contracts/transaction_order/34455.sol:7:5: Warning: No visibility specified. Defaulting to "public".
    function()payable{}
    ^-----------------^
./dataset/contracts/transaction_order/34455.sol:17:5: Warning: No visibility specified. Defaulting to "public".
    function multiplicate(address adr)
    ^
Spanning multiple lines.

INFO:Detectors:
Multiplicator.multiplicate(address).adr (dataset/contracts/transaction_order/34455.sol#17) lacks a zero-check on :
		- adr.transfer(this.balance + msg.value) (dataset/contracts/transaction_order/34455.sol#22)
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
	- ^0.4.18 (dataset/contracts/transaction_order/34455.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Multiplicator.Owner (dataset/contracts/transaction_order/34455.sol#5) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/34455.sol analyzed (1 contracts with 100 detectors), 4 result(s) found
