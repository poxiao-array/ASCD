'solc --version' running
'solc ./dataset/contracts/transaction_order/34758.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/34758.sol:
./dataset/contracts/transaction_order/34758.sol:459:9: Warning: Unused local variable
        uint usd = ethToUsd(_wei);
        ^------^

INFO:Detectors:
depositofferToken.refund(address) (dataset/contracts/transaction_order/34758.sol#566-588) sends eth to arbitrary user
	Dangerous calls:
	- _addr.transfer(value) (dataset/contracts/transaction_order/34758.sol#585)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
depositofferToken.destroy() (dataset/contracts/transaction_order/34758.sol#676-684) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/34758.sol#682)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/34758.sol#566) lacks a zero-check on :
		- _addr.transfer(value) (dataset/contracts/transaction_order/34758.sol#585)
depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/34758.sol#640) lacks a zero-check on :
		- newOwner = _newOwner (dataset/contracts/transaction_order/34758.sol#647)
depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/34758.sol#665) lacks a zero-check on :
		- deposito = _addr (dataset/contracts/transaction_order/34758.sol#671)
depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/34758.sol#711) lacks a zero-check on :
		- dot = _addr (dataset/contracts/transaction_order/34758.sol#711)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
depositofferToken.fundFailed() (dataset/contracts/transaction_order/34758.sol#425-429) uses timestamp for comparisons
	Dangerous comparisons:
	- ! __abortFuse || (now > END_DATE && etherRaised < MIN_ETH_FUND) (dataset/contracts/transaction_order/34758.sol#427-428)
depositofferToken.fundSucceeded() (dataset/contracts/transaction_order/34758.sol#432-436) uses timestamp for comparisons
	Dangerous comparisons:
	- ! fundFailed() && etherRaised >= MIN_ETH_FUND (dataset/contracts/transaction_order/34758.sol#434-435)
depositofferToken.proxyPurchase(address) (dataset/contracts/transaction_order/34758.sol#494-528) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= END_DATE) (dataset/contracts/transaction_order/34758.sol#501)
	- require(bool)(now >= START_DATE) (dataset/contracts/transaction_order/34758.sol#507)
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
	- ^0.4.13 (dataset/contracts/transaction_order/34758.sol#21)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract depositofferTokenConfig (dataset/contracts/transaction_order/34758.sol#30-67) is not in CapWords
Variable ReentryProtected.__reMutex (dataset/contracts/transaction_order/34758.sol#102) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._addr (dataset/contracts/transaction_order/34758.sol#162) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/34758.sol#171) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/34758.sol#171) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/34758.sol#180) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#180) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34758.sol#188) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34758.sol#188) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#188) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._from (dataset/contracts/transaction_order/34758.sol#199) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._to (dataset/contracts/transaction_order/34758.sol#199) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#199) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/34758.sol#217) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#217) is not in mixedCase
Contract depositofferTokenAbstract (dataset/contracts/transaction_order/34758.sol#259-346) is not in CapWords
Variable depositofferTokenAbstract.__abortFuse (dataset/contracts/transaction_order/34758.sol#280) is not in mixedCase
Contract depositofferToken (dataset/contracts/transaction_order/34758.sol#355-696) is not in CapWords
Parameter depositofferToken.ethToUsd(uint256)._wei (dataset/contracts/transaction_order/34758.sol#439) is not in mixedCase
Parameter depositofferToken.usdToEth(uint256)._usd (dataset/contracts/transaction_order/34758.sol#445) is not in mixedCase
Parameter depositofferToken.ethToTokens(uint256)._wei (dataset/contracts/transaction_order/34758.sol#457) is not in mixedCase
Parameter depositofferToken.proxyPurchase(address)._addr (dataset/contracts/transaction_order/34758.sol#494) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._addr (dataset/contracts/transaction_order/34758.sol#531) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._kyc (dataset/contracts/transaction_order/34758.sol#531) is not in mixedCase
Parameter depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/34758.sol#566) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/34758.sol#594) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#594) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34758.sol#609) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34758.sol#609) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#609) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/34758.sol#624) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#624) is not in mixedCase
Parameter depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/34758.sol#640) is not in mixedCase
Parameter depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/34758.sol#665) is not in mixedCase
Variable depositofferToken.END_DATE (dataset/contracts/transaction_order/34758.sol#374) is not in mixedCase
Contract depositoTest (dataset/contracts/transaction_order/34758.sol#707-720) is not in CapWords
Parameter depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/34758.sol#711) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._from (dataset/contracts/transaction_order/34758.sol#713) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._amount (dataset/contracts/transaction_order/34758.sol#713) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/34758.sol#355-696) uses literals with too many digits:
	- MAX_USD_FUND = 2000000 (dataset/contracts/transaction_order/34758.sol#52)
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/34758.sol#355-696) uses literals with too many digits:
	- MAX_TOKENS = 4000000 (dataset/contracts/transaction_order/34758.sol#59)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Token.symbol (dataset/contracts/transaction_order/34758.sol#133) should be constant 
depositofferToken.END_DATE (dataset/contracts/transaction_order/34758.sol#374) should be constant 
depositofferTokenConfig.fundWallet (dataset/contracts/transaction_order/34758.sol#42) should be constant 
depositofferTokenConfig.name (dataset/contracts/transaction_order/34758.sol#33) should be constant 
depositofferTokenConfig.symbol (dataset/contracts/transaction_order/34758.sol#34) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/34758.sol analyzed (8 contracts with 100 detectors), 57 result(s) found
