'solc --version' running
'solc ./dataset/contracts/transaction_order/30358.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/30358.sol:
./dataset/contracts/transaction_order/30358.sol:25:40: Warning: "sha3" has been deprecated in favour of "keccak256"
            loglib.delegatecall(bytes4(sha3("logSendEvent()"))); //Log the address
                                       ^--------------------^
./dataset/contracts/transaction_order/30358.sol:25:13: Warning: Return value of low-level calls not used.
            loglib.delegatecall(bytes4(sha3("logSendEvent()"))); //Log the address
            ^-------------------------------------------------^
./dataset/contracts/transaction_order/30358.sol:26:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            msg.sender.send(this.balance);
            ^---------------------------^

INFO:Detectors:
debugContract.withdrawal() (dataset/contracts/transaction_order/30358.sol#19-28) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.send(this.balance) (dataset/contracts/transaction_order/30358.sol#26)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Contract locking ether found:
	Contract loglibs (dataset/contracts/transaction_order/30358.sol#2-9) has payable functions:
	 - loglibs.logSendEvent() (dataset/contracts/transaction_order/30358.sol#5-7)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
INFO:Detectors:
debugContract.withdrawal() (dataset/contracts/transaction_order/30358.sol#19-28) ignores return value by loglib.delegatecall(bytes4(sha3()(logSendEvent()))) (dataset/contracts/transaction_order/30358.sol#25)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
debugContract.withdrawal() (dataset/contracts/transaction_order/30358.sol#19-28) ignores return value by msg.sender.send(this.balance) (dataset/contracts/transaction_order/30358.sol#26)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Deprecated standard detected loglib.delegatecall(bytes4(sha3()(logSendEvent()))) (dataset/contracts/transaction_order/30358.sol#25):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint 0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.19 (dataset/contracts/transaction_order/30358.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in debugContract.withdrawal() (dataset/contracts/transaction_order/30358.sol#19-28):
	- loglib.delegatecall(bytes4(sha3()(logSendEvent()))) (dataset/contracts/transaction_order/30358.sol#25)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Contract loglibs (dataset/contracts/transaction_order/30358.sol#2-9) is not in CapWords
Contract debugContract (dataset/contracts/transaction_order/30358.sol#11-36) is not in CapWords
Variable debugContract.Owner (dataset/contracts/transaction_order/30358.sol#13) is not in mixedCase
Variable debugContract.Limit (dataset/contracts/transaction_order/30358.sol#14) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
debugContract.Limit (dataset/contracts/transaction_order/30358.sol#14) should be constant 
debugContract.loglib (dataset/contracts/transaction_order/30358.sol#15) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/30358.sol analyzed (2 contracts with 100 detectors), 14 result(s) found
