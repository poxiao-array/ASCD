'solc --version' running
'solc ./dataset/contracts/transaction_order/30103.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
AcjCrowdsale.reserveTokens(address,uint256) (dataset/contracts/transaction_order/30103.sol#653-665) ignores return value by _token.initialTransfer(_beneficiary,_tokensQty) (dataset/contracts/transaction_order/30103.sol#664)
AcjCrowdsale.buyTokens(address) (dataset/contracts/transaction_order/30103.sol#674-695) ignores return value by _token.initialTransfer(_beneficiary,_tokensQty) (dataset/contracts/transaction_order/30103.sol#694)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Ownable.proposeNewOwner(address) (dataset/contracts/transaction_order/30103.sol#192-195) should emit an event for: 
	- newOwner = _newOwner (dataset/contracts/transaction_order/30103.sol#194) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AcjCrowdsale.reserveTokens(address,uint256) (dataset/contracts/transaction_order/30103.sol#653-665) should emit an event for: 
	- tokensDistributed = _distributed (dataset/contracts/transaction_order/30103.sol#661) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AcjCrowdsale.AcjCrowdsale(uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256,address)._token (dataset/contracts/transaction_order/30103.sol#524) lacks a zero-check on :
		- token = _token (dataset/contracts/transaction_order/30103.sol#549)
AcjCrowdsale.updateCompanyWallet(address)._wallet (dataset/contracts/transaction_order/30103.sol#583) lacks a zero-check on :
		- companyWallet = _wallet (dataset/contracts/transaction_order/30103.sol#585)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
AcjCrowdsale.adjustTokenExchangeRate(uint256) (dataset/contracts/transaction_order/30103.sol#615-620) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > endPresale && now < startIco) (dataset/contracts/transaction_order/30103.sol#617)
AcjCrowdsale.withdrawUnclaimed() (dataset/contracts/transaction_order/30103.sol#644-648) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > endIco + REFUND_PERIOD || isSuccess()) (dataset/contracts/transaction_order/30103.sol#646)
AcjCrowdsale.hasEnded() (dataset/contracts/transaction_order/30103.sol#700-703) uses timestamp for comparisons
	Dangerous comparisons:
	- now > endIco (dataset/contracts/transaction_order/30103.sol#702)
AcjCrowdsale.isFailed() (dataset/contracts/transaction_order/30103.sol#719-725) uses timestamp for comparisons
	Dangerous comparisons:
	- tokensSold < tokensSoftCap && now > endIco (dataset/contracts/transaction_order/30103.sol#721)
AcjCrowdsale.getBonus(uint256) (dataset/contracts/transaction_order/30103.sol#731-748) uses timestamp for comparisons
	Dangerous comparisons:
	- endPresale > now (dataset/contracts/transaction_order/30103.sol#736)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
AcjCrowdsale.adminOnly() (dataset/contracts/transaction_order/30103.sol#476-479) compares to a boolean constant:
	-require(bool)(msg.sender == owner || admins[msg.sender] == true) (dataset/contracts/transaction_order/30103.sol#477)
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
	- ^0.4.18 (dataset/contracts/transaction_order/30103.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/30103.sol#76) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/30103.sol#76) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/30103.sol#92) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/30103.sol#118) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/30103.sol#118) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/30103.sol#118) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/30103.sol#140) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/30103.sol#140) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/30103.sol#152) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/30103.sol#152) is not in mixedCase
Parameter Ownable.proposeNewOwner(address)._newOwner (dataset/contracts/transaction_order/30103.sol#192) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/30103.sol#229) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/30103.sol#229) is not in mixedCase
Parameter BurnableToken.burn(uint256)._value (dataset/contracts/transaction_order/30103.sol#261) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/30103.sol#330) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/30103.sol#330) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/30103.sol#334) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/30103.sol#334) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/30103.sol#334) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/30103.sol#338) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._value (dataset/contracts/transaction_order/30103.sol#338) is not in mixedCase
Parameter AcjToken.initialTransfer(address,uint256)._to (dataset/contracts/transaction_order/30103.sol#370) is not in mixedCase
Parameter AcjToken.initialTransfer(address,uint256)._value (dataset/contracts/transaction_order/30103.sol#370) is not in mixedCase
Parameter AcjToken.burn(uint256)._amount (dataset/contracts/transaction_order/30103.sol#380) is not in mixedCase
Parameter AcjCrowdsale.addAdmin(address)._adr (dataset/contracts/transaction_order/30103.sol#568) is not in mixedCase
Parameter AcjCrowdsale.removeAdmin(address)._adr (dataset/contracts/transaction_order/30103.sol#574) is not in mixedCase
Parameter AcjCrowdsale.updateCompanyWallet(address)._wallet (dataset/contracts/transaction_order/30103.sol#583) is not in mixedCase
Parameter AcjCrowdsale.proposeTokenOwner(address)._newOwner (dataset/contracts/transaction_order/30103.sol#591) is not in mixedCase
Parameter AcjCrowdsale.adjustTokenExchangeRate(uint256)._rate (dataset/contracts/transaction_order/30103.sol#615) is not in mixedCase
Parameter AcjCrowdsale.reserveTokens(address,uint256)._beneficiary (dataset/contracts/transaction_order/30103.sol#653) is not in mixedCase
Parameter AcjCrowdsale.reserveTokens(address,uint256)._tokensQty (dataset/contracts/transaction_order/30103.sol#653) is not in mixedCase
Parameter AcjCrowdsale.buyTokens(address)._beneficiary (dataset/contracts/transaction_order/30103.sol#674) is not in mixedCase
Parameter AcjCrowdsale.getBonus(uint256)._wei (dataset/contracts/transaction_order/30103.sol#731) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
AcjToken.AcjToken() (dataset/contracts/transaction_order/30103.sol#356-360) uses literals with too many digits:
	- totalSupply = 150000000000000000000000000 (dataset/contracts/transaction_order/30103.sol#357)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
AcjCrowdsale.weiMinContribution (dataset/contracts/transaction_order/30103.sol#444) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/30103.sol analyzed (12 contracts with 100 detectors), 49 result(s) found
