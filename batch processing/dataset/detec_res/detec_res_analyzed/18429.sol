'solc --version' running
'solc ./dataset/contracts/transaction_order/18429.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/18429.sol:
./dataset/contracts/transaction_order/18429.sol:90:21: Warning: Return value of low-level calls not used.
                    participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)();
                    ^----------------------------------------------------------------------------^

INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) sends eth to arbitrary user
	Dangerous calls:
	- flmContract.buy.value(investment)(msg.sender) (dataset/contracts/transaction_order/18429.sol#83)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
BoomerangLiquidity (dataset/contracts/transaction_order/18429.sol#45-124) contract sets array length with a user-controlled value:
	- participants.push(Participant(msg.sender,(msg.value * multiplier) / 100)) (dataset/contracts/transaction_order/18429.sol#75)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Reentrancy in BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97):
	External calls:
	- flmContract.buy.value(investment)(msg.sender) (dataset/contracts/transaction_order/18429.sol#83)
	- participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
	External calls sending eth:
	- flmContract.buy.value(investment)(msg.sender) (dataset/contracts/transaction_order/18429.sol#83)
	- ! participants[payoutOrder].etherAddress.send(payoutToSend) (dataset/contracts/transaction_order/18429.sol#89)
	- participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
	State variables written after the call(s):
	- participants[payoutOrder].payout -= payoutToSend (dataset/contracts/transaction_order/18429.sol#87)
	BoomerangLiquidity.participants (dataset/contracts/transaction_order/18429.sol#67) can be used in cross function reentrancies:
	- BoomerangLiquidity.deposit() (dataset/contracts/transaction_order/18429.sol#74-76)
	- BoomerangLiquidity.participants (dataset/contracts/transaction_order/18429.sol#67)
	- BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97)
	- payoutOrder += 1 (dataset/contracts/transaction_order/18429.sol#94)
	BoomerangLiquidity.payoutOrder (dataset/contracts/transaction_order/18429.sol#53) can be used in cross function reentrancies:
	- BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97)
	- BoomerangLiquidity.payoutOrder (dataset/contracts/transaction_order/18429.sol#53)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) ignores return value by participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) ignores return value by flmContract.buy.value(investment)(msg.sender) (dataset/contracts/transaction_order/18429.sol#83)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Owned.changeOwner(address)._newOwner (dataset/contracts/transaction_order/18429.sol#34) lacks a zero-check on :
		- ownerCandidate = _newOwner (dataset/contracts/transaction_order/18429.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) has external calls inside a loop: ! participants[payoutOrder].etherAddress.send(payoutToSend) (dataset/contracts/transaction_order/18429.sol#89)
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) has external calls inside a loop: participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) tries to limit the gas of an external call that controls implicit decoding
	participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) has costly operations inside a loop:
	- payoutOrder += 1 (dataset/contracts/transaction_order/18429.sol#94)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- 0.4.21 (dataset/contracts/transaction_order/18429.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97):
	- participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Owned.changeOwner(address)._newOwner (dataset/contracts/transaction_order/18429.sol#34) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97):
	External calls:
	- ! participants[payoutOrder].etherAddress.send(payoutToSend) (dataset/contracts/transaction_order/18429.sol#89)
	External calls sending eth:
	- flmContract.buy.value(investment)(msg.sender) (dataset/contracts/transaction_order/18429.sol#83)
	- ! participants[payoutOrder].etherAddress.send(payoutToSend) (dataset/contracts/transaction_order/18429.sol#89)
	- participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
	State variables written after the call(s):
	- participants[payoutOrder].payout -= payoutToSend (dataset/contracts/transaction_order/18429.sol#87)
	- payoutOrder += 1 (dataset/contracts/transaction_order/18429.sol#94)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
BoomerangLiquidity.payout() (dataset/contracts/transaction_order/18429.sol#78-97) uses literals with too many digits:
	- participants[payoutOrder].etherAddress.call.value(payoutToSend).gas(1000000)() (dataset/contracts/transaction_order/18429.sol#90)
BoomerangLiquidity.withdraw() (dataset/contracts/transaction_order/18429.sol#106-108) uses literals with too many digits:
	- flmContract.withdraw.gas(1000000)() (dataset/contracts/transaction_order/18429.sol#107)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/18429.sol analyzed (4 contracts with 100 detectors), 17 result(s) found
