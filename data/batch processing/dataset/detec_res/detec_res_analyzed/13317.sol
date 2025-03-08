'solc --version' running
'solc ./dataset/contracts/transaction_order/13317.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
GEMCHAIN (dataset/contracts/transaction_order/13317.sol#5-280) has incorrect ERC20 function interface:GEMCHAIN.transfer(address,uint256) (dataset/contracts/transaction_order/13317.sol#91-96)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
GEMCHAIN.transferOwner(address) (dataset/contracts/transaction_order/13317.sol#43-45) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/13317.sol#44) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
GEMCHAIN.setRate(uint256) (dataset/contracts/transaction_order/13317.sol#253-257) should emit an event for: 
	- rate = thisRate (dataset/contracts/transaction_order/13317.sol#255) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
GEMCHAIN.transferOwner(address).newOwner (dataset/contracts/transaction_order/13317.sol#43) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/13317.sol#44)
GEMCHAIN.withdraw(address).target (dataset/contracts/transaction_order/13317.sol#268) lacks a zero-check on :
		- target.transfer(this.balance) (dataset/contracts/transaction_order/13317.sol#269)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/13317.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/13317.sol#3) is not in CapWords
Parameter GEMCHAIN.transfer(address,uint256)._to (dataset/contracts/transaction_order/13317.sol#91) is not in mixedCase
Parameter GEMCHAIN.transfer(address,uint256)._value (dataset/contracts/transaction_order/13317.sol#91) is not in mixedCase
Parameter GEMCHAIN.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/13317.sol#107) is not in mixedCase
Parameter GEMCHAIN.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/13317.sol#107) is not in mixedCase
Parameter GEMCHAIN.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/13317.sol#107) is not in mixedCase
Parameter GEMCHAIN.approve(address,uint256)._spender (dataset/contracts/transaction_order/13317.sol#126) is not in mixedCase
Parameter GEMCHAIN.approve(address,uint256)._value (dataset/contracts/transaction_order/13317.sol#126) is not in mixedCase
Parameter GEMCHAIN.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/13317.sol#145) is not in mixedCase
Parameter GEMCHAIN.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/13317.sol#145) is not in mixedCase
Parameter GEMCHAIN.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/13317.sol#145) is not in mixedCase
Parameter GEMCHAIN.burn(uint256)._value (dataset/contracts/transaction_order/13317.sol#165) is not in mixedCase
Parameter GEMCHAIN.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/13317.sol#185) is not in mixedCase
Parameter GEMCHAIN.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/13317.sol#185) is not in mixedCase
Parameter GEMCHAIN.transferFund(address,uint256)._value (dataset/contracts/transaction_order/13317.sol#224) is not in mixedCase
Parameter GEMCHAIN.setFundOnContract(bool)._fundOnContract (dataset/contracts/transaction_order/13317.sol#240) is not in mixedCase
Parameter GEMCHAIN.setContractStart(bool)._contractStart (dataset/contracts/transaction_order/13317.sol#244) is not in mixedCase
Parameter GEMCHAIN.freezeAccount(address,bool)._bool (dataset/contracts/transaction_order/13317.sol#248) is not in mixedCase
Parameter GEMCHAIN.setExchangeStart(bool)._exchangeStart (dataset/contracts/transaction_order/13317.sol#276) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GEMCHAIN.GEMCHAIN() (dataset/contracts/transaction_order/13317.sol#49-60) uses literals with too many digits:
	- totalSupply = 10000000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/13317.sol#51)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/13317.sol#3)
approveAndCall(address,uint256,bytes) should be declared external:
	- GEMCHAIN.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/13317.sol#145-156)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/13317.sol analyzed (2 contracts with 100 detectors), 29 result(s) found
