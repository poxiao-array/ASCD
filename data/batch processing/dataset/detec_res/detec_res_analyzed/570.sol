'solc --version' running
'solc ./dataset/contracts/transaction_order/570.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Simple_SHA3_Test.withdraw(string) (dataset/contracts/transaction_order/570.sol#21-32) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/570.sol#28)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
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
	- ^0.4.24 (dataset/contracts/transaction_order/570.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract Simple_SHA3_Test (dataset/contracts/transaction_order/570.sol#8-44) is not in CapWords
Event Simple_SHA3_Test.test(string) (dataset/contracts/transaction_order/570.sol#10) is not in CapWords
Function Simple_SHA3_Test.test_withdraw() (dataset/contracts/transaction_order/570.sol#34-37) is not in mixedCase
Function Simple_SHA3_Test.test_suicide() (dataset/contracts/transaction_order/570.sol#39-42) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Simple_SHA3_Test.hash (dataset/contracts/transaction_order/570.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
withdraw(string) should be declared external:
	- Simple_SHA3_Test.withdraw(string) (dataset/contracts/transaction_order/570.sol#21-32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/570.sol analyzed (1 contracts with 100 detectors), 9 result(s) found
