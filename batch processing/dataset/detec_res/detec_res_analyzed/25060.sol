'solc --version' running
'solc ./dataset/contracts/transaction_order/25060.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Hedgely (dataset/contracts/transaction_order/25060.sol#53-595) contract sets array length with a user-controlled value:
	- syndicateMembers.push(_memberAddress) (dataset/contracts/transaction_order/25060.sol#266)
Hedgely (dataset/contracts/transaction_order/25060.sol#53-595) contract sets array length with a user-controlled value:
	- syndicateMembers.push(msg.sender) (dataset/contracts/transaction_order/25060.sol#370)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Hedgely.random(uint64) (dataset/contracts/transaction_order/25060.sol#396-399) uses a weak PRNG: "_seed % upper (dataset/contracts/transaction_order/25060.sol#398)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
Hedgely.roundIt(uint256) (dataset/contracts/transaction_order/25060.sol#172-177) performs a multiplication on the result of a division:
	- result = (amount / precision) * precision (dataset/contracts/transaction_order/25060.sol#175)
Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) performs a multiplication on the result of a division:
	- profitPerShare = SafeMath.div(currentSyndicateValue,totalOwnedShares) (dataset/contracts/transaction_order/25060.sol#183)
	- members[syndicateMembers[i]].profitShare += SafeMath.mul(members[syndicateMembers[i]].numShares,profitPerShare) (dataset/contracts/transaction_order/25060.sol#190)
Hedgely.buyIntoSyndicate() (dataset/contracts/transaction_order/25060.sol#272-285) performs a multiplication on the result of a division:
	- value = (msg.value / precision) * precision (dataset/contracts/transaction_order/25060.sol#276)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
Hedgely.buyIntoSyndicate() (dataset/contracts/transaction_order/25060.sol#272-285) should emit an event for: 
	- availableBuyInShares -= allocation (dataset/contracts/transaction_order/25060.sol#282) 
Hedgely.allocateShares(uint256,address) (dataset/contracts/transaction_order/25060.sol#298-303) should emit an event for: 
	- availableBuyInShares -= allocation (dataset/contracts/transaction_order/25060.sol#300) 
Hedgely.setShareCycleSessionSize(uint256) (dataset/contracts/transaction_order/25060.sol#305-307) should emit an event for: 
	- shareCycleSessionSize = size (dataset/contracts/transaction_order/25060.sol#306) 
Hedgely.setMaxCyclePlayersConsidered(uint256) (dataset/contracts/transaction_order/25060.sol#309-311) should emit an event for: 
	- maxCyclePlayersConsidered = numPlayersConsidered (dataset/contracts/transaction_order/25060.sol#310) 
Hedgely.setSessionDurationMinutes(uint256) (dataset/contracts/transaction_order/25060.sol#574-576) should emit an event for: 
	- sessionDuration = _m * 60 (dataset/contracts/transaction_order/25060.sol#575) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i = 0 (dataset/contracts/transaction_order/25060.sol#205)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i < numberOfCyclePlayers && i < maxCyclePlayersConsidered (dataset/contracts/transaction_order/25060.sol#205)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: arr[i] = cyclePlayers[i] (dataset/contracts/transaction_order/25060.sol#206)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i ++ (dataset/contracts/transaction_order/25060.sol#205)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i = 1 (dataset/contracts/transaction_order/25060.sol#210)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i < arr.length (dataset/contracts/transaction_order/25060.sol#210)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: key = arr[i] (dataset/contracts/transaction_order/25060.sol#211)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: j = i (dataset/contracts/transaction_order/25060.sol#213)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i ++ (dataset/contracts/transaction_order/25060.sol#210)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i = 0 (dataset/contracts/transaction_order/25060.sol#222)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i < numberOfRecipients (dataset/contracts/transaction_order/25060.sol#222)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: arr[i] != 0 (dataset/contracts/transaction_order/25060.sol#225)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: allPlayers[arr[i]].profitShare += profitPerTopPlayer (dataset/contracts/transaction_order/25060.sol#226)
Variable 'Hedgely.distributeProfit().i (dataset/contracts/transaction_order/25060.sol#187)' in Hedgely.distributeProfit() (dataset/contracts/transaction_order/25060.sol#180-241) potentially used before declaration: i ++ (dataset/contracts/transaction_order/25060.sol#222)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#pre-declaration-usage-of-local-variables
INFO:Detectors:
Hedgely.claimPlayerWinnings() (dataset/contracts/transaction_order/25060.sol#150-164) uses timestamp for comparisons
	Dangerous comparisons:
	- now > sessionEndTime && playerPortfolio[msg.sender][currentLowest] > 0 (dataset/contracts/transaction_order/25060.sol#154)
	- winnings > 0 (dataset/contracts/transaction_order/25060.sol#160)
Hedgely.playerStatus(address) (dataset/contracts/transaction_order/25060.sol#315-324) uses timestamp for comparisons
	Dangerous comparisons:
	- now > sessionEndTime (dataset/contracts/transaction_order/25060.sol#319)
Hedgely.invest(uint256) (dataset/contracts/transaction_order/25060.sol#466-497) uses timestamp for comparisons
	Dangerous comparisons:
	- now > sessionEndTime (dataset/contracts/transaction_order/25060.sol#474)
Hedgely.endSession() (dataset/contracts/transaction_order/25060.sol#519-561) uses timestamp for comparisons
	Dangerous comparisons:
	- numberWinner < 10 && playerPortfolio[players[j]][numberWinner] > 0 (dataset/contracts/transaction_order/25060.sol#531)
	- sessionWinnings > playerInvestments (dataset/contracts/transaction_order/25060.sol#548)
	- playerInvestments > sessionWinnings (dataset/contracts/transaction_order/25060.sol#557)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected _seed = uint64(keccak256()(keccak256()(block.blockhash(block.number),_seed),now)) (dataset/contracts/transaction_order/25060.sol#397):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/25060.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Struct Hedgely.somePlayer (dataset/contracts/transaction_order/25060.sol#73-78) is not in CapWords
Struct Hedgely.member (dataset/contracts/transaction_order/25060.sol#82-85) is not in CapWords
Parameter Hedgely.allocateWinnings(address,uint256)._playerAddress (dataset/contracts/transaction_order/25060.sol#167) is not in mixedCase
Parameter Hedgely.addMember(address)._memberAddress (dataset/contracts/transaction_order/25060.sol#264) is not in mixedCase
Parameter Hedgely.playerStatus(address)._playerAddress (dataset/contracts/transaction_order/25060.sol#315) is not in mixedCase
Parameter Hedgely.setSessionDurationMinutes(uint256)._m (dataset/contracts/transaction_order/25060.sol#574) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Hedgely.slitherConstructorVariables() (dataset/contracts/transaction_order/25060.sol#53-595) uses literals with too many digits:
	- buyInSharePrice = 1000000000000000 (dataset/contracts/transaction_order/25060.sol#60)
Hedgely.slitherConstructorVariables() (dataset/contracts/transaction_order/25060.sol#53-595) uses literals with too many digits:
	- currentSyndicateValue = 150000000000000000 (dataset/contracts/transaction_order/25060.sol#64)
Hedgely.slitherConstructorVariables() (dataset/contracts/transaction_order/25060.sol#53-595) uses literals with too many digits:
	- precision = 1000000000000000 (dataset/contracts/transaction_order/25060.sol#357)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Hedgely.buyInSharePrice (dataset/contracts/transaction_order/25060.sol#60) should be constant 
Hedgely.minimumBuyIn (dataset/contracts/transaction_order/25060.sol#59) should be constant 
Hedgely.minimumStake (dataset/contracts/transaction_order/25060.sol#358) should be constant 
Hedgely.playersShareAllocation (dataset/contracts/transaction_order/25060.sol#57) should be constant 
Hedgely.precision (dataset/contracts/transaction_order/25060.sol#357) should be constant 
Hedgely.totalSyndicateShares (dataset/contracts/transaction_order/25060.sol#56) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/25060.sol analyzed (3 contracts with 100 detectors), 47 result(s) found
