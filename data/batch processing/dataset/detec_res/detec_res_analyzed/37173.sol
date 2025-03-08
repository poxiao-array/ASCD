'solc --version' running
'solc ./dataset/contracts/transaction_order/37173.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/37173.sol:
./dataset/contracts/transaction_order/37173.sol:447:9: Warning: Unused local variable
        uint usd = ethToUsd(_wei);
        ^------^

INFO:Detectors:
OZRealestatesToken.refund(address) (dataset/contracts/transaction_order/37173.sol#550-572) sends eth to arbitrary user
	Dangerous calls:
	- _addr.transfer(value) (dataset/contracts/transaction_order/37173.sol#569)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
OZRealestatesToken.destroy() (dataset/contracts/transaction_order/37173.sol#660-668) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/37173.sol#666)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
OZRealestatesToken.refund(address)._addr (dataset/contracts/transaction_order/37173.sol#550) lacks a zero-check on :
		- _addr.transfer(value) (dataset/contracts/transaction_order/37173.sol#569)
OZRealestatesToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/37173.sol#624) lacks a zero-check on :
		- newOwner = _newOwner (dataset/contracts/transaction_order/37173.sol#631)
OZRealestatesToken.changeOzreal(address)._addr (dataset/contracts/transaction_order/37173.sol#649) lacks a zero-check on :
		- Ozreal = _addr (dataset/contracts/transaction_order/37173.sol#655)
OzrealTest.setOzr(address)._addr (dataset/contracts/transaction_order/37173.sol#695) lacks a zero-check on :
		- ozr = _addr (dataset/contracts/transaction_order/37173.sol#695)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
OZRealestatesToken.fundFailed() (dataset/contracts/transaction_order/37173.sol#413-417) uses timestamp for comparisons
	Dangerous comparisons:
	- ! __abortFuse || (now > END_DATE && etherRaised < MIN_ETH_FUND) (dataset/contracts/transaction_order/37173.sol#415-416)
OZRealestatesToken.fundSucceeded() (dataset/contracts/transaction_order/37173.sol#420-424) uses timestamp for comparisons
	Dangerous comparisons:
	- ! fundFailed() && etherRaised >= MIN_ETH_FUND (dataset/contracts/transaction_order/37173.sol#422-423)
OZRealestatesToken.proxyPurchase(address) (dataset/contracts/transaction_order/37173.sol#482-515) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= END_DATE) (dataset/contracts/transaction_order/37173.sol#489)
	- require(bool)(now >= START_DATE) (dataset/contracts/transaction_order/37173.sol#495)
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
	- ^0.4.13 (dataset/contracts/transaction_order/37173.sol#21)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable ReentryProtected.__reMutex (dataset/contracts/transaction_order/37173.sol#101) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._addr (dataset/contracts/transaction_order/37173.sol#161) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/37173.sol#170) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/37173.sol#170) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/37173.sol#179) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#179) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37173.sol#187) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37173.sol#187) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#187) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._from (dataset/contracts/transaction_order/37173.sol#198) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._to (dataset/contracts/transaction_order/37173.sol#198) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#198) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/37173.sol#216) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#216) is not in mixedCase
Variable OZRealestatesTokenAbstract.__abortFuse (dataset/contracts/transaction_order/37173.sol#268) is not in mixedCase
Variable OZRealestatesTokenAbstract.Ozreal (dataset/contracts/transaction_order/37173.sol#281) is not in mixedCase
Parameter OZRealestatesToken.ethToUsd(uint256)._wei (dataset/contracts/transaction_order/37173.sol#427) is not in mixedCase
Parameter OZRealestatesToken.usdToEth(uint256)._usd (dataset/contracts/transaction_order/37173.sol#433) is not in mixedCase
Parameter OZRealestatesToken.ethToTokens(uint256)._wei (dataset/contracts/transaction_order/37173.sol#445) is not in mixedCase
Parameter OZRealestatesToken.proxyPurchase(address)._addr (dataset/contracts/transaction_order/37173.sol#482) is not in mixedCase
Parameter OZRealestatesToken.addKycAddress(address,bool)._addr (dataset/contracts/transaction_order/37173.sol#518) is not in mixedCase
Parameter OZRealestatesToken.addKycAddress(address,bool)._kyc (dataset/contracts/transaction_order/37173.sol#518) is not in mixedCase
Parameter OZRealestatesToken.refund(address)._addr (dataset/contracts/transaction_order/37173.sol#550) is not in mixedCase
Parameter OZRealestatesToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/37173.sol#578) is not in mixedCase
Parameter OZRealestatesToken.transfer(address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#578) is not in mixedCase
Parameter OZRealestatesToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/37173.sol#593) is not in mixedCase
Parameter OZRealestatesToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/37173.sol#593) is not in mixedCase
Parameter OZRealestatesToken.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#593) is not in mixedCase
Parameter OZRealestatesToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/37173.sol#608) is not in mixedCase
Parameter OZRealestatesToken.approve(address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#608) is not in mixedCase
Parameter OZRealestatesToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/37173.sol#624) is not in mixedCase
Parameter OZRealestatesToken.changeOzreal(address)._addr (dataset/contracts/transaction_order/37173.sol#649) is not in mixedCase
Variable OZRealestatesToken.END_DATE (dataset/contracts/transaction_order/37173.sol#362) is not in mixedCase
Parameter OzrealTest.setOzr(address)._addr (dataset/contracts/transaction_order/37173.sol#695) is not in mixedCase
Parameter OzrealTest.notify(address,uint256)._from (dataset/contracts/transaction_order/37173.sol#697) is not in mixedCase
Parameter OzrealTest.notify(address,uint256)._amount (dataset/contracts/transaction_order/37173.sol#697) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
OZRealestatesToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37173.sol#343-680) uses literals with too many digits:
	- MAX_USD_FUND = 2000000 (dataset/contracts/transaction_order/37173.sol#52)
OZRealestatesToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/37173.sol#343-680) uses literals with too many digits:
	- MAX_TOKENS = 100000000 (dataset/contracts/transaction_order/37173.sol#59)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Token.symbol (dataset/contracts/transaction_order/37173.sol#132) should be constant 
OZRealestatesToken.END_DATE (dataset/contracts/transaction_order/37173.sol#362) should be constant 
OZRealestatesTokenConfig.fundWallet (dataset/contracts/transaction_order/37173.sol#42) should be constant 
OZRealestatesTokenConfig.name (dataset/contracts/transaction_order/37173.sol#33) should be constant 
OZRealestatesTokenConfig.symbol (dataset/contracts/transaction_order/37173.sol#34) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/37173.sol analyzed (8 contracts with 100 detectors), 54 result(s) found
