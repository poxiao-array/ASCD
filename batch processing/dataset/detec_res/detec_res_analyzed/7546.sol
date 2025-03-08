'solc --version' running
'solc ./dataset/contracts/transaction_order/7546.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.20 (dataset/contracts/transaction_order/7546.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function QUESTION.Play(string) (dataset/contracts/transaction_order/7546.sol#5-14) is not in mixedCase
Parameter QUESTION.Play(string)._response (dataset/contracts/transaction_order/7546.sol#5) is not in mixedCase
Function QUESTION.StartGame(string,string) (dataset/contracts/transaction_order/7546.sol#22-32) is not in mixedCase
Parameter QUESTION.StartGame(string,string)._question (dataset/contracts/transaction_order/7546.sol#22) is not in mixedCase
Parameter QUESTION.StartGame(string,string)._response (dataset/contracts/transaction_order/7546.sol#22) is not in mixedCase
Function QUESTION.StopGame() (dataset/contracts/transaction_order/7546.sol#34-40) is not in mixedCase
Function QUESTION.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/7546.sol#42-49) is not in mixedCase
Parameter QUESTION.NewQuestion(string,bytes32)._question (dataset/contracts/transaction_order/7546.sol#42) is not in mixedCase
Parameter QUESTION.NewQuestion(string,bytes32)._responseHash (dataset/contracts/transaction_order/7546.sol#42) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
StartGame(string,string) should be declared external:
	- QUESTION.StartGame(string,string) (dataset/contracts/transaction_order/7546.sol#22-32)
NewQuestion(string,bytes32) should be declared external:
	- QUESTION.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/7546.sol#42-49)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/7546.sol analyzed (1 contracts with 100 detectors), 13 result(s) found
