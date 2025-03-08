'solc --version' running
'solc ./dataset/contracts/transaction_order/20051.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/20051.sol:
./dataset/contracts/transaction_order/20051.sol:317:5: Warning: No visibility specified. Defaulting to "public".
    function proxyPurchase(address _addr) payable returns (bool);
    ^-----------------------------------------------------------^
./dataset/contracts/transaction_order/20051.sol:336:5: Warning: No visibility specified. Defaulting to "public".
    function transferAnyERC20Token(address tokenAddress, uint amount)
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20051.sol:382:5: Warning: No visibility specified. Defaulting to "public".
    function depositofferToken()
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20051.sol:404:5: Warning: No visibility specified. Defaulting to "public".
    function ()
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20051.sol:486:5: Warning: No visibility specified. Defaulting to "public".
    function proxyPurchase(address _addr)
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20051.sol:703:5: Warning: No visibility specified. Defaulting to "public".
    function setdot(address _addr) { dot = _addr; }
    ^---------------------------------------------^
./dataset/contracts/transaction_order/20051.sol:42:49: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
    address public            fundWallet =      0xcce1f6f4ceb0f046cf57fe8e1c409fc47afe6aab; 
                                                ^----------------------------------------^
./dataset/contracts/transaction_order/20051.sol:451:9: Warning: Unused local variable.
        uint usd = ethToUsd(_wei);
        ^------^

INFO:Detectors:
depositofferToken.refund(address) (dataset/contracts/transaction_order/20051.sol#558-580) sends eth to arbitrary user
	Dangerous calls:
	- _addr.transfer(value) (dataset/contracts/transaction_order/20051.sol#577)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
depositofferToken.destroy() (dataset/contracts/transaction_order/20051.sol#668-676) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/20051.sol#674)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/20051.sol#558) lacks a zero-check on :
		- _addr.transfer(value) (dataset/contracts/transaction_order/20051.sol#577)
depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/20051.sol#632) lacks a zero-check on :
		- newOwner = _newOwner (dataset/contracts/transaction_order/20051.sol#639)
depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/20051.sol#657) lacks a zero-check on :
		- deposito = _addr (dataset/contracts/transaction_order/20051.sol#663)
depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/20051.sol#703) lacks a zero-check on :
		- dot = _addr (dataset/contracts/transaction_order/20051.sol#703)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
depositofferToken.fundFailed() (dataset/contracts/transaction_order/20051.sol#417-421) uses timestamp for comparisons
	Dangerous comparisons:
	- ! __abortFuse || (now > END_DATE && etherRaised < MIN_ETH_FUND) (dataset/contracts/transaction_order/20051.sol#419-420)
depositofferToken.fundSucceeded() (dataset/contracts/transaction_order/20051.sol#424-428) uses timestamp for comparisons
	Dangerous comparisons:
	- ! fundFailed() && etherRaised >= MIN_ETH_FUND (dataset/contracts/transaction_order/20051.sol#426-427)
depositofferToken.proxyPurchase(address) (dataset/contracts/transaction_order/20051.sol#486-520) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= END_DATE) (dataset/contracts/transaction_order/20051.sol#493)
	- require(bool)(now >= START_DATE) (dataset/contracts/transaction_order/20051.sol#499)
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
	- ^0.4.18 (dataset/contracts/transaction_order/20051.sol#20)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract depositofferTokenConfig (dataset/contracts/transaction_order/20051.sol#29-68) is not in CapWords
Variable ReentryProtected.__reMutex (dataset/contracts/transaction_order/20051.sol#94) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._addr (dataset/contracts/transaction_order/20051.sol#154) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/20051.sol#163) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/20051.sol#163) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/20051.sol#172) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#172) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20051.sol#180) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20051.sol#180) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#180) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._from (dataset/contracts/transaction_order/20051.sol#191) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._to (dataset/contracts/transaction_order/20051.sol#191) is not in mixedCase
Parameter ERC20Token.xfer(address,address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#191) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/20051.sol#209) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#209) is not in mixedCase
Contract depositofferTokenAbstract (dataset/contracts/transaction_order/20051.sol#251-338) is not in CapWords
Variable depositofferTokenAbstract.__abortFuse (dataset/contracts/transaction_order/20051.sol#272) is not in mixedCase
Contract depositofferToken (dataset/contracts/transaction_order/20051.sol#347-688) is not in CapWords
Parameter depositofferToken.ethToUsd(uint256)._wei (dataset/contracts/transaction_order/20051.sol#431) is not in mixedCase
Parameter depositofferToken.usdToEth(uint256)._usd (dataset/contracts/transaction_order/20051.sol#437) is not in mixedCase
Parameter depositofferToken.ethToTokens(uint256)._wei (dataset/contracts/transaction_order/20051.sol#449) is not in mixedCase
Parameter depositofferToken.proxyPurchase(address)._addr (dataset/contracts/transaction_order/20051.sol#486) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._addr (dataset/contracts/transaction_order/20051.sol#523) is not in mixedCase
Parameter depositofferToken.addKycAddress(address,bool)._kyc (dataset/contracts/transaction_order/20051.sol#523) is not in mixedCase
Parameter depositofferToken.refund(address)._addr (dataset/contracts/transaction_order/20051.sol#558) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/20051.sol#586) is not in mixedCase
Parameter depositofferToken.transfer(address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#586) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20051.sol#601) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20051.sol#601) is not in mixedCase
Parameter depositofferToken.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#601) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/20051.sol#616) is not in mixedCase
Parameter depositofferToken.approve(address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#616) is not in mixedCase
Parameter depositofferToken.changeOwner(address)._newOwner (dataset/contracts/transaction_order/20051.sol#632) is not in mixedCase
Parameter depositofferToken.changedeposito(address)._addr (dataset/contracts/transaction_order/20051.sol#657) is not in mixedCase
Variable depositofferToken.END_DATE (dataset/contracts/transaction_order/20051.sol#366) is not in mixedCase
Contract depositoTest (dataset/contracts/transaction_order/20051.sol#699-712) is not in CapWords
Parameter depositoTest.setdot(address)._addr (dataset/contracts/transaction_order/20051.sol#703) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._from (dataset/contracts/transaction_order/20051.sol#705) is not in mixedCase
Parameter depositoTest.notify(address,uint256)._amount (dataset/contracts/transaction_order/20051.sol#705) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/20051.sol#347-688) uses literals with too many digits:
	- MAX_USD_FUND = 2000000 (dataset/contracts/transaction_order/20051.sol#52)
depositofferToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/20051.sol#347-688) uses literals with too many digits:
	- MAX_TOKENS = 4000000 (dataset/contracts/transaction_order/20051.sol#59)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Token.symbol (dataset/contracts/transaction_order/20051.sol#125) should be constant 
depositofferToken.END_DATE (dataset/contracts/transaction_order/20051.sol#366) should be constant 
depositofferTokenConfig.fundWallet (dataset/contracts/transaction_order/20051.sol#42) should be constant 
depositofferTokenConfig.name (dataset/contracts/transaction_order/20051.sol#32) should be constant 
depositofferTokenConfig.symbol (dataset/contracts/transaction_order/20051.sol#33) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/20051.sol analyzed (8 contracts with 100 detectors), 57 result(s) found
