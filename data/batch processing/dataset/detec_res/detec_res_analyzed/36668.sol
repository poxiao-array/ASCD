'solc --version' running
'solc ./dataset/contracts/transaction_order/36668.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MarketPrice.donate() (dataset/contracts/transaction_order/36668.sol#130-133) contains a tautology or contradiction:
	- require(bool)(msg.value >= 0) (dataset/contracts/transaction_order/36668.sol#131)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
MarketPrice.changeCreator(address)._creator (dataset/contracts/transaction_order/36668.sol#97) lacks a zero-check on :
		- creator = _creator (dataset/contracts/transaction_order/36668.sol#99)
MarketPrice.changeSender(address)._sender (dataset/contracts/transaction_order/36668.sol#103) lacks a zero-check on :
		- sender = _sender (dataset/contracts/transaction_order/36668.sol#105)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
MarketPrice.getToken(uint256) (dataset/contracts/transaction_order/36668.sol#53-55) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.15 (dataset/contracts/transaction_order/36668.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in MarketPrice.execute(address,uint256,bytes) (dataset/contracts/transaction_order/36668.sol#109-113):
	- require(bool)(_to.call.value(_value)(_data)) (dataset/contracts/transaction_order/36668.sol#111)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter MarketPrice.getToken(uint256)._id (dataset/contracts/transaction_order/36668.sol#53) is not in mixedCase
Function MarketPrice.ETH(uint256) (dataset/contracts/transaction_order/36668.sol#58-60) is not in mixedCase
Parameter MarketPrice.ETH(uint256)._id (dataset/contracts/transaction_order/36668.sol#58) is not in mixedCase
Function MarketPrice.USD(uint256) (dataset/contracts/transaction_order/36668.sol#63-65) is not in mixedCase
Parameter MarketPrice.USD(uint256)._id (dataset/contracts/transaction_order/36668.sol#63) is not in mixedCase
Function MarketPrice.EUR(uint256) (dataset/contracts/transaction_order/36668.sol#68-70) is not in mixedCase
Parameter MarketPrice.EUR(uint256)._id (dataset/contracts/transaction_order/36668.sol#68) is not in mixedCase
Function MarketPrice.GBP(uint256) (dataset/contracts/transaction_order/36668.sol#73-75) is not in mixedCase
Parameter MarketPrice.GBP(uint256)._id (dataset/contracts/transaction_order/36668.sol#73) is not in mixedCase
Parameter MarketPrice.updatedAt(uint256)._id (dataset/contracts/transaction_order/36668.sol#78) is not in mixedCase
Parameter MarketPrice.update(uint256,string,uint256,uint256,uint256,uint256)._token (dataset/contracts/transaction_order/36668.sol#83) is not in mixedCase
Parameter MarketPrice.changeCreator(address)._creator (dataset/contracts/transaction_order/36668.sol#97) is not in mixedCase
Parameter MarketPrice.changeSender(address)._sender (dataset/contracts/transaction_order/36668.sol#103) is not in mixedCase
Parameter MarketPrice.execute(address,uint256,bytes)._to (dataset/contracts/transaction_order/36668.sol#109) is not in mixedCase
Parameter MarketPrice.execute(address,uint256,bytes)._value (dataset/contracts/transaction_order/36668.sol#109) is not in mixedCase
Parameter MarketPrice.execute(address,uint256,bytes)._data (dataset/contracts/transaction_order/36668.sol#109) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in MarketPrice.requestUpdate(uint256) (dataset/contracts/transaction_order/36668.sol#122-127):
	External calls:
	- sender.transfer(msg.value) (dataset/contracts/transaction_order/36668.sol#125)
	Event emitted after the call(s):
	- RequestUpdate(id) (dataset/contracts/transaction_order/36668.sol#126)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/36668.sol analyzed (1 contracts with 100 detectors), 24 result(s) found
