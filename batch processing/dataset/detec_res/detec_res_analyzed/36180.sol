'solc --version' running
'solc ./dataset/contracts/transaction_order/36180.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BFreeContract.buyToken() (dataset/contracts/transaction_order/36180.sol#268-287) performs a multiplication on the result of a division:
	- amount = value / currentTokenPrice (dataset/contracts/transaction_order/36180.sol#275)
	- moneyBack = value - (amount * currentTokenPrice) (dataset/contracts/transaction_order/36180.sol#276)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
BFreeContract._transfer(address,address,uint256) (dataset/contracts/transaction_order/36180.sol#290-309) uses a dangerous strict equality:
	- tokenBalanceOf[_to] == 0 (dataset/contracts/transaction_order/36180.sol#298)
BFreeContract._transfer(address,address,uint256) (dataset/contracts/transaction_order/36180.sol#290-309) uses a dangerous strict equality:
	- tokenBalanceOf[_from] == 0 (dataset/contracts/transaction_order/36180.sol#302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
BFreeContract.approve(address,uint256) (dataset/contracts/transaction_order/36180.sol#243-249) contains a tautology or contradiction:
	- require(bool)(_value >= 0) (dataset/contracts/transaction_order/36180.sol#246)
BFreeContract.setSellPrice(uint256) (dataset/contracts/transaction_order/36180.sol#359-362) contains a tautology or contradiction:
	- require(bool)(priceInWei >= 0) (dataset/contracts/transaction_order/36180.sol#360)
BFreeContract.destroyToken(uint256) (dataset/contracts/transaction_order/36180.sol#394-405) contains a tautology or contradiction:
	- require(bool)(tokenBalanceOf[this] - amount >= 0) (dataset/contracts/transaction_order/36180.sol#398)
BFreeContract.destroyToken(uint256) (dataset/contracts/transaction_order/36180.sol#394-405) contains a tautology or contradiction:
	- require(bool)(_totalSupply - amount >= 0) (dataset/contracts/transaction_order/36180.sol#399)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
BFreeContract.setPreICOPrice(uint256) (dataset/contracts/transaction_order/36180.sol#330-335) should emit an event for: 
	- preICOprice = priceForPreIcoInWei (dataset/contracts/transaction_order/36180.sol#333) 
BFreeContract.setICOPrice(uint256) (dataset/contracts/transaction_order/36180.sol#339-344) should emit an event for: 
	- ICOprice = priceForIcoInWei (dataset/contracts/transaction_order/36180.sol#342) 
BFreeContract.setPrices(uint256,uint256) (dataset/contracts/transaction_order/36180.sol#349-355) should emit an event for: 
	- preICOprice = priceForPreIcoInWei (dataset/contracts/transaction_order/36180.sol#352) 
	- ICOprice = priceForIcoInWei (dataset/contracts/transaction_order/36180.sol#353) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
BFreeContract.withdraw(uint256).sender (dataset/contracts/transaction_order/36180.sol#429) lacks a zero-check on :
		- sender.transfer(summeInWei) (dataset/contracts/transaction_order/36180.sol#433)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/36180.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/36180.sol#34-52) is not in CapWords
Event owned.ownerChanged(address,address,address) (dataset/contracts/transaction_order/36180.sol#51) is not in CapWords
Constant owned.supervisor (dataset/contracts/transaction_order/36180.sol#36) is not in UPPER_CASE_WITH_UNDERSCORES
Event BFreeContract.minGoalReached(uint256,string) (dataset/contracts/transaction_order/36180.sol#92) is not in CapWords
Event BFreeContract.preIcoEnded(uint256,string) (dataset/contracts/transaction_order/36180.sol#95) is not in CapWords
Event BFreeContract.priceUpdated(uint256,uint256,string) (dataset/contracts/transaction_order/36180.sol#98) is not in CapWords
Event BFreeContract.withdrawed(address,uint256,string) (dataset/contracts/transaction_order/36180.sol#101) is not in CapWords
Event BFreeContract.deposited(address,uint256,string) (dataset/contracts/transaction_order/36180.sol#104) is not in CapWords
Event BFreeContract.orderToTransfer(address,address,address,uint256,string) (dataset/contracts/transaction_order/36180.sol#107) is not in CapWords
Event BFreeContract.tokenCreated(address,uint256,string) (dataset/contracts/transaction_order/36180.sol#110) is not in CapWords
Event BFreeContract.tokenDestroyed(address,uint256,string) (dataset/contracts/transaction_order/36180.sol#113) is not in CapWords
Event BFreeContract.icoStatusUpdated(address,string) (dataset/contracts/transaction_order/36180.sol#116) is not in CapWords
Parameter BFreeContract.balanceOf(address)._owner (dataset/contracts/transaction_order/36180.sol#147) is not in mixedCase
Parameter BFreeContract.allowance(address,address)._owner (dataset/contracts/transaction_order/36180.sol#152) is not in mixedCase
Parameter BFreeContract.allowance(address,address)._spender (dataset/contracts/transaction_order/36180.sol#152) is not in mixedCase
Parameter BFreeContract.transfer(address,uint256)._to (dataset/contracts/transaction_order/36180.sol#204) is not in mixedCase
Parameter BFreeContract.transfer(address,uint256)._value (dataset/contracts/transaction_order/36180.sol#204) is not in mixedCase
Parameter BFreeContract.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/36180.sol#223) is not in mixedCase
Parameter BFreeContract.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/36180.sol#223) is not in mixedCase
Parameter BFreeContract.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/36180.sol#223) is not in mixedCase
Parameter BFreeContract.approve(address,uint256)._spender (dataset/contracts/transaction_order/36180.sol#243) is not in mixedCase
Parameter BFreeContract.approve(address,uint256)._value (dataset/contracts/transaction_order/36180.sol#243) is not in mixedCase
Variable BFreeContract._totalSupply (dataset/contracts/transaction_order/36180.sol#59) is not in mixedCase
Variable BFreeContract.ICOprice (dataset/contracts/transaction_order/36180.sol#66) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BFreeContract.slitherConstructorVariables() (dataset/contracts/transaction_order/36180.sol#54-488) uses literals with too many digits:
	- icoMin = 300000 (dataset/contracts/transaction_order/36180.sol#60)
BFreeContract.slitherConstructorVariables() (dataset/contracts/transaction_order/36180.sol#54-488) uses literals with too many digits:
	- preIcoLimit = 600000 (dataset/contracts/transaction_order/36180.sol#61)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
BFreeContract.icoMin (dataset/contracts/transaction_order/36180.sol#60) should be constant 
BFreeContract.preIcoLimit (dataset/contracts/transaction_order/36180.sol#61) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/36180.sol analyzed (3 contracts with 100 detectors), 41 result(s) found
