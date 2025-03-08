'solc --version' running
'solc ./dataset/contracts/transaction_order/18433.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EthPenis.reinvestDividends() (dataset/contracts/transaction_order/18433.sol#119-198) performs a multiplication on the result of a division:
	- bonusCoEff = (scaleFactor - (res + numEther) * numTokens * scaleFactor / (totalSupply + numTokens) / numEther) * uint256(crr_d) / uint256(crr_d - crr_n) (dataset/contracts/transaction_order/18433.sol#163-165)
	- holderReward = fee * bonusCoEff (dataset/contracts/transaction_order/18433.sol#169)
EthPenis.buy() (dataset/contracts/transaction_order/18433.sol#270-332) performs a multiplication on the result of a division:
	- bonusCoEff = (scaleFactor - (reserve() + numEther) * numTokens * scaleFactor / (totalSupply + numTokens) / numEther) * uint256(crr_d) / uint256(crr_d - crr_n) (dataset/contracts/transaction_order/18433.sol#296-298)
	- holderReward = fee * bonusCoEff (dataset/contracts/transaction_order/18433.sol#302)
EthPenis.fixedLog(uint256) (dataset/contracts/transaction_order/18433.sol#430-445) performs a multiplication on the result of a division:
	- s = ((int256(a) - one) * one) / (int256(a) + one) (dataset/contracts/transaction_order/18433.sol#440)
	- z = (s * s) / one (dataset/contracts/transaction_order/18433.sol#441)
EthPenis.fixedLog(uint256) (dataset/contracts/transaction_order/18433.sol#430-445) performs a multiplication on the result of a division:
	- s = ((int256(a) - one) * one) / (int256(a) + one) (dataset/contracts/transaction_order/18433.sol#440)
	- scale * ln2 + (s * (c1 + (z * (c3 + (z * (c5 + (z * (c7 + (z * (c9 + (z * c11 / one)) / one)) / one)) / one)) / one)) / one) (dataset/contracts/transaction_order/18433.sol#442-444)
EthPenis.fixedExp(int256) (dataset/contracts/transaction_order/18433.sol#455-467) performs a multiplication on the result of a division:
	- z = (a * a) / one (dataset/contracts/transaction_order/18433.sol#458)
	- R = (int256(2) * one) + (z * (c2 + (z * (c4 + (z * (c6 + (z * c8 / one)) / one)) / one)) / one) (dataset/contracts/transaction_order/18433.sol#459-460)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
EthPenis.balanceOf(address).balance (dataset/contracts/transaction_order/18433.sol#96) shadows:
	- EthPenis.balance() (dataset/contracts/transaction_order/18433.sol#265-268) (function)
EthPenis.withdraw().balance (dataset/contracts/transaction_order/18433.sol#104) shadows:
	- EthPenis.balance() (dataset/contracts/transaction_order/18433.sol#265-268) (function)
EthPenis.reinvestDividends().balance (dataset/contracts/transaction_order/18433.sol#121) shadows:
	- EthPenis.balance() (dataset/contracts/transaction_order/18433.sol#265-268) (function)
EthPenis.sellMyTokens().balance (dataset/contracts/transaction_order/18433.sol#204) shadows:
	- EthPenis.balance() (dataset/contracts/transaction_order/18433.sol#265-268) (function)
EthPenis.withdrawOld(address).balance (dataset/contracts/transaction_order/18433.sol#251) shadows:
	- EthPenis.balance() (dataset/contracts/transaction_order/18433.sol#265-268) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
EthPenis.withdrawOld(address).to (dataset/contracts/transaction_order/18433.sol#249) lacks a zero-check on :
		- to.transfer(balance) (dataset/contracts/transaction_order/18433.sol#261)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
EthPenis.mul(uint256,uint256) (dataset/contracts/transaction_order/18433.sol#472-479) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.18 (dataset/contracts/transaction_order/18433.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter EthPenis.balanceOf(address)._owner (dataset/contracts/transaction_order/18433.sol#96) is not in mixedCase
Parameter EthPenis.dividends(address)._owner (dataset/contracts/transaction_order/18433.sol#242) is not in mixedCase
Constant EthPenis.scaleFactor (dataset/contracts/transaction_order/18433.sol#49) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.crr_n (dataset/contracts/transaction_order/18433.sol#54) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.crr_d (dataset/contracts/transaction_order/18433.sol#55) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.price_coeff (dataset/contracts/transaction_order/18433.sol#59) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.one (dataset/contracts/transaction_order/18433.sol#415) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.sqrt2 (dataset/contracts/transaction_order/18433.sol#416) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.sqrtdot5 (dataset/contracts/transaction_order/18433.sol#417) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.ln2 (dataset/contracts/transaction_order/18433.sol#418) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.ln2_64dot5 (dataset/contracts/transaction_order/18433.sol#419) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c1 (dataset/contracts/transaction_order/18433.sol#420) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c3 (dataset/contracts/transaction_order/18433.sol#421) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c5 (dataset/contracts/transaction_order/18433.sol#422) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c7 (dataset/contracts/transaction_order/18433.sol#423) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c9 (dataset/contracts/transaction_order/18433.sol#424) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c11 (dataset/contracts/transaction_order/18433.sol#425) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c2 (dataset/contracts/transaction_order/18433.sol#447) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c4 (dataset/contracts/transaction_order/18433.sol#448) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c6 (dataset/contracts/transaction_order/18433.sol#449) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPenis.c8 (dataset/contracts/transaction_order/18433.sol#450) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
EthPenis.reinvestDividends() (dataset/contracts/transaction_order/18433.sol#119-198) uses literals with too many digits:
	- value_ < 1000000000000 || value_ > 1000000000000000000000000 (dataset/contracts/transaction_order/18433.sol#135)
EthPenis.fund() (dataset/contracts/transaction_order/18433.sol#217-225) uses literals with too many digits:
	- msg.value > 1000000000000 (dataset/contracts/transaction_order/18433.sol#219)
EthPenis.buy() (dataset/contracts/transaction_order/18433.sol#270-332) uses literals with too many digits:
	- msg.value < 1000000000000 || msg.value > 1000000000000000000000000 (dataset/contracts/transaction_order/18433.sol#272)
EthPenis.fallback() (dataset/contracts/transaction_order/18433.sol#501-515) uses literals with too many digits:
	- owner.transfer(500000000000000000) (dataset/contracts/transaction_order/18433.sol#510)
EthPenis.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/18433.sol#45-517) uses literals with too many digits:
	- scaleFactor = 0x10000000000000000 (dataset/contracts/transaction_order/18433.sol#49)
EthPenis.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/18433.sol#45-517) uses literals with too many digits:
	- one = 0x10000000000000000 (dataset/contracts/transaction_order/18433.sol#415)
EthPenis.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/18433.sol#45-517) uses literals with too many digits:
	- c8 = - 0x000001b893ad04b3a (dataset/contracts/transaction_order/18433.sol#450)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/18433.sol analyzed (1 contracts with 100 detectors), 42 result(s) found
