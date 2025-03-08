'solc --version' running
'solc ./dataset/contracts/transaction_order/26352.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26352.sol:
./dataset/contracts/transaction_order/26352.sol:15:5: Warning: No visibility specified. Defaulting to "public".
    function() payable {}
    ^-------------------^
./dataset/contracts/transaction_order/26352.sol:27:17: Warning: The type of this variable was inferred as uint8, which can hold values between 0 and 255. This is probably not desired. Use an explicit type to silence this warning.
            for(var i=0;i<msg.value*2;i++)
                ^-----^

INFO:Detectors:
For_Test.Test() (dataset/contracts/transaction_order/26352.sol#17-42) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(amountToTransfer) (dataset/contracts/transaction_order/26352.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
For_Test.Test() (dataset/contracts/transaction_order/26352.sol#17-42) use msg.value in a loop: i < msg.value * 2 (dataset/contracts/transaction_order/26352.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#msgvalue-inside-a-loop
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
	- ^0.4.19 (dataset/contracts/transaction_order/26352.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract For_Test (dataset/contracts/transaction_order/26352.sol#3-44) is not in CapWords
Function For_Test.Test() (dataset/contracts/transaction_order/26352.sol#17-42) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/26352.sol analyzed (1 contracts with 100 detectors), 6 result(s) found
