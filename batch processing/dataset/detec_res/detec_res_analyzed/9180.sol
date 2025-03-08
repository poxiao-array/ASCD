'solc --version' running
'solc ./dataset/contracts/transaction_order/9180.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/9180.sol:
./dataset/contracts/transaction_order/9180.sol:20:28: Warning: Functions in interfaces should be declared external.
interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
                           ^-----------------------------------------------------------------------------------------------^

INFO:Detectors:
ERC20 (dataset/contracts/transaction_order/9180.sol#22-161) has incorrect ERC20 function interface:ERC20.transfer(address,uint256) (dataset/contracts/transaction_order/9180.sol#95-97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/9180.sol#15-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/9180.sol#16) 
	- owner = newOwner (dataset/contracts/transaction_order/9180.sol#16) 
ERC20.setICO_Contract(address) (dataset/contracts/transaction_order/9180.sol#158-160) should emit an event for: 
	- ICO_Contract = _ICO_Contract (dataset/contracts/transaction_order/9180.sol#159) 
owned.transferOwnership(address) (dataset/contracts/transaction_order/9180.sol#15-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/9180.sol#16) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/9180.sol#15) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/9180.sol#16)
ERC20.setICO_Contract(address)._ICO_Contract (dataset/contracts/transaction_order/9180.sol#158) lacks a zero-check on :
		- ICO_Contract = _ICO_Contract (dataset/contracts/transaction_order/9180.sol#159)
ERC20_ICO.constructor(address,address)._beneficiary (dataset/contracts/transaction_order/9180.sol#210) lacks a zero-check on :
		- beneficiary = _beneficiary (dataset/contracts/transaction_order/9180.sol#212)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
ERC20_ICO.investInternal(address) (dataset/contracts/transaction_order/9180.sol#215-240) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(startsAt <= now && endsAt > now) (dataset/contracts/transaction_order/9180.sol#217)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
ERC20.totalSupply (dataset/contracts/transaction_order/9180.sol#27) is set pre-construction with a non-constant function or state variable:
	- 200000000 * 10 ** uint256(decimals)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/9180.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/9180.sol#3-18) is not in CapWords
Contract tokenRecipient (dataset/contracts/transaction_order/9180.sol#20) is not in CapWords
Parameter ERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/9180.sol#95) is not in mixedCase
Parameter ERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/9180.sol#95) is not in mixedCase
Parameter ERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/9180.sol#108) is not in mixedCase
Parameter ERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/9180.sol#108) is not in mixedCase
Parameter ERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/9180.sol#108) is not in mixedCase
Parameter ERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/9180.sol#123) is not in mixedCase
Parameter ERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/9180.sol#123) is not in mixedCase
Parameter ERC20.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/9180.sol#138) is not in mixedCase
Parameter ERC20.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/9180.sol#138) is not in mixedCase
Parameter ERC20.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/9180.sol#138) is not in mixedCase
Function ERC20.setICO_Contract(address) (dataset/contracts/transaction_order/9180.sol#158-160) is not in mixedCase
Parameter ERC20.setICO_Contract(address)._ICO_Contract (dataset/contracts/transaction_order/9180.sol#158) is not in mixedCase
Variable ERC20.ICO_Contract (dataset/contracts/transaction_order/9180.sol#32) is not in mixedCase
Contract ERC20_ICO (dataset/contracts/transaction_order/9180.sol#169-270) is not in CapWords
Variable ERC20_ICO.TokenPerETH (dataset/contracts/transaction_order/9180.sol#184) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ERC20.slitherConstructorVariables() (dataset/contracts/transaction_order/9180.sol#22-161) uses literals with too many digits:
	- totalSupply = 200000000 * 10 ** uint256(decimals) (dataset/contracts/transaction_order/9180.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20.decimals (dataset/contracts/transaction_order/9180.sol#26) should be constant 
ERC20.name (dataset/contracts/transaction_order/9180.sol#24) should be constant 
ERC20.symbol (dataset/contracts/transaction_order/9180.sol#25) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/9180.sol#20)
approveAndCall(address,uint256,bytes) should be declared external:
	- ERC20.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/9180.sol#138-146)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/9180.sol analyzed (5 contracts with 100 detectors), 34 result(s) found
