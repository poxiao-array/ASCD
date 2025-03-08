'solc --version' running
'solc ./dataset/contracts/transaction_order/12504.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/12504.sol:
./dataset/contracts/transaction_order/12504.sol:14:3: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
  function Ownable() public {
  ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/12504.sol:73:3: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
  function Destructible() public payable { }
  ^----------------------------------------^

INFO:Detectors:
Autonomy.initialCongress(address) (dataset/contracts/transaction_order/12504.sol#52-57) should emit an event for: 
	- congress = _congress (dataset/contracts/transaction_order/12504.sol#55) 
Autonomy.changeCongress(address) (dataset/contracts/transaction_order/12504.sol#65-68) should emit an event for: 
	- congress = _congress (dataset/contracts/transaction_order/12504.sol#67) 
Claimable.transferOwnership(address) (dataset/contracts/transaction_order/12504.sol#102-104) should emit an event for: 
	- pendingOwner = newOwner (dataset/contracts/transaction_order/12504.sol#103) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Claimable.transferOwnership(address).newOwner (dataset/contracts/transaction_order/12504.sol#102) lacks a zero-check on :
		- pendingOwner = newOwner (dataset/contracts/transaction_order/12504.sol#103)
DRCWalletMgrParams.initialChargeFeePool(address)._pool (dataset/contracts/transaction_order/12504.sol#156) lacks a zero-check on :
		- chargeFeePool = _pool (dataset/contracts/transaction_order/12504.sol#159)
DRCWalletMgrParams.setChargeFeePool(address)._pool (dataset/contracts/transaction_order/12504.sol#182) lacks a zero-check on :
		- chargeFeePool = _pool (dataset/contracts/transaction_order/12504.sol#183)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/12504.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Autonomy.initialCongress(address)._congress (dataset/contracts/transaction_order/12504.sol#52) is not in mixedCase
Parameter Autonomy.changeCongress(address)._congress (dataset/contracts/transaction_order/12504.sol#65) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/12504.sol#82) is not in mixedCase
Parameter DRCWalletMgrParams.initialSingleWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#126) is not in mixedCase
Parameter DRCWalletMgrParams.initialDayWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#132) is not in mixedCase
Parameter DRCWalletMgrParams.initialDayWithdrawCount(uint256)._count (dataset/contracts/transaction_order/12504.sol#138) is not in mixedCase
Parameter DRCWalletMgrParams.initialMonthWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#144) is not in mixedCase
Parameter DRCWalletMgrParams.initialChargeFee(uint256)._value (dataset/contracts/transaction_order/12504.sol#150) is not in mixedCase
Parameter DRCWalletMgrParams.initialChargeFeePool(address)._pool (dataset/contracts/transaction_order/12504.sol#156) is not in mixedCase
Parameter DRCWalletMgrParams.setSingleWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#162) is not in mixedCase
Parameter DRCWalletMgrParams.setDayWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#166) is not in mixedCase
Parameter DRCWalletMgrParams.setDayWithdrawCount(uint256)._count (dataset/contracts/transaction_order/12504.sol#170) is not in mixedCase
Parameter DRCWalletMgrParams.setMonthWithdraw(uint256)._value (dataset/contracts/transaction_order/12504.sol#174) is not in mixedCase
Parameter DRCWalletMgrParams.setChargeFee(uint256)._value (dataset/contracts/transaction_order/12504.sol#178) is not in mixedCase
Parameter DRCWalletMgrParams.setChargeFeePool(address)._pool (dataset/contracts/transaction_order/12504.sol#182) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
DRCWalletMgrParams.chargeFee (dataset/contracts/transaction_order/12504.sol#122) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/12504.sol analyzed (5 contracts with 100 detectors), 24 result(s) found
