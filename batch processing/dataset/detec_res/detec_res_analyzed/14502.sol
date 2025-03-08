'solc --version' running
'solc ./dataset/contracts/transaction_order/14502.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/14502.sol:
./dataset/contracts/transaction_order/14502.sol:12:33: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
            msg.sender.transfer(this.balance);
                                ^----------^
./dataset/contracts/transaction_order/14502.sol:39:28: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
       msg.sender.transfer(this.balance);
                           ^----------^

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
	- ^0.4.21 (dataset/contracts/transaction_order/14502.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract QUIZ_GAME (dataset/contracts/transaction_order/14502.sol#3-53) is not in CapWords
Function QUIZ_GAME.Play(string) (dataset/contracts/transaction_order/14502.sol#5-14) is not in mixedCase
Parameter QUIZ_GAME.Play(string)._response (dataset/contracts/transaction_order/14502.sol#5) is not in mixedCase
Function QUIZ_GAME.StartGame(string,string) (dataset/contracts/transaction_order/14502.sol#22-32) is not in mixedCase
Parameter QUIZ_GAME.StartGame(string,string)._question (dataset/contracts/transaction_order/14502.sol#22) is not in mixedCase
Parameter QUIZ_GAME.StartGame(string,string)._response (dataset/contracts/transaction_order/14502.sol#22) is not in mixedCase
Function QUIZ_GAME.StopGame() (dataset/contracts/transaction_order/14502.sol#34-40) is not in mixedCase
Function QUIZ_GAME.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/14502.sol#42-49) is not in mixedCase
Parameter QUIZ_GAME.NewQuestion(string,bytes32)._question (dataset/contracts/transaction_order/14502.sol#42) is not in mixedCase
Parameter QUIZ_GAME.NewQuestion(string,bytes32)._responseHash (dataset/contracts/transaction_order/14502.sol#42) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
StartGame(string,string) should be declared external:
	- QUIZ_GAME.StartGame(string,string) (dataset/contracts/transaction_order/14502.sol#22-32)
NewQuestion(string,bytes32) should be declared external:
	- QUIZ_GAME.NewQuestion(string,bytes32) (dataset/contracts/transaction_order/14502.sol#42-49)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/14502.sol analyzed (1 contracts with 100 detectors), 14 result(s) found
