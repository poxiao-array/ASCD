'solc --version' running
'solc ./dataset/contracts/transaction_order/27621.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CommonSale.mintTokens(address,uint256) (dataset/contracts/transaction_order/27621.sol#416-419) ignores return value by token.transfer(to,tokens) (dataset/contracts/transaction_order/27621.sol#418)
RetrieveTokensFeature.retrieveTokens(address,address) (dataset/contracts/transaction_order/27621.sol#468-471) ignores return value by alienToken.transfer(to,alienToken.balanceOf(this)) (dataset/contracts/transaction_order/27621.sol#470)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
Mainsale.calculateTokens(uint256) (dataset/contracts/transaction_order/27621.sol#664-673) performs a multiplication on the result of a division:
	- tokens = _invested.mul(price).div(1000000000000000000) (dataset/contracts/transaction_order/27621.sol#667)
	- tokens = tokens.add(tokens.mul(milestone.bonus).div(percentRate)) (dataset/contracts/transaction_order/27621.sol#670)
Mainsale.finish() (dataset/contracts/transaction_order/27621.sol#675-688) performs a multiplication on the result of a division:
	- allTokens = mintedTokens.mul(percentRate).div(percentRate.sub(summaryTokensPercent)) (dataset/contracts/transaction_order/27621.sol#678)
	- foundersTokens = allTokens.mul(foundersTokensPercent).div(percentRate) (dataset/contracts/transaction_order/27621.sol#679)
Mainsale.finish() (dataset/contracts/transaction_order/27621.sol#675-688) performs a multiplication on the result of a division:
	- allTokens = mintedTokens.mul(percentRate).div(percentRate.sub(summaryTokensPercent)) (dataset/contracts/transaction_order/27621.sol#678)
	- advisorsTokens = allTokens.mul(advisorsTokensPercent).div(percentRate) (dataset/contracts/transaction_order/27621.sol#680)
Mainsale.finish() (dataset/contracts/transaction_order/27621.sol#675-688) performs a multiplication on the result of a division:
	- allTokens = mintedTokens.mul(percentRate).div(percentRate.sub(summaryTokensPercent)) (dataset/contracts/transaction_order/27621.sol#678)
	- bountyTokens = allTokens.mul(bountyTokensPercent).div(percentRate) (dataset/contracts/transaction_order/27621.sol#681)
Mainsale.finish() (dataset/contracts/transaction_order/27621.sol#675-688) performs a multiplication on the result of a division:
	- allTokens = mintedTokens.mul(percentRate).div(percentRate.sub(summaryTokensPercent)) (dataset/contracts/transaction_order/27621.sol#678)
	- lotteryTokens = allTokens.mul(lotteryTokensPercent).div(percentRate) (dataset/contracts/transaction_order/27621.sol#682)
Presale.calculateTokens(uint256) (dataset/contracts/transaction_order/27621.sol#700-709) performs a multiplication on the result of a division:
	- tokens = _invested.mul(price).div(1000000000000000000) (dataset/contracts/transaction_order/27621.sol#703)
	- tokens = tokens.add(tokens.mul(milestone.bonus).div(percentRate)) (dataset/contracts/transaction_order/27621.sol#706)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
CommonSale.mintTokens(address,uint256) (dataset/contracts/transaction_order/27621.sol#416-419) ignores return value by token.mint(this,tokens) (dataset/contracts/transaction_order/27621.sol#417)
Mainsale.finish() (dataset/contracts/transaction_order/27621.sol#675-688) ignores return value by token.finishMinting() (dataset/contracts/transaction_order/27621.sol#687)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
ClosedRound.fallback() (dataset/contracts/transaction_order/27621.sol#746-749) (function) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
CommonSale.setDirectMintAgent(address) (dataset/contracts/transaction_order/27621.sol#388-390) should emit an event for: 
	- directMintAgent = newDirectMintAgent (dataset/contracts/transaction_order/27621.sol#389) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CommonSale.setStart(uint256) (dataset/contracts/transaction_order/27621.sol#380-382) should emit an event for: 
	- start = newStart (dataset/contracts/transaction_order/27621.sol#381) 
CommonSale.setPrice(uint256) (dataset/contracts/transaction_order/27621.sol#396-398) should emit an event for: 
	- price = newPrice (dataset/contracts/transaction_order/27621.sol#397) 
PercentRateProvider.setPercentRate(uint256) (dataset/contracts/transaction_order/27621.sol#82-84) should emit an event for: 
	- percentRate = newPercentRate (dataset/contracts/transaction_order/27621.sol#83) 
ClosedRound.setMaxLimit(uint256) (dataset/contracts/transaction_order/27621.sol#734-736) should emit an event for: 
	- maxLimit = newMaxLimit (dataset/contracts/transaction_order/27621.sol#735) 
ClosedRound.setEnd(uint256) (dataset/contracts/transaction_order/27621.sol#738-740) should emit an event for: 
	- end = newEnd (dataset/contracts/transaction_order/27621.sol#739) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
MintableToken.setSaleAgent(address).newSaleAgnet (dataset/contracts/transaction_order/27621.sol#297) lacks a zero-check on :
		- saleAgent = newSaleAgnet (dataset/contracts/transaction_order/27621.sol#299)
CommonSale.setDirectMintAgent(address).newDirectMintAgent (dataset/contracts/transaction_order/27621.sol#388) lacks a zero-check on :
		- directMintAgent = newDirectMintAgent (dataset/contracts/transaction_order/27621.sol#389)
CommonSale.setWallet(address).newWallet (dataset/contracts/transaction_order/27621.sol#392) lacks a zero-check on :
		- wallet = newWallet (dataset/contracts/transaction_order/27621.sol#393)
Mainsale.setFoundersTokensWallet(address).newFoundersTokensWallet (dataset/contracts/transaction_order/27621.sol#648) lacks a zero-check on :
		- foundersTokensWallet = newFoundersTokensWallet (dataset/contracts/transaction_order/27621.sol#649)
Mainsale.setAdvisorsTokensWallet(address).newAdvisorsTokensWallet (dataset/contracts/transaction_order/27621.sol#652) lacks a zero-check on :
		- advisorsTokensWallet = newAdvisorsTokensWallet (dataset/contracts/transaction_order/27621.sol#653)
Mainsale.setBountyTokensWallet(address).newBountyTokensWallet (dataset/contracts/transaction_order/27621.sol#656) lacks a zero-check on :
		- bountyTokensWallet = newBountyTokensWallet (dataset/contracts/transaction_order/27621.sol#657)
Mainsale.setLotteryTokensWallet(address).newLotteryTokensWallet (dataset/contracts/transaction_order/27621.sol#660) lacks a zero-check on :
		- lotteryTokensWallet = newLotteryTokensWallet (dataset/contracts/transaction_order/27621.sol#661)
NextSaleAgentFeature.setNextSaleAgent(address).newNextSaleAgent (dataset/contracts/transaction_order/27621.sol#53) lacks a zero-check on :
		- nextSaleAgent = newNextSaleAgent (dataset/contracts/transaction_order/27621.sol#54)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
DevWallet.withdraw() (dataset/contracts/transaction_order/27621.sol#67-70) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= date) (dataset/contracts/transaction_order/27621.sol#68)
StagedCrowdsale.currentMilestone(uint256) (dataset/contracts/transaction_order/27621.sol#599-608) uses timestamp for comparisons
	Dangerous comparisons:
	- now >= previousDate && now < previousDate + milestones[i].period * 86400 (dataset/contracts/transaction_order/27621.sol#602)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
StagedCrowdsale.clearMilestones() (dataset/contracts/transaction_order/27621.sol#586-593) has costly operations inside a loop:
	- delete milestones[i] (dataset/contracts/transaction_order/27621.sol#589)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
ClosedRound.fallback() (dataset/contracts/transaction_order/27621.sol#746-749) is never used and should be removed
CommonSale.devWithdraw() (dataset/contracts/transaction_order/27621.sol#434-447) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/27621.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/27621.sol#153) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/27621.sol#153) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/27621.sol#169) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/27621.sol#208) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/27621.sol#208) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/27621.sol#208) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/27621.sol#230) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/27621.sol#230) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/27621.sol#242) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/27621.sol#242) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/27621.sol#256) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/27621.sol#256) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/27621.sol#272) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/27621.sol#272) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/27621.sol#302) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/27621.sol#302) is not in mixedCase
Parameter CommonSale.mintTokensByETHExternal(address,uint256)._invested (dataset/contracts/transaction_order/27621.sol#423) is not in mixedCase
Parameter CommonSale.mintTokensByETH(address,uint256)._invested (dataset/contracts/transaction_order/27621.sol#427) is not in mixedCase
Parameter ValueBonusFeature.getValueBonusTokens(uint256,uint256)._invested (dataset/contracts/transaction_order/27621.sol#492) is not in mixedCase
Parameter Mainsale.calculateTokens(uint256)._invested (dataset/contracts/transaction_order/27621.sol#664) is not in mixedCase
Parameter Presale.calculateTokens(uint256)._invested (dataset/contracts/transaction_order/27621.sol#700) is not in mixedCase
Parameter ClosedRound.calculateTokens(uint256)._invested (dataset/contracts/transaction_order/27621.sol#729) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
DevWallet.slitherConstructorVariables() (dataset/contracts/transaction_order/27621.sol#61-74) uses literals with too many digits:
	- limit = 4500000000000000000 (dataset/contracts/transaction_order/27621.sol#64)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Loop condition i < valueBonuses.length (dataset/contracts/transaction_order/27621.sol#502) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < milestones.length (dataset/contracts/transaction_order/27621.sol#601) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < milestones.length (dataset/contracts/transaction_order/27621.sol#588) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
DevWallet.date (dataset/contracts/transaction_order/27621.sol#63) should be constant 
DevWallet.limit (dataset/contracts/transaction_order/27621.sol#64) should be constant 
DevWallet.wallet (dataset/contracts/transaction_order/27621.sol#65) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/27621.sol analyzed (20 contracts with 100 detectors), 61 result(s) found
