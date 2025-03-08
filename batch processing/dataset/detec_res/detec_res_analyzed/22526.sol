'solc --version' running
'solc ./dataset/contracts/transaction_order/22526.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MCFitCrowdsale.mintToSpecialFund(address).result (dataset/contracts/transaction_order/22526.sol#463) is written in both
	result = false (dataset/contracts/transaction_order/22526.sol#464)
	result = true (dataset/contracts/transaction_order/22526.sol#468)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#write-after-write
INFO:Detectors:
MCFitCrowdsale.changeRateUSD(uint256) (dataset/contracts/transaction_order/22526.sol#471-475) should emit an event for: 
	- rate = _rate (dataset/contracts/transaction_order/22526.sol#474) 
MCFitCrowdsale.changeCheckDate(bool,uint256,uint256) (dataset/contracts/transaction_order/22526.sol#477-485) should emit an event for: 
	- startTime = _startTime (dataset/contracts/transaction_order/22526.sol#483) 
	- endTime = _endTime (dataset/contracts/transaction_order/22526.sol#484) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Ownable.changeAdvisor(address).newAdvisor (dataset/contracts/transaction_order/22526.sol#223) lacks a zero-check on :
		- advisor = newAdvisor (dataset/contracts/transaction_order/22526.sol#224)
MCFitCrowdsale.MCFitCrowdsale(uint256,uint256,uint256,address)._wallet (dataset/contracts/transaction_order/22526.sol#386) lacks a zero-check on :
		- owner = _wallet (dataset/contracts/transaction_order/22526.sol#389)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Crowdsale.Crowdsale(uint256,uint256,uint256,address) (dataset/contracts/transaction_order/22526.sol#322-335) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(_startTime >= now) (dataset/contracts/transaction_order/22526.sol#324)
Crowdsale.hasEnded() (dataset/contracts/transaction_order/22526.sol#338-340) uses timestamp for comparisons
	Dangerous comparisons:
	- now > endTime (dataset/contracts/transaction_order/22526.sol#339)
MCFitCrowdsale.buyTokens(address) (dataset/contracts/transaction_order/22526.sol#405-423) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)(now >= startTime && now < endTime) (dataset/contracts/transaction_order/22526.sol#409)
MCFitCrowdsale.getTotalAmountOfTokens(uint256) (dataset/contracts/transaction_order/22526.sol#425-443) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(currentDate >= startTime) (dataset/contracts/transaction_order/22526.sol#429)
	- totalAllocated < limit40Percent && currentDate < endTime (dataset/contracts/transaction_order/22526.sol#431)
	- totalAllocated < limit20Percent && currentDate < endTime (dataset/contracts/transaction_order/22526.sol#434)
	- totalAllocated < limit10Percent && currentDate < endTime (dataset/contracts/transaction_order/22526.sol#437)
MCFitCrowdsale.changeCheckDate(bool,uint256,uint256) (dataset/contracts/transaction_order/22526.sol#477-485) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(_startTime >= now) (dataset/contracts/transaction_order/22526.sol#479)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
MintableToken.withDraw(address) (dataset/contracts/transaction_order/22526.sol#270-278) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/22526.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/22526.sol#86) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/22526.sol#86) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/22526.sol#103) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/22526.sol#120) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/22526.sol#120) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/22526.sol#120) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/22526.sol#143) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/22526.sol#143) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/22526.sol#155) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/22526.sol#155) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22526.sol#165) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/22526.sol#165) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22526.sol#171) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/22526.sol#171) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/22526.sol#260) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/22526.sol#260) is not in mixedCase
Parameter MintableToken.withDraw(address)._investor (dataset/contracts/transaction_order/22526.sol#270) is not in mixedCase
Parameter MCFitCrowdsale.buyTokens(address)._investor (dataset/contracts/transaction_order/22526.sol#405) is not in mixedCase
Parameter MCFitCrowdsale.getTotalAmountOfTokens(uint256)._weiAmount (dataset/contracts/transaction_order/22526.sol#425) is not in mixedCase
Parameter MCFitCrowdsale.mintToSpecialFund(address)._wallet (dataset/contracts/transaction_order/22526.sol#463) is not in mixedCase
Parameter MCFitCrowdsale.changeRateUSD(uint256)._rate (dataset/contracts/transaction_order/22526.sol#471) is not in mixedCase
Parameter MCFitCrowdsale.changeCheckDate(bool,uint256,uint256)._state (dataset/contracts/transaction_order/22526.sol#477) is not in mixedCase
Parameter MCFitCrowdsale.changeCheckDate(bool,uint256,uint256)._startTime (dataset/contracts/transaction_order/22526.sol#477) is not in mixedCase
Parameter MCFitCrowdsale.changeCheckDate(bool,uint256,uint256)._endTime (dataset/contracts/transaction_order/22526.sol#477) is not in mixedCase
Parameter MCFitCrowdsale.getDeposited(address)._investor (dataset/contracts/transaction_order/22526.sol#487) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Crowdsale.tokenRaised (dataset/contracts/transaction_order/22526.sol#316) should be constant 
ERC20.totalSupply (dataset/contracts/transaction_order/22526.sol#58) should be constant 
ERC20.transfersEnabled (dataset/contracts/transaction_order/22526.sol#60) should be constant 
MCFitCrowdsale.fundReservCompany (dataset/contracts/transaction_order/22526.sol#374) should be constant 
MCFitCrowdsale.fundTeamCompany (dataset/contracts/transaction_order/22526.sol#375) should be constant 
MCFitCrowdsale.limit10Percent (dataset/contracts/transaction_order/22526.sol#380) should be constant 
MCFitCrowdsale.limit20Percent (dataset/contracts/transaction_order/22526.sol#379) should be constant 
MCFitCrowdsale.limit40Percent (dataset/contracts/transaction_order/22526.sol#378) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/22526.sol analyzed (9 contracts with 100 detectors), 46 result(s) found
