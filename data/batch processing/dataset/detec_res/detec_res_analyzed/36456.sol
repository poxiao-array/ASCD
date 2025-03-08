'solc --version' running
'solc ./dataset/contracts/transaction_order/36456.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
FiatContract.donate() (dataset/contracts/transaction_order/36456.sol#133-137) contains a tautology or contradiction:
	- require(bool)(msg.value >= 0) (dataset/contracts/transaction_order/36456.sol#134)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
FiatContract.changeCreator(address)._creator (dataset/contracts/transaction_order/36456.sol#100) lacks a zero-check on :
		- creator = _creator (dataset/contracts/transaction_order/36456.sol#102)
FiatContract.changeSender(address)._sender (dataset/contracts/transaction_order/36456.sol#106) lacks a zero-check on :
		- sender = _sender (dataset/contracts/transaction_order/36456.sol#108)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
FiatContract.getToken(uint256) (dataset/contracts/transaction_order/36456.sol#56-58) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint 0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.15 (dataset/contracts/transaction_order/36456.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in FiatContract.execute(address,uint256,bytes) (dataset/contracts/transaction_order/36456.sol#112-116):
	- require(bool)(_to.call.value(_value)(_data)) (dataset/contracts/transaction_order/36456.sol#114)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter FiatContract.getToken(uint256)._id (dataset/contracts/transaction_order/36456.sol#56) is not in mixedCase
Function FiatContract.ETH(uint256) (dataset/contracts/transaction_order/36456.sol#61-63) is not in mixedCase
Parameter FiatContract.ETH(uint256)._id (dataset/contracts/transaction_order/36456.sol#61) is not in mixedCase
Function FiatContract.USD(uint256) (dataset/contracts/transaction_order/36456.sol#66-68) is not in mixedCase
Parameter FiatContract.USD(uint256)._id (dataset/contracts/transaction_order/36456.sol#66) is not in mixedCase
Function FiatContract.EUR(uint256) (dataset/contracts/transaction_order/36456.sol#71-73) is not in mixedCase
Parameter FiatContract.EUR(uint256)._id (dataset/contracts/transaction_order/36456.sol#71) is not in mixedCase
Function FiatContract.GBP(uint256) (dataset/contracts/transaction_order/36456.sol#76-78) is not in mixedCase
Parameter FiatContract.GBP(uint256)._id (dataset/contracts/transaction_order/36456.sol#76) is not in mixedCase
Parameter FiatContract.updatedAt(uint256)._id (dataset/contracts/transaction_order/36456.sol#81) is not in mixedCase
Parameter FiatContract.update(uint256,string,uint256,uint256,uint256,uint256)._token (dataset/contracts/transaction_order/36456.sol#86) is not in mixedCase
Parameter FiatContract.changeCreator(address)._creator (dataset/contracts/transaction_order/36456.sol#100) is not in mixedCase
Parameter FiatContract.changeSender(address)._sender (dataset/contracts/transaction_order/36456.sol#106) is not in mixedCase
Parameter FiatContract.execute(address,uint256,bytes)._to (dataset/contracts/transaction_order/36456.sol#112) is not in mixedCase
Parameter FiatContract.execute(address,uint256,bytes)._value (dataset/contracts/transaction_order/36456.sol#112) is not in mixedCase
Parameter FiatContract.execute(address,uint256,bytes)._data (dataset/contracts/transaction_order/36456.sol#112) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in FiatContract.donate() (dataset/contracts/transaction_order/36456.sol#133-137):
	External calls:
	- sender.transfer(msg.value) (dataset/contracts/transaction_order/36456.sol#135)
	Event emitted after the call(s):
	- Donation(msg.sender) (dataset/contracts/transaction_order/36456.sol#136)
Reentrancy in FiatContract.requestUpdate(uint256) (dataset/contracts/transaction_order/36456.sol#125-130):
	External calls:
	- sender.transfer(msg.value) (dataset/contracts/transaction_order/36456.sol#128)
	Event emitted after the call(s):
	- RequestUpdate(id) (dataset/contracts/transaction_order/36456.sol#129)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Slither:./dataset/contracts/transaction_order/36456.sol analyzed (1 contracts with 100 detectors), 25 result(s) found
