'solc --version' running
'solc ./dataset/contracts/transaction_order/29485.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
AcjCrowdsale.reserveTokens(address,uint256) (dataset/contracts/transaction_order/29485.sol#606-617) ignores return value by _token.initialTransfer(_beneficiary,_tokensQty) (dataset/contracts/transaction_order/29485.sol#616)
AcjCrowdsale.buyTokens(address) (dataset/contracts/transaction_order/29485.sol#625-645) ignores return value by _token.initialTransfer(_beneficiary,_tokensQty) (dataset/contracts/transaction_order/29485.sol#644)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Ownable.proposeNewOwner(address) (dataset/contracts/transaction_order/29485.sol#193-196) should emit an event for: 
	- newOwner = _newOwner (dataset/contracts/transaction_order/29485.sol#195) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AcjCrowdsale.reserveTokens(address,uint256) (dataset/contracts/transaction_order/29485.sol#606-617) should emit an event for: 
	- tokensDistributed = _distributed (dataset/contracts/transaction_order/29485.sol#613) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AcjCrowdsale.AcjCrowdsale(uint256,uint256,uint256,uint256,uint256,address)._token (dataset/contracts/transaction_order/29485.sol#500) lacks a zero-check on :
		- token = _token (dataset/contracts/transaction_order/29485.sol#517)
AcjCrowdsale.updateCompanyWallet(address)._wallet (dataset/contracts/transaction_order/29485.sol#544) lacks a zero-check on :
		- companyWallet = _wallet (dataset/contracts/transaction_order/29485.sol#545)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
AcjCrowdsale.adjustTokenExchangeRate(uint256) (dataset/contracts/transaction_order/29485.sol#572-576) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > endPresale && now < startIco) (dataset/contracts/transaction_order/29485.sol#573)
AcjCrowdsale.withdrawUnclaimed() (dataset/contracts/transaction_order/29485.sol#598-601) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > endIco + REFUND_PERIOD || isSuccess()) (dataset/contracts/transaction_order/29485.sol#599)
AcjCrowdsale.hasEnded() (dataset/contracts/transaction_order/29485.sol#650-652) uses timestamp for comparisons
	Dangerous comparisons:
	- now > endIco (dataset/contracts/transaction_order/29485.sol#651)
AcjCrowdsale.isFailed() (dataset/contracts/transaction_order/29485.sol#667-672) uses timestamp for comparisons
	Dangerous comparisons:
	- tokensDistributed < TOKENS_SOFT_CAP && now > endIco (dataset/contracts/transaction_order/29485.sol#668)
AcjCrowdsale.getBonus(uint256) (dataset/contracts/transaction_order/29485.sol#678-694) uses timestamp for comparisons
	Dangerous comparisons:
	- endPresale > now (dataset/contracts/transaction_order/29485.sol#682)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
AcjCrowdsale.adminOnly() (dataset/contracts/transaction_order/29485.sol#457-460) compares to a boolean constant:
	-require(bool)(msg.sender == owner || admins[msg.sender] == true) (dataset/contracts/transaction_order/29485.sol#458)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.18 (dataset/contracts/transaction_order/29485.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/29485.sol#77) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/29485.sol#77) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/29485.sol#93) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29485.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29485.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29485.sol#119) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/29485.sol#141) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/29485.sol#141) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/29485.sol#153) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/29485.sol#153) is not in mixedCase
Parameter Ownable.proposeNewOwner(address)._newOwner (dataset/contracts/transaction_order/29485.sol#193) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/29485.sol#230) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/29485.sol#230) is not in mixedCase
Parameter BurnableToken.burn(uint256)._value (dataset/contracts/transaction_order/29485.sol#262) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/29485.sol#331) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/29485.sol#331) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29485.sol#335) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29485.sol#335) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29485.sol#335) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/29485.sol#339) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._value (dataset/contracts/transaction_order/29485.sol#339) is not in mixedCase
Parameter AcjToken.initialTransfer(address,uint256)._to (dataset/contracts/transaction_order/29485.sol#371) is not in mixedCase
Parameter AcjToken.initialTransfer(address,uint256)._value (dataset/contracts/transaction_order/29485.sol#371) is not in mixedCase
Parameter AcjToken.burn(uint256)._amount (dataset/contracts/transaction_order/29485.sol#381) is not in mixedCase
Parameter AcjCrowdsale.addAdmin(address)._adr (dataset/contracts/transaction_order/29485.sol#531) is not in mixedCase
Parameter AcjCrowdsale.removeAdmin(address)._adr (dataset/contracts/transaction_order/29485.sol#536) is not in mixedCase
Parameter AcjCrowdsale.updateCompanyWallet(address)._wallet (dataset/contracts/transaction_order/29485.sol#544) is not in mixedCase
Parameter AcjCrowdsale.proposeTokenOwner(address)._newOwner (dataset/contracts/transaction_order/29485.sol#551) is not in mixedCase
Parameter AcjCrowdsale.adjustTokenExchangeRate(uint256)._rate (dataset/contracts/transaction_order/29485.sol#572) is not in mixedCase
Parameter AcjCrowdsale.reserveTokens(address,uint256)._beneficiary (dataset/contracts/transaction_order/29485.sol#606) is not in mixedCase
Parameter AcjCrowdsale.reserveTokens(address,uint256)._tokensQty (dataset/contracts/transaction_order/29485.sol#606) is not in mixedCase
Parameter AcjCrowdsale.buyTokens(address)._beneficiary (dataset/contracts/transaction_order/29485.sol#625) is not in mixedCase
Parameter AcjCrowdsale.getBonus(uint256)._wei (dataset/contracts/transaction_order/29485.sol#678) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
AcjToken.AcjToken() (dataset/contracts/transaction_order/29485.sol#357-361) uses literals with too many digits:
	- totalSupply = 150000000000000000000000000 (dataset/contracts/transaction_order/29485.sol#358)
AcjCrowdsale.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/29485.sol#390-697) uses literals with too many digits:
	- TOKENS_TOTAL_SUPPLY = 150000000000000000000000000 (dataset/contracts/transaction_order/29485.sol#416)
AcjCrowdsale.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/29485.sol#390-697) uses literals with too many digits:
	- TOKENS_FOR_SALE = 75000000000000000000000000 (dataset/contracts/transaction_order/29485.sol#418)
AcjCrowdsale.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/29485.sol#390-697) uses literals with too many digits:
	- TOKENS_SOFT_CAP = 500000000000000000000000 (dataset/contracts/transaction_order/29485.sol#420)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/29485.sol analyzed (12 contracts with 100 detectors), 51 result(s) found
