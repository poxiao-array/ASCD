'solc --version' running
'solc ./dataset/contracts/transaction_order/11862.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/11862.sol:
./dataset/contracts/transaction_order/11862.sol:14:3: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
  function Ownable() public {
  ^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/11862.sol:73:3: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
  function Destructible() public payable { }
  ^----------------------------------------^

INFO:Detectors:
Autonomy.initialCongress(address) (dataset/contracts/transaction_order/11862.sol#52-57) should emit an event for: 
	- congress = _congress (dataset/contracts/transaction_order/11862.sol#55) 
Autonomy.changeCongress(address) (dataset/contracts/transaction_order/11862.sol#65-68) should emit an event for: 
	- congress = _congress (dataset/contracts/transaction_order/11862.sol#67) 
Claimable.transferOwnership(address) (dataset/contracts/transaction_order/11862.sol#102-104) should emit an event for: 
	- pendingOwner = newOwner (dataset/contracts/transaction_order/11862.sol#103) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Claimable.transferOwnership(address).newOwner (dataset/contracts/transaction_order/11862.sol#102) lacks a zero-check on :
		- pendingOwner = newOwner (dataset/contracts/transaction_order/11862.sol#103)
DRCWalletMgrParams.initialChargeFeePool(address)._pool (dataset/contracts/transaction_order/11862.sol#163) lacks a zero-check on :
		- chargeFeePool = _pool (dataset/contracts/transaction_order/11862.sol#166)
DRCWalletMgrParams.setChargeFeePool(address)._pool (dataset/contracts/transaction_order/11862.sol#193) lacks a zero-check on :
		- chargeFeePool = _pool (dataset/contracts/transaction_order/11862.sol#194)
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
	- ^0.4.23 (dataset/contracts/transaction_order/11862.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Autonomy.initialCongress(address)._congress (dataset/contracts/transaction_order/11862.sol#52) is not in mixedCase
Parameter Autonomy.changeCongress(address)._congress (dataset/contracts/transaction_order/11862.sol#65) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/11862.sol#82) is not in mixedCase
Parameter DRCWalletMgrParams.initialSingleWithdrawMax(uint256)._value (dataset/contracts/transaction_order/11862.sol#127) is not in mixedCase
Parameter DRCWalletMgrParams.initialSingleWithdrawMin(uint256)._value (dataset/contracts/transaction_order/11862.sol#133) is not in mixedCase
Parameter DRCWalletMgrParams.initialDayWithdraw(uint256)._value (dataset/contracts/transaction_order/11862.sol#139) is not in mixedCase
Parameter DRCWalletMgrParams.initialDayWithdrawCount(uint256)._count (dataset/contracts/transaction_order/11862.sol#145) is not in mixedCase
Parameter DRCWalletMgrParams.initialMonthWithdraw(uint256)._value (dataset/contracts/transaction_order/11862.sol#151) is not in mixedCase
Parameter DRCWalletMgrParams.initialChargeFee(uint256)._value (dataset/contracts/transaction_order/11862.sol#157) is not in mixedCase
Parameter DRCWalletMgrParams.initialChargeFeePool(address)._pool (dataset/contracts/transaction_order/11862.sol#163) is not in mixedCase
Parameter DRCWalletMgrParams.setSingleWithdrawMax(uint256)._value (dataset/contracts/transaction_order/11862.sol#169) is not in mixedCase
Parameter DRCWalletMgrParams.setSingleWithdrawMin(uint256)._value (dataset/contracts/transaction_order/11862.sol#173) is not in mixedCase
Parameter DRCWalletMgrParams.setDayWithdraw(uint256)._value (dataset/contracts/transaction_order/11862.sol#177) is not in mixedCase
Parameter DRCWalletMgrParams.setDayWithdrawCount(uint256)._count (dataset/contracts/transaction_order/11862.sol#181) is not in mixedCase
Parameter DRCWalletMgrParams.setMonthWithdraw(uint256)._value (dataset/contracts/transaction_order/11862.sol#185) is not in mixedCase
Parameter DRCWalletMgrParams.setChargeFee(uint256)._value (dataset/contracts/transaction_order/11862.sol#189) is not in mixedCase
Parameter DRCWalletMgrParams.setChargeFeePool(address)._pool (dataset/contracts/transaction_order/11862.sol#193) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/11862.sol analyzed (5 contracts with 100 detectors), 25 result(s) found
