'solc --version' running
'solc ./dataset/contracts/transaction_order/27465.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EthPyramid.reinvestDividends() (dataset/contracts/transaction_order/27465.sol#81-160) performs a multiplication on the result of a division:
	- bonusCoEff = (scaleFactor - (res + numEther) * numTokens * scaleFactor / (totalSupply + numTokens) / numEther) * uint256(crr_d) / uint256(crr_d - crr_n) (dataset/contracts/transaction_order/27465.sol#125-127)
	- holderReward = fee * bonusCoEff (dataset/contracts/transaction_order/27465.sol#131)
EthPyramid.buy() (dataset/contracts/transaction_order/27465.sol#234-296) performs a multiplication on the result of a division:
	- bonusCoEff = (scaleFactor - (reserve() + numEther) * numTokens * scaleFactor / (totalSupply + numTokens) / numEther) * uint256(crr_d) / uint256(crr_d - crr_n) (dataset/contracts/transaction_order/27465.sol#260-262)
	- holderReward = fee * bonusCoEff (dataset/contracts/transaction_order/27465.sol#266)
EthPyramid.fixedLog(uint256) (dataset/contracts/transaction_order/27465.sol#394-409) performs a multiplication on the result of a division:
	- s = ((int256(a) - one) * one) / (int256(a) + one) (dataset/contracts/transaction_order/27465.sol#404)
	- z = (s * s) / one (dataset/contracts/transaction_order/27465.sol#405)
EthPyramid.fixedLog(uint256) (dataset/contracts/transaction_order/27465.sol#394-409) performs a multiplication on the result of a division:
	- s = ((int256(a) - one) * one) / (int256(a) + one) (dataset/contracts/transaction_order/27465.sol#404)
	- scale * ln2 + (s * (c1 + (z * (c3 + (z * (c5 + (z * (c7 + (z * (c9 + (z * c11 / one)) / one)) / one)) / one)) / one)) / one) (dataset/contracts/transaction_order/27465.sol#406-408)
EthPyramid.fixedExp(int256) (dataset/contracts/transaction_order/27465.sol#419-431) performs a multiplication on the result of a division:
	- z = (a * a) / one (dataset/contracts/transaction_order/27465.sol#422)
	- R = (int256(2) * one) + (z * (c2 + (z * (c4 + (z * (c6 + (z * c8 / one)) / one)) / one)) / one) (dataset/contracts/transaction_order/27465.sol#423-424)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
EthPyramid.balanceOf(address).balance (dataset/contracts/transaction_order/27465.sol#55) shadows:
	- EthPyramid.balance() (dataset/contracts/transaction_order/27465.sol#229-232) (function)
EthPyramid.withdraw().balance (dataset/contracts/transaction_order/27465.sol#63) shadows:
	- EthPyramid.balance() (dataset/contracts/transaction_order/27465.sol#229-232) (function)
EthPyramid.reinvestDividends().balance (dataset/contracts/transaction_order/27465.sol#83) shadows:
	- EthPyramid.balance() (dataset/contracts/transaction_order/27465.sol#229-232) (function)
EthPyramid.sellMyTokens().balance (dataset/contracts/transaction_order/27465.sol#166) shadows:
	- EthPyramid.balance() (dataset/contracts/transaction_order/27465.sol#229-232) (function)
EthPyramid.withdrawOld(address).balance (dataset/contracts/transaction_order/27465.sol#212) shadows:
	- EthPyramid.balance() (dataset/contracts/transaction_order/27465.sol#229-232) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
EthPyramid.EthPyramid(address)._factory (dataset/contracts/transaction_order/27465.sol#48) lacks a zero-check on :
		- factory = _factory (dataset/contracts/transaction_order/27465.sol#49)
EthPyramid.withdrawOld(address).to (dataset/contracts/transaction_order/27465.sol#210) lacks a zero-check on :
		- to.transfer(balanceMinusWithdrawalFee) (dataset/contracts/transaction_order/27465.sol#225)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
EthPyramid.mul(uint256,uint256) (dataset/contracts/transaction_order/27465.sol#436-443) is never used and should be removed
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
	- ^0.4.18 (dataset/contracts/transaction_order/27465.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter EthPyramid.balanceOf(address)._owner (dataset/contracts/transaction_order/27465.sol#55) is not in mixedCase
Parameter EthPyramid.dividends(address)._owner (dataset/contracts/transaction_order/27465.sol#203) is not in mixedCase
Constant EthPyramid.scaleFactor (dataset/contracts/transaction_order/27465.sol#10) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.crr_n (dataset/contracts/transaction_order/27465.sol#15) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.crr_d (dataset/contracts/transaction_order/27465.sol#16) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.price_coeff (dataset/contracts/transaction_order/27465.sol#20) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.one (dataset/contracts/transaction_order/27465.sol#379) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.sqrt2 (dataset/contracts/transaction_order/27465.sol#380) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.sqrtdot5 (dataset/contracts/transaction_order/27465.sol#381) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.ln2 (dataset/contracts/transaction_order/27465.sol#382) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.ln2_64dot5 (dataset/contracts/transaction_order/27465.sol#383) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c1 (dataset/contracts/transaction_order/27465.sol#384) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c3 (dataset/contracts/transaction_order/27465.sol#385) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c5 (dataset/contracts/transaction_order/27465.sol#386) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c7 (dataset/contracts/transaction_order/27465.sol#387) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c9 (dataset/contracts/transaction_order/27465.sol#388) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c11 (dataset/contracts/transaction_order/27465.sol#389) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c2 (dataset/contracts/transaction_order/27465.sol#411) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c4 (dataset/contracts/transaction_order/27465.sol#412) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c6 (dataset/contracts/transaction_order/27465.sol#413) is not in UPPER_CASE_WITH_UNDERSCORES
Constant EthPyramid.c8 (dataset/contracts/transaction_order/27465.sol#414) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
EthPyramid.reinvestDividends() (dataset/contracts/transaction_order/27465.sol#81-160) uses literals with too many digits:
	- value_ < 1000000000000 || value_ > 1000000000000000000000000 (dataset/contracts/transaction_order/27465.sol#97)
EthPyramid.fund() (dataset/contracts/transaction_order/27465.sol#179-186) uses literals with too many digits:
	- msg.value > 1000000000000 (dataset/contracts/transaction_order/27465.sol#181)
EthPyramid.buy() (dataset/contracts/transaction_order/27465.sol#234-296) uses literals with too many digits:
	- msg.value < 1000000000000 || msg.value > 1000000000000000000000000 (dataset/contracts/transaction_order/27465.sol#236)
EthPyramid.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/27465.sol#5-473) uses literals with too many digits:
	- scaleFactor = 0x10000000000000000 (dataset/contracts/transaction_order/27465.sol#10)
EthPyramid.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/27465.sol#5-473) uses literals with too many digits:
	- one = 0x10000000000000000 (dataset/contracts/transaction_order/27465.sol#379)
EthPyramid.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/27465.sol#5-473) uses literals with too many digits:
	- c8 = - 0x000001b893ad04b3a (dataset/contracts/transaction_order/27465.sol#414)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/27465.sol analyzed (2 contracts with 100 detectors), 42 result(s) found
