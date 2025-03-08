'solc --version' running
'solc ./dataset/contracts/transaction_order/3927.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/3927.sol:
./dataset/contracts/transaction_order/3927.sol:301:3: Warning: Function state mutability can be restricted to pure
  function tokenFallback(address from_, uint256 value_, bytes data_) external {
  ^ (Relevant source part starts here and spans across multiple lines).

INFO:Detectors:
SafeERC20.safeTransferFrom(ERC20,address,address,uint256) (dataset/contracts/transaction_order/3927.sol#97-106) uses arbitrary from in transferFrom: require(bool)(token.transferFrom(from,to,value)) (dataset/contracts/transaction_order/3927.sol#105)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
Claimable.transferOwnership(address) (dataset/contracts/transaction_order/3927.sol#197-199) should emit an event for: 
	- pendingOwner = newOwner (dataset/contracts/transaction_order/3927.sol#198) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Claimable.transferOwnership(address).newOwner (dataset/contracts/transaction_order/3927.sol#197) lacks a zero-check on :
		- pendingOwner = newOwner (dataset/contracts/transaction_order/3927.sol#198)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.24 (dataset/contracts/transaction_order/3927.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Ownable.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/3927.sol#162) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/3927.sol#334) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/3927.sol#362) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/3927.sol#362) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/3927.sol#377) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/3927.sol#402) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/3927.sol#403) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/3927.sol#404) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/3927.sol#429) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/3927.sol#429) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/3927.sol#442) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/3927.sol#443) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/3927.sol#462) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/3927.sol#463) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/3927.sol#484) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/3927.sol#485) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/3927.sol#531) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/3927.sol#532) is not in mixedCase
Parameter WOLFEXToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/3927.sol#578) is not in mixedCase
Parameter WOLFEXToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/3927.sol#578) is not in mixedCase
Parameter WOLFEXToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/3927.sol#582) is not in mixedCase
Parameter WOLFEXToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/3927.sol#582) is not in mixedCase
Parameter WOLFEXToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/3927.sol#582) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Redundant expression "from_ (dataset/contracts/transaction_order/3927.sol#302)" inHasNoTokens (dataset/contracts/transaction_order/3927.sol#293-308)
Redundant expression "value_ (dataset/contracts/transaction_order/3927.sol#303)" inHasNoTokens (dataset/contracts/transaction_order/3927.sol#293-308)
Redundant expression "data_ (dataset/contracts/transaction_order/3927.sol#304)" inHasNoTokens (dataset/contracts/transaction_order/3927.sol#293-308)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#redundant-statements
INFO:Detectors:
WOLFEXToken.name (dataset/contracts/transaction_order/3927.sol#564) should be constant 
WOLFEXToken.symbol (dataset/contracts/transaction_order/3927.sol#563) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/3927.sol analyzed (16 contracts with 100 detectors), 33 result(s) found
