'solc --version' running
'solc ./dataset/contracts/transaction_order/796.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
lucky9io.fallback() (dataset/contracts/transaction_order/796.sol#19-50) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(value * 8 / 10) (dataset/contracts/transaction_order/796.sol#34)
	- msg.sender.transfer(90000000000000000) (dataset/contracts/transaction_order/796.sol#40)
	- msg.sender.transfer(30000000000000000) (dataset/contracts/transaction_order/796.sol#46)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
lucky9io.fallback() (dataset/contracts/transaction_order/796.sol#19-50) compares to a boolean constant:
	-gameOn == false (dataset/contracts/transaction_order/796.sol#20)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.24 (dataset/contracts/transaction_order/796.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract lucky9io (dataset/contracts/transaction_order/796.sol#3-52) is not in CapWords
Variable lucky9io.entry_number (dataset/contracts/transaction_order/796.sol#6) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
lucky9io.owner (dataset/contracts/transaction_order/796.sol#5) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/796.sol analyzed (1 contracts with 100 detectors), 7 result(s) found
