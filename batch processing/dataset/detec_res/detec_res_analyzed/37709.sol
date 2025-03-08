'solc --version' running
'solc ./dataset/contracts/transaction_order/37709.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
VentanaToken.refund(address) (dataset/contracts/transaction_order/37709.sol#556-578) sends eth to arbitrary user
	Dangerous calls:
	- _addr.transfer(value) (dataset/contracts/transaction_order/37709.sol#575)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
VentanaToken.destroy() (dataset/contracts/transaction_order/37709.sol#666-674) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/37709.sol#672)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
VentanaToken.refund(address)._addr (dataset/contracts/transaction_order/37709.sol#556) lacks a zero-check on :
		- _addr.transfer(value) (dataset/contracts/transaction_order/37709.sol#575)
VentanaToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/37709.sol#630) lacks a zero-check on :
		- newOwner = _newOwner (dataset/contracts/transaction_order/37709.sol#637)
VentanaToken.changeVeredictum(address)._addr (dataset/contracts/transaction_order/37709.sol#655) lacks a zero-check on :
		- veredictum = _addr (dataset/contracts/transaction_order/37709.sol#661)
VeredictumTest.setVnt(address)._addr (dataset/contracts/transaction_order/37709.sol#701) lacks a zero-check on :
		- vnt = _addr (dataset/contracts/transaction_order/37709.sol#701)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
VentanaToken.fundFailed() (dataset/contracts/transaction_order/37709.sol#420-424) uses timestamp for comparisons
	Dangerous comparisons:
	- ! __abortFuse || (now > END_DATE && etherRaised < MIN_ETH_FUND) (dataset/contracts/transaction_order/37709.sol#422-423)
VentanaToken.fundSucceeded() (dataset/contracts/transaction_order/37709.sol#427-431) uses timestamp for comparisons
	Dangerous comparisons:
	- ! fundFailed() && etherRaised >= MIN_ETH_FUND (dataset/contracts/transaction_order/37709.sol#429-430)
VentanaToken.proxyPurchase(address) (dataset/contracts/transaction_order/37709.sol#489-522) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= END_DATE) (dataset/contracts/transaction_order/37709.sol#496)
	- require(bool)(now >= START_DATE) (dataset/contracts/transaction_order/37709.sol#502)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/37709.sol#28)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable ReentryProtected.__reMutex (dataset/contracts/transaction_order/37709.sol#108) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._addr (dataset/contracts/transaction_order/37709.sol#168) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/37709.sol#177) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/37709.sol#177) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/37709.sol#186) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#186) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37709.sol#194) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37709.sol#194) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#194) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._from (dataset/contracts/transaction_order/37709.sol#205) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._to (dataset/contracts/transaction_order/37709.sol#205) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#205) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/37709.sol#223) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#223) is not in mixedCase
Variable VentanaTokenAbstract.__abortFuse (dataset/contracts/transaction_order/37709.sol#275) is not in mixedCase
Parameter VentanaToken.ethToUsd(uint256)._wei (dataset/contracts/transaction_order/37709.sol#434) is not in mixedCase
Parameter VentanaToken.usdToEth(uint256)._usd (dataset/contracts/transaction_order/37709.sol#440) is not in mixedCase
Parameter VentanaToken.ethToTokens(uint256)._wei (dataset/contracts/transaction_order/37709.sol#452) is not in mixedCase
Parameter VentanaToken.proxyPurchase(address)._addr (dataset/contracts/transaction_order/37709.sol#489) is not in mixedCase
Parameter VentanaToken.addKycAddress(address,bool)._addr (dataset/contracts/transaction_order/37709.sol#525) is not in mixedCase
Parameter VentanaToken.addKycAddress(address,bool)._kyc (dataset/contracts/transaction_order/37709.sol#525) is not in mixedCase
Parameter VentanaToken.refund(address)._addr (dataset/contracts/transaction_order/37709.sol#556) is not in mixedCase
Parameter VentanaToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/37709.sol#584) is not in mixedCase
Parameter VentanaToken.transfer(address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#584) is not in mixedCase
Parameter VentanaToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37709.sol#599) is not in mixedCase
Parameter VentanaToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37709.sol#599) is not in mixedCase
Parameter VentanaToken.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#599) is not in mixedCase
Parameter VentanaToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/37709.sol#614) is not in mixedCase
Parameter VentanaToken.approve(address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#614) is not in mixedCase
Parameter VentanaToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/37709.sol#630) is not in mixedCase
Parameter VentanaToken.changeVeredictum(address)._addr (dataset/contracts/transaction_order/37709.sol#655) is not in mixedCase
Variable VentanaToken.END_DATE (dataset/contracts/transaction_order/37709.sol#369) is not in mixedCase
Parameter VeredictumTest.setVnt(address)._addr (dataset/contracts/transaction_order/37709.sol#701) is not in mixedCase
Parameter VeredictumTest.notify(address,uint256)._from (dataset/contracts/transaction_order/37709.sol#703) is not in mixedCase
Parameter VeredictumTest.notify(address,uint256)._amount (dataset/contracts/transaction_order/37709.sol#703) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
VentanaToken.ethToTokens(uint256) (dataset/contracts/transaction_order/37709.sol#452-468) uses literals with too many digits:
	- usd >= 2000000 (dataset/contracts/transaction_order/37709.sol#457-464)
VentanaToken.ethToTokens(uint256) (dataset/contracts/transaction_order/37709.sol#452-468) uses literals with too many digits:
	- usd >= 500000 (dataset/contracts/transaction_order/37709.sol#457-464)
VentanaToken.ethToTokens(uint256) (dataset/contracts/transaction_order/37709.sol#452-468) uses literals with too many digits:
	- usd >= 100000 (dataset/contracts/transaction_order/37709.sol#457-464)
VentanaToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37709.sol#350-686) uses literals with too many digits:
	- MIN_USD_FUND = 2000000 (dataset/contracts/transaction_order/37709.sol#58)
VentanaToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37709.sol#350-686) uses literals with too many digits:
	- MAX_USD_FUND = 20000000 (dataset/contracts/transaction_order/37709.sol#59)
VentanaToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37709.sol#350-686) uses literals with too many digits:
	- MAX_TOKENS = 300000000 (dataset/contracts/transaction_order/37709.sol#66)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Token.symbol (dataset/contracts/transaction_order/37709.sol#139) should be constant 
VentanaToken.END_DATE (dataset/contracts/transaction_order/37709.sol#369) should be constant 
VentanaTokenConfig.fundWallet (dataset/contracts/transaction_order/37709.sol#49) should be constant 
VentanaTokenConfig.name (dataset/contracts/transaction_order/37709.sol#40) should be constant 
VentanaTokenConfig.symbol (dataset/contracts/transaction_order/37709.sol#41) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/37709.sol analyzed (8 contracts with 100 detectors), 57 result(s) found
