'solc --version' running
'solc ./dataset/contracts/transaction_order/28974.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Payee.pay(address,uint256) (dataset/contracts/transaction_order/28974.sol#117-125) sends eth to arbitrary user
	Dangerous calls:
	- ! founder.call.value(price * count)() || ! msg.sender.call.value(msg.value - price * count)() (dataset/contracts/transaction_order/28974.sol#120)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Payee.Payee(address).addr (dataset/contracts/transaction_order/28974.sol#92) lacks a zero-check on :
		- storageAddress = addr (dataset/contracts/transaction_order/28974.sol#96)
Payee.setStorageAddress(address)._addr (dataset/contracts/transaction_order/28974.sol#107) lacks a zero-check on :
		- storageAddress = _addr (dataset/contracts/transaction_order/28974.sol#108)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in Payee.pay(address,uint256) (dataset/contracts/transaction_order/28974.sol#117-125):
	External calls:
	- ! founder.call.value(price * count)() || ! msg.sender.call.value(msg.value - price * count)() (dataset/contracts/transaction_order/28974.sol#120)
	- s.update(_addr,count) (dataset/contracts/transaction_order/28974.sol#123)
	External calls sending eth:
	- ! founder.call.value(price * count)() || ! msg.sender.call.value(msg.value - price * count)() (dataset/contracts/transaction_order/28974.sol#120)
	Event emitted after the call(s):
	- Buy(msg.sender,count) (dataset/contracts/transaction_order/28974.sol#124)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Storage.update(address,uint256) (dataset/contracts/transaction_order/28974.sol#29-34) compares to a boolean constant:
	-assert(bool)(changeable == true) (dataset/contracts/transaction_order/28974.sol#30)
Storage.set(address,uint256) (dataset/contracts/transaction_order/28974.sol#36-40) compares to a boolean constant:
	-require(bool)(changeable == true || msg.sender == founder) (dataset/contracts/transaction_order/28974.sol#37)
Storage.onlyAdmin() (dataset/contracts/transaction_order/28974.sol#18-21) compares to a boolean constant:
	-assert(bool)(adminStatus[msg.sender] == true) (dataset/contracts/transaction_order/28974.sol#19)
Payee.pay(address,uint256) (dataset/contracts/transaction_order/28974.sol#117-125) compares to a boolean constant:
	-assert(bool)(changeable == true) (dataset/contracts/transaction_order/28974.sol#118)
Payee.onlyAdmin() (dataset/contracts/transaction_order/28974.sol#77-80) compares to a boolean constant:
	-assert(bool)(adminStatus[msg.sender] == true) (dataset/contracts/transaction_order/28974.sol#78)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.19 (dataset/contracts/transaction_order/28974.sol#1)
	- ^0.4.19 (dataset/contracts/transaction_order/28974.sol#59)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Payee.pay(address,uint256) (dataset/contracts/transaction_order/28974.sol#117-125):
	- ! founder.call.value(price * count)() || ! msg.sender.call.value(msg.value - price * count)() (dataset/contracts/transaction_order/28974.sol#120)
	- ! founder.call.value(price * count)() || ! msg.sender.call.value(msg.value - price * count)() (dataset/contracts/transaction_order/28974.sol#120)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Payee.setPrice(uint256)._price (dataset/contracts/transaction_order/28974.sol#102) is not in mixedCase
Parameter Payee.setStorageAddress(address)._addr (dataset/contracts/transaction_order/28974.sol#107) is not in mixedCase
Parameter Payee.pay(address,uint256)._addr (dataset/contracts/transaction_order/28974.sol#117) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Payee.Payee(address) (dataset/contracts/transaction_order/28974.sol#92-100) uses literals with too many digits:
	- price = 3000000000000000 (dataset/contracts/transaction_order/28974.sol#94)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/28974.sol analyzed (2 contracts with 100 detectors), 16 result(s) found
