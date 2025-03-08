'solc --version' running
'solc ./dataset/contracts/transaction_order/28883.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/28883.sol:
./dataset/contracts/transaction_order/28883.sol:148:4: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
			creator.send(_creatorFee);
			^-----------------------^
./dataset/contracts/transaction_order/28883.sol:151:4: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
			seller.send(this.balance);
			^-----------------------^
./dataset/contracts/transaction_order/28883.sol:247:5: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
				buyers[_i].ethAddress.send(buyers[_i].amountPaid);
				^-----------------------------------------------^

INFO:Detectors:
Dextera.getRand(uint256) (dataset/contracts/transaction_order/28883.sol#226-228) uses a weak PRNG: "(uint256(keccak256()(block.difficulty,block.coinbase,now,block.blockhash(block.number - 1))) % _max) (dataset/contracts/transaction_order/28883.sol#227)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
Dextera.fallback() (dataset/contracts/transaction_order/28883.sol#103-157) ignores return value by creator.send(_creatorFee) (dataset/contracts/transaction_order/28883.sol#148)
Dextera.fallback() (dataset/contracts/transaction_order/28883.sol#103-157) ignores return value by seller.send(this.balance) (dataset/contracts/transaction_order/28883.sol#151)
Dextera.returnToBuyers() (dataset/contracts/transaction_order/28883.sol#240-252) ignores return value by buyers[_i].ethAddress.send(buyers[_i].amountPaid) (dataset/contracts/transaction_order/28883.sol#247)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Dextera.fallback() (dataset/contracts/transaction_order/28883.sol#103-157) should emit an event for: 
	- totalTickets = totalTickets + _ticketsBought (dataset/contracts/transaction_order/28883.sol#119) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Dextera.Dextera(address,uint256,uint256,uint256,uint256)._seller (dataset/contracts/transaction_order/28883.sol#65) lacks a zero-check on :
		- seller = _seller (dataset/contracts/transaction_order/28883.sol#67)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Dextera.saleFinalize() (dataset/contracts/transaction_order/28883.sol#164-173) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= saleEndTime) (dataset/contracts/transaction_order/28883.sol#166)
Dextera.revertFunds() (dataset/contracts/transaction_order/28883.sol#195-204) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= successfulTime + 30 * 86400) (dataset/contracts/transaction_order/28883.sol#197)
Dextera.getWinnerAccount() (dataset/contracts/transaction_order/28883.sol#231-237) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(winnerTicket > 0) (dataset/contracts/transaction_order/28883.sol#233)
Dextera.getWinnerKey() (dataset/contracts/transaction_order/28883.sol#255-289) uses timestamp for comparisons
	Dangerous comparisons:
	- buyers[_i].atTicket >= winnerTicket (dataset/contracts/transaction_order/28883.sol#264)
	- buyers[_j].atTicket <= winnerTicket (dataset/contracts/transaction_order/28883.sol#268)
	- buyers[_n].atTicket <= winnerTicket (dataset/contracts/transaction_order/28883.sol#280)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected (uint256(keccak256()(block.difficulty,block.coinbase,now,block.blockhash(block.number - 1))) % _max) (dataset/contracts/transaction_order/28883.sol#227):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
Deprecated standard detected _i < totalBuyers && msg.gas > 200000 (dataset/contracts/transaction_order/28883.sol#246):
	- Usage of "msg.gas" should be replaced with "gasleft()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint 0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.19 (dataset/contracts/transaction_order/28883.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Dextera.getRand(uint256)._max (dataset/contracts/transaction_order/28883.sol#226) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Dextera.returnToBuyers() (dataset/contracts/transaction_order/28883.sol#240-252):
	External calls:
	- buyers[_i].ethAddress.send(buyers[_i].amountPaid) (dataset/contracts/transaction_order/28883.sol#247)
	State variables written after the call(s):
	- returnLastBuyerIndex = _i (dataset/contracts/transaction_order/28883.sol#250)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
Dextera.returnToBuyers() (dataset/contracts/transaction_order/28883.sol#240-252) uses literals with too many digits:
	- _i < totalBuyers && msg.gas > 200000 (dataset/contracts/transaction_order/28883.sol#246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/28883.sol analyzed (1 contracts with 100 detectors), 17 result(s) found
