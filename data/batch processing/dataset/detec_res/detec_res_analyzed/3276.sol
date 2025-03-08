'solc --version' running
'solc ./dataset/contracts/transaction_order/3276.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ProForwarder.fallback() (dataset/contracts/transaction_order/3276.sol#18-22) sends eth to arbitrary user
	Dangerous calls:
	- currentCorpBank_.deposit.value(address(this).balance)(address(currentCorpBank_)) (dataset/contracts/transaction_order/3276.sol#21)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
ProForwarder.fallback() (dataset/contracts/transaction_order/3276.sol#18-22) ignores return value by currentCorpBank_.deposit.value(address(this).balance)(address(currentCorpBank_)) (dataset/contracts/transaction_order/3276.sol#21)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Reentrancy in ProForwarder.startMigration(address) (dataset/contracts/transaction_order/3276.sol#37-50):
	External calls:
	- ProForwarderInterface(_newCorpBank).migrationReceiver_setup() == true (dataset/contracts/transaction_order/3276.sol#43)
	State variables written after the call(s):
	- newCorpBank_ = _newCorpBank (dataset/contracts/transaction_order/3276.sol#46)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
ProForwarder.deposit() (dataset/contracts/transaction_order/3276.sol#24-31) compares to a boolean constant:
	-require(bool,string)(needsBank_ == false,Forwarder Deposit failed - no registered bank) (dataset/contracts/transaction_order/3276.sol#26)
ProForwarder.deposit() (dataset/contracts/transaction_order/3276.sol#24-31) compares to a boolean constant:
	-currentCorpBank_.deposit.value(msg.value)(msg.sender) == true (dataset/contracts/transaction_order/3276.sol#27)
ProForwarder.startMigration(address) (dataset/contracts/transaction_order/3276.sol#37-50) compares to a boolean constant:
	-ProForwarderInterface(_newCorpBank).migrationReceiver_setup() == true (dataset/contracts/transaction_order/3276.sol#43)
ProForwarder.setup(address) (dataset/contracts/transaction_order/3276.sol#77-81) compares to a boolean constant:
	-require(bool,string)(needsBank_ == true,Forwarder setup failed - corp bank already registered) (dataset/contracts/transaction_order/3276.sol#78)
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
	- ^0.4.24 (dataset/contracts/transaction_order/3276.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function ProForwarderInterface.migrationReceiver_setup() (dataset/contracts/transaction_order/3276.sol#5) is not in mixedCase
Parameter ProForwarder.startMigration(address)._newCorpBank (dataset/contracts/transaction_order/3276.sol#37) is not in mixedCase
Parameter ProForwarder.setup(address)._firstCorpBank (dataset/contracts/transaction_order/3276.sol#77) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ProForwarder.name (dataset/contracts/transaction_order/3276.sol#9) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/3276.sol analyzed (2 contracts with 100 detectors), 13 result(s) found
