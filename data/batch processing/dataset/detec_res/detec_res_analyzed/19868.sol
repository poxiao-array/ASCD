'solc --version' running
'solc ./dataset/contracts/transaction_order/19868.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/19868.sol:
./dataset/contracts/transaction_order/19868.sol:320:5: Warning: No visibility specified. Defaulting to "public".
    function proxyPurchase(address _addr) payable returns (bool);
    ^-----------------------------------------------------------^
./dataset/contracts/transaction_order/19868.sol:339:5: Warning: No visibility specified. Defaulting to "public".
    function transferAnyERC20Token(address tokenAddress, uint amount)
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/19868.sol:385:5: Warning: No visibility specified. Defaulting to "public".
    function depositofferToken()
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/19868.sol:407:5: Warning: No visibility specified. Defaulting to "public".
    function ()
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/19868.sol:489:5: Warning: No visibility specified. Defaulting to "public".
    function proxyPurchase(address _addr)
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/19868.sol:706:5: Warning: No visibility specified. Defaulting to "public".
    function setdot(address _addr) { dot = _addr; }
    ^---------------------------------------------^
./dataset/contracts/transaction_order/19868.sol:454:9: Warning: Unused local variable.
        uint usd = ethToUsd(_wei);
        ^------^

INFO:Detectors:
depositofferToken.refund(address) (dataset/contracts/transaction_order/19868.sol#561-583) sends eth to arbitrary user
	Dangerous calls:
	- _addr.transfer(value) (dataset/contracts/transaction_order/19868.sol#580)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
depositofferToken.destroy() (dataset/contracts/transaction_order/19868.sol#671-679) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/19868.sol#677)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/19868.sol#561) lacks a zero-check on :
		- _addr.transfer(value) (dataset/contracts/transaction_order/19868.sol#580)
depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/19868.sol#635) lacks a zero-check on :
		- newOwner = _newOwner (dataset/contracts/transaction_order/19868.sol#642)
depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/19868.sol#660) lacks a zero-check on :
		- deposito = _addr (dataset/contracts/transaction_order/19868.sol#666)
depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/19868.sol#706) lacks a zero-check on :
		- dot = _addr (dataset/contracts/transaction_order/19868.sol#706)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
depositofferToken.fundFailed() (dataset/contracts/transaction_order/19868.sol#420-424) uses timestamp for comparisons
	Dangerous comparisons:
	- ! __abortFuse || (now > END_DATE && etherRaised < MIN_ETH_FUND) (dataset/contracts/transaction_order/19868.sol#422-423)
depositofferToken.fundSucceeded() (dataset/contracts/transaction_order/19868.sol#427-431) uses timestamp for comparisons
	Dangerous comparisons:
	- ! fundFailed() && etherRaised >= MIN_ETH_FUND (dataset/contracts/transaction_order/19868.sol#429-430)
depositofferToken.proxyPurchase(address) (dataset/contracts/transaction_order/19868.sol#489-523) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= END_DATE) (dataset/contracts/transaction_order/19868.sol#496)
	- require(bool)(now >= START_DATE) (dataset/contracts/transaction_order/19868.sol#502)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.18 (dataset/contracts/transaction_order/19868.sol#20)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract depositofferTokenConfig (dataset/contracts/transaction_order/19868.sol#29-71) is not in CapWords
Variable ReentryProtected.__reMutex (dataset/contracts/transaction_order/19868.sol#97) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._addr (dataset/contracts/transaction_order/19868.sol#157) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/19868.sol#166) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/19868.sol#166) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/19868.sol#175) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#175) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/19868.sol#183) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/19868.sol#183) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#183) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._from (dataset/contracts/transaction_order/19868.sol#194) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._to (dataset/contracts/transaction_order/19868.sol#194) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#194) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/19868.sol#212) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#212) is not in mixedCase
Contract depositofferTokenAbstract (dataset/contracts/transaction_order/19868.sol#254-341) is not in CapWords
Variable depositofferTokenAbstract.__abortFuse (dataset/contracts/transaction_order/19868.sol#275) is not in mixedCase
Contract depositofferToken (dataset/contracts/transaction_order/19868.sol#350-691) is not in CapWords
Parameter depositofferToken.ethToUsd(uint256)._wei (dataset/contracts/transaction_order/19868.sol#434) is not in mixedCase
Parameter depositofferToken.usdToEth(uint256)._usd (dataset/contracts/transaction_order/19868.sol#440) is not in mixedCase
Parameter depositofferToken.ethToTokens(uint256)._wei (dataset/contracts/transaction_order/19868.sol#452) is not in mixedCase
Parameter depositofferToken.proxyPurchase(address)._addr (dataset/contracts/transaction_order/19868.sol#489) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._addr (dataset/contracts/transaction_order/19868.sol#526) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._kyc (dataset/contracts/transaction_order/19868.sol#526) is not in mixedCase
Parameter depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/19868.sol#561) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/19868.sol#589) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#589) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/19868.sol#604) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/19868.sol#604) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#604) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/19868.sol#619) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#619) is not in mixedCase
Parameter depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/19868.sol#635) is not in mixedCase
Parameter depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/19868.sol#660) is not in mixedCase
Variable depositofferToken.END_DATE (dataset/contracts/transaction_order/19868.sol#369) is not in mixedCase
Contract depositoTest (dataset/contracts/transaction_order/19868.sol#702-715) is not in CapWords
Parameter depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/19868.sol#706) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._from (dataset/contracts/transaction_order/19868.sol#708) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._amount (dataset/contracts/transaction_order/19868.sol#708) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/19868.sol#350-691) uses literals with too many digits:
	- MAX_USD_FUND = 2000000 (dataset/contracts/transaction_order/19868.sol#55)
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/19868.sol#350-691) uses literals with too many digits:
	- MAX_TOKENS = 4000000 (dataset/contracts/transaction_order/19868.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Token.symbol (dataset/contracts/transaction_order/19868.sol#128) should be constant 
depositofferToken.END_DATE (dataset/contracts/transaction_order/19868.sol#369) should be constant 
depositofferTokenConfig.fundWallet (dataset/contracts/transaction_order/19868.sol#42) should be constant 
depositofferTokenConfig.name (dataset/contracts/transaction_order/19868.sol#32) should be constant 
depositofferTokenConfig.symbol (dataset/contracts/transaction_order/19868.sol#33) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/19868.sol analyzed (8 contracts with 100 detectors), 57 result(s) found
