'solc --version' running
'solc ./dataset/contracts/transaction_order/26033.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EthereuMMM.fallback() (dataset/contracts/transaction_order/26033.sol#44-80) performs a multiplication on the result of a division:
	- rewardToInvestors = (msg.value * 3) / 20 (dataset/contracts/transaction_order/26033.sol#72)
	- investorWallet[investorsIndex[i]] += (rewardToInvestors * investments[investorsIndex[i]].amount) / allInvestments (dataset/contracts/transaction_order/26033.sol#76)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
EthereuMMM.fallback() (dataset/contracts/transaction_order/26033.sol#44-80) should emit an event for: 
	- allInvestments += baseBalance (dataset/contracts/transaction_order/26033.sol#55) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Variable 'EthereuMMM.fallback().referer (dataset/contracts/transaction_order/26033.sol#60)' in EthereuMMM.fallback() (dataset/contracts/transaction_order/26033.sol#44-80) potentially used before declaration: investorWallet[referer] += msg.value / 20 (dataset/contracts/transaction_order/26033.sol#68)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#pre-declaration-usage-of-local-variables
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
	- ^0.4.18 (dataset/contracts/transaction_order/26033.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable EthereuMMM.Referrals (dataset/contracts/transaction_order/26033.sol#14) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/26033.sol analyzed (1 contracts with 100 detectors), 6 result(s) found
