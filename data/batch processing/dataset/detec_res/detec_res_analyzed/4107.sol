'solc --version' running
'solc ./dataset/contracts/transaction_order/4107.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
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
	- ^0.4.20 (dataset/contracts/transaction_order/4107.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract guess_and_get_the_money (dataset/contracts/transaction_order/4107.sol#3-59) is not in CapWords
Function guess_and_get_the_money.Guess(string) (dataset/contracts/transaction_order/4107.sol#5-15) is not in mixedCase
Parameter guess_and_get_the_money.Guess(string)._response (dataset/contracts/transaction_order/4107.sol#5) is not in mixedCase
Function guess_and_get_the_money.StartGame(string,string) (dataset/contracts/transaction_order/4107.sol#23-35) is not in mixedCase
Parameter guess_and_get_the_money.StartGame(string,string)._question (dataset/contracts/transaction_order/4107.sol#23) is not in mixedCase
Parameter guess_and_get_the_money.StartGame(string,string)._response (dataset/contracts/transaction_order/4107.sol#23) is not in mixedCase
Function guess_and_get_the_money.StopGame() (dataset/contracts/transaction_order/4107.sol#37-44) is not in mixedCase
Function guess_and_get_the_money.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/4107.sol#46-55) is not in mixedCase
Parameter guess_and_get_the_money.NewQuestion(string,bytes32)._question (dataset/contracts/transaction_order/4107.sol#46) is not in mixedCase
Parameter guess_and_get_the_money.NewQuestion(string,bytes32)._responseHash (dataset/contracts/transaction_order/4107.sol#46) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
StartGame(string,string) should be declared external:
	- guess_and_get_the_money.StartGame(string,string) (dataset/contracts/transaction_order/4107.sol#23-35)
NewQuestion(string,bytes32) should be declared external:
	- guess_and_get_the_money.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/4107.sol#46-55)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/4107.sol analyzed (1 contracts with 100 detectors), 14 result(s) found
