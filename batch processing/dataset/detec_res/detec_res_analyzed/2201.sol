'solc --version' running
'solc ./dataset/contracts/transaction_order/2201.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
JIincForwarder.fallback() (dataset/contracts/transaction_order/2201.sol#76-83) sends eth to arbitrary user
	Dangerous calls:
	- currentCorpBank_.deposit.value(address(this).balance)(address(currentCorpBank_)) (dataset/contracts/transaction_order/2201.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
JIincForwarder.fallback() (dataset/contracts/transaction_order/2201.sol#76-83) ignores return value by currentCorpBank_.deposit.value(address(this).balance)(address(currentCorpBank_)) (dataset/contracts/transaction_order/2201.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Reentrancy in JIincForwarder.startMigration(address) (dataset/contracts/transaction_order/2201.sol#109-125):
	External calls:
	- JIincInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true (dataset/contracts/transaction_order/2201.sol#118)
	State variables written after the call(s):
	- newCorpBank_ = _newCorpBank (dataset/contracts/transaction_order/2201.sol#121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
JIincForwarder.deposit() (dataset/contracts/transaction_order/2201.sol#85-96) compares to a boolean constant:
	-require(bool,string)(needsBank_ == false,Forwarder Deposit failed - no registered bank) (dataset/contracts/transaction_order/2201.sol#91)
JIincForwarder.deposit() (dataset/contracts/transaction_order/2201.sol#85-96) compares to a boolean constant:
	-currentCorpBank_.deposit.value(msg.value)(msg.sender) == true (dataset/contracts/transaction_order/2201.sol#92)
JIincForwarder.startMigration(address) (dataset/contracts/transaction_order/2201.sol#109-125) compares to a boolean constant:
	-JIincInterfaceForForwarder(_newCorpBank).migrationReceiver_setup() == true (dataset/contracts/transaction_order/2201.sol#118)
JIincForwarder.setup(address) (dataset/contracts/transaction_order/2201.sol#160-166) compares to a boolean constant:
	-require(bool,string)(needsBank_ == true,Forwarder setup failed - corp bank already registered) (dataset/contracts/transaction_order/2201.sol#163)
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
	- ^0.4.24 (dataset/contracts/transaction_order/2201.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function JIincInterfaceForForwarder.migrationReceiver_setup() (dataset/contracts/transaction_order/2201.sol#61) is not in mixedCase
Parameter JIincForwarder.startMigration(address)._newCorpBank (dataset/contracts/transaction_order/2201.sol#109) is not in mixedCase
Parameter JIincForwarder.setup(address)._firstCorpBank (dataset/contracts/transaction_order/2201.sol#160) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
JIincForwarder.name (dataset/contracts/transaction_order/2201.sol#65) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/2201.sol analyzed (2 contracts with 100 detectors), 13 result(s) found
