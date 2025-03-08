'solc --version' running
'solc ./dataset/contracts/transaction_order/19021.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/19021.sol:
./dataset/contracts/transaction_order/19021.sol:386:9: Warning: Uninitialized storage pointer.
        InvestorProfitData storage current_profit;
        ^---------------------------------------^

INFO:Detectors:
AMBTICO.claimDividend() (dataset/contracts/transaction_order/19021.sol#381-398) performs a multiplication on the result of a division:
	- investorProfitWei = current_profit.end_balance.div(ONE_TOKEN).mul(price_per_token) (dataset/contracts/transaction_order/19021.sol#390-392)
AMBTICO.claimDividend() (dataset/contracts/transaction_order/19021.sol#381-398) performs a multiplication on the result of a division:
	- investorProfitWei = current_profit.start_balance.div(ONE_TOKEN).mul(price_per_token) (dataset/contracts/transaction_order/19021.sol#390-392)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
AMBTICO.setBuyBackPrice(uint256) (dataset/contracts/transaction_order/19021.sol#407-410) should emit an event for: 
	- buyBackPriceWei = token_buyback_price (dataset/contracts/transaction_order/19021.sol#409) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AMBTICO.setDividendManager(address).new_dividend_manager (dataset/contracts/transaction_order/19021.sol#476) lacks a zero-check on :
		- dividendManager = new_dividend_manager (dataset/contracts/transaction_order/19021.sol#478)
AMBTICO.setDApp(address).new_dapp (dataset/contracts/transaction_order/19021.sol#481) lacks a zero-check on :
		- dApp = new_dapp (dataset/contracts/transaction_order/19021.sol#483)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
AMBTICO.activateAddress(address,bool) (dataset/contracts/transaction_order/19021.sol#353-358) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)((now - icoFinishTime) < KYC_REVIEW_PERIOD) (dataset/contracts/transaction_order/19021.sol#356)
AMBTICO.destroyContract() (dataset/contracts/transaction_order/19021.sol#445-449) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)((now - icoFinishTime) > REFUND_PERIOD) (dataset/contracts/transaction_order/19021.sol#447)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
AMBTICO.saleSectionInvest (dataset/contracts/transaction_order/19021.sol#191-194) is set pre-construction with a non-constant function or state variable:
	- (uint256(saleSectionCount[0] * saleSectionPrice[0]),saleSectionCount[1] * saleSectionPrice[1],saleSectionCount[2] * saleSectionPrice[2],saleSectionCount[3] * saleSectionPrice[3])
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint 0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- 0.4.21 (dataset/contracts/transaction_order/19021.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AMBToken.balanceOf(address)._owner (dataset/contracts/transaction_order/19021.sol#73) is not in mixedCase
Parameter AMBToken.allowance(address,address)._owner (dataset/contracts/transaction_order/19021.sol#77) is not in mixedCase
Parameter AMBToken.allowance(address,address)._spender (dataset/contracts/transaction_order/19021.sol#77) is not in mixedCase
Parameter AMBToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/19021.sol#87) is not in mixedCase
Parameter AMBToken.approve(address,uint256)._value (dataset/contracts/transaction_order/19021.sol#87) is not in mixedCase
Parameter AMBToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/19021.sol#104) is not in mixedCase
Parameter AMBToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/19021.sol#104) is not in mixedCase
Parameter AMBToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/19021.sol#110) is not in mixedCase
Parameter AMBToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/19021.sol#110) is not in mixedCase
Parameter AMBToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/19021.sol#110) is not in mixedCase
Parameter AMBTICO.setTokenPrice(uint256).new_wei_price (dataset/contracts/transaction_order/19021.sol#237) is not in mixedCase
Parameter AMBTICO.declareDividend(uint256).profit_per_token (dataset/contracts/transaction_order/19021.sol#367) is not in mixedCase
Parameter AMBTICO.confirmDividend(uint256).profit_per_token (dataset/contracts/transaction_order/19021.sol#371) is not in mixedCase
Parameter AMBTICO.setBuyBackPrice(uint256).token_buyback_price (dataset/contracts/transaction_order/19021.sol#407) is not in mixedCase
Parameter AMBTICO.transferOwnership(address).new_owner (dataset/contracts/transaction_order/19021.sol#454) is not in mixedCase
Parameter AMBTICO.setBountyManager(address).new_bounty_manager (dataset/contracts/transaction_order/19021.sol#461) is not in mixedCase
Parameter AMBTICO.setDividendManager(address).new_dividend_manager (dataset/contracts/transaction_order/19021.sol#476) is not in mixedCase
Parameter AMBTICO.setDApp(address).new_dapp (dataset/contracts/transaction_order/19021.sol#481) is not in mixedCase
Parameter AMBTICO.transferBounty(address,uint256)._to (dataset/contracts/transaction_order/19021.sol#492) is not in mixedCase
Parameter AMBTICO.transferBounty(address,uint256)._amount (dataset/contracts/transaction_order/19021.sol#492) is not in mixedCase
Parameter AMBTICO.withdrawFunds(uint256).wei_value (dataset/contracts/transaction_order/19021.sol#510) is not in mixedCase
Parameter AMBTICO.calcTokenToWei(uint256).token_amount (dataset/contracts/transaction_order/19021.sol#538) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
AMBTICO.slitherConstructorVariables() (dataset/contracts/transaction_order/19021.sol#159-542) uses literals with too many digits:
	- saleSectionPrice = (uint256(1000000000000000),1125000000000000,1187500000000000,1250000000000000) (dataset/contracts/transaction_order/19021.sol#189)
AMBTICO.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/19021.sol#159-542) uses literals with too many digits:
	- MILLION = 1000000 (dataset/contracts/transaction_order/19021.sol#161)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/19021.sol analyzed (3 contracts with 100 detectors), 34 result(s) found
