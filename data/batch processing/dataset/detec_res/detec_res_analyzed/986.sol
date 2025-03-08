'solc --version' running
'solc ./dataset/contracts/transaction_order/986.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Fomo5d (dataset/contracts/transaction_order/986.sol#5-281) has incorrect ERC20 function interface:Fomo5d.transfer(address,uint256) (dataset/contracts/transaction_order/986.sol#97-102)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Fomo5d.setRate(uint256) (dataset/contracts/transaction_order/986.sol#256-260) contains a tautology or contradiction:
	- thisRate >= 0 (dataset/contracts/transaction_order/986.sol#257)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
Fomo5d.transferOwner(address) (dataset/contracts/transaction_order/986.sol#43-45) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/986.sol#44) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Fomo5d.setRate(uint256) (dataset/contracts/transaction_order/986.sol#256-260) should emit an event for: 
	- rate = thisRate (dataset/contracts/transaction_order/986.sol#258) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Fomo5d.transferOwner(address).newOwner (dataset/contracts/transaction_order/986.sol#43) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/986.sol#44)
Fomo5d.withdraw(address).target (dataset/contracts/transaction_order/986.sol#271) lacks a zero-check on :
		- target.transfer(this.balance) (dataset/contracts/transaction_order/986.sol#272)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.18 (dataset/contracts/transaction_order/986.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/986.sol#3) is not in CapWords
Parameter Fomo5d.transfer(address,uint256)._to (dataset/contracts/transaction_order/986.sol#97) is not in mixedCase
Parameter Fomo5d.transfer(address,uint256)._value (dataset/contracts/transaction_order/986.sol#97) is not in mixedCase
Parameter Fomo5d.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/986.sol#113) is not in mixedCase
Parameter Fomo5d.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/986.sol#113) is not in mixedCase
Parameter Fomo5d.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/986.sol#113) is not in mixedCase
Parameter Fomo5d.approve(address,uint256)._spender (dataset/contracts/transaction_order/986.sol#132) is not in mixedCase
Parameter Fomo5d.approve(address,uint256)._value (dataset/contracts/transaction_order/986.sol#132) is not in mixedCase
Parameter Fomo5d.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/986.sol#151) is not in mixedCase
Parameter Fomo5d.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/986.sol#151) is not in mixedCase
Parameter Fomo5d.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/986.sol#151) is not in mixedCase
Parameter Fomo5d.burn(uint256)._value (dataset/contracts/transaction_order/986.sol#171) is not in mixedCase
Parameter Fomo5d.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/986.sol#191) is not in mixedCase
Parameter Fomo5d.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/986.sol#191) is not in mixedCase
Parameter Fomo5d.transferFund(address,uint256)._value (dataset/contracts/transaction_order/986.sol#227) is not in mixedCase
Parameter Fomo5d.setFundOnContract(bool)._fundOnContract (dataset/contracts/transaction_order/986.sol#243) is not in mixedCase
Parameter Fomo5d.setContractStart(bool)._contractStart (dataset/contracts/transaction_order/986.sol#247) is not in mixedCase
Parameter Fomo5d.freezeAccount(address,bool)._bool (dataset/contracts/transaction_order/986.sol#251) is not in mixedCase
Parameter Fomo5d.setExchangeStart(bool)._exchangeStart (dataset/contracts/transaction_order/986.sol#277) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Fomo5d.Fomo5d() (dataset/contracts/transaction_order/986.sol#49-60) uses literals with too many digits:
	- totalSupply = 1000000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/986.sol#51)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/986.sol#3)
approveAndCall(address,uint256,bytes) should be declared external:
	- Fomo5d.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/986.sol#151-162)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/986.sol analyzed (2 contracts with 100 detectors), 30 result(s) found
