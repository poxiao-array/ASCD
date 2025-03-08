'solc --version' running
'solc ./dataset/contracts/transaction_order/22514.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/22514.sol:
./dataset/contracts/transaction_order/22514.sol:393:5: Warning: No visibility specified. Defaulting to "public".
    function MintableMasterToken() {
    ^
Spanning multiple lines.

INFO:Detectors:
PreBOUToken.symbol (dataset/contracts/transaction_order/22514.sol#496) shadows:
	- BTSPToken.symbol (dataset/contracts/transaction_order/22514.sol#460)
PreBOUToken.name (dataset/contracts/transaction_order/22514.sol#497) shadows:
	- BTSPToken.name (dataset/contracts/transaction_order/22514.sol#461)
PreBOUToken.decimals (dataset/contracts/transaction_order/22514.sol#498) shadows:
	- BTSPToken.decimals (dataset/contracts/transaction_order/22514.sol#462)
PreBOUToken.version (dataset/contracts/transaction_order/22514.sol#499) shadows:
	- BTSPToken.version (dataset/contracts/transaction_order/22514.sol#463)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Ownable.owner (dataset/contracts/transaction_order/22514.sol#10) is written in both
	owner = msg.sender (dataset/contracts/transaction_order/22514.sol#411)
	owner = oldOwner (dataset/contracts/transaction_order/22514.sol#415)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#write-after-write
INFO:Detectors:
MintableMasterToken.mint(address,uint256) (dataset/contracts/transaction_order/22514.sol#409-418) should emit an event for: 
	- owner = msg.sender (dataset/contracts/transaction_order/22514.sol#411) 
	- owner = msg.sender (dataset/contracts/transaction_order/22514.sol#411) 
	- owner = oldOwner (dataset/contracts/transaction_order/22514.sol#415) 
	- owner = oldOwner (dataset/contracts/transaction_order/22514.sol#415) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MintableMasterToken.mint(address,uint256) (dataset/contracts/transaction_order/22514.sol#409-418) has costly operations inside a loop:
	- owner = msg.sender (dataset/contracts/transaction_order/22514.sol#411)
MintableToken.mint(address,uint256) (dataset/contracts/transaction_order/22514.sol#288-294) has costly operations inside a loop:
	- totalSupply_ = totalSupply_.add(_amount) (dataset/contracts/transaction_order/22514.sol#289)
MintableMasterToken.mint(address,uint256) (dataset/contracts/transaction_order/22514.sol#409-418) has costly operations inside a loop:
	- owner = oldOwner (dataset/contracts/transaction_order/22514.sol#415)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- ^0.4.18 (dataset/contracts/transaction_order/22514.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/22514.sol#130) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/22514.sol#130) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/22514.sol#146) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/22514.sol#185) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/22514.sol#185) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/22514.sol#185) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#207) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/22514.sol#207) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/22514.sol#219) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/22514.sol#219) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#233) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/22514.sol#233) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#249) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/22514.sol#249) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/22514.sol#288) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/22514.sol#288) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/22514.sol#371) is not in mixedCase
Parameter MintableMasterToken.mint(address,uint256)._to (dataset/contracts/transaction_order/22514.sol#409) is not in mixedCase
Parameter MintableMasterToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/22514.sol#409) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/22514.sol#430) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/22514.sol#430) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/22514.sol#434) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/22514.sol#434) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/22514.sol#434) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#438) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._value (dataset/contracts/transaction_order/22514.sol#438) is not in mixedCase
Parameter PausableToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#442) is not in mixedCase
Parameter PausableToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/22514.sol#442) is not in mixedCase
Parameter PausableToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/22514.sol#446) is not in mixedCase
Parameter PausableToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/22514.sol#446) is not in mixedCase
Parameter PreBOUToken.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/22514.sol#508) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
mintToAddresses(address[],uint256) should be declared external:
	- BTSPToken.mintToAddresses(address[],uint256) (dataset/contracts/transaction_order/22514.sol#465-469)
mintToAddressesAndAmounts(address[],uint256[]) should be declared external:
	- BTSPToken.mintToAddressesAndAmounts(address[],uint256[]) (dataset/contracts/transaction_order/22514.sol#471-476)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/22514.sol analyzed (13 contracts with 100 detectors), 44 result(s) found
