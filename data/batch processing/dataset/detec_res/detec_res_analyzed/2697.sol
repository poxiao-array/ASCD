'solc --version' running
'solc ./dataset/contracts/transaction_order/2697.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SafeERC20.safeTransferFrom(ERC20,address,address,uint256) (dataset/contracts/transaction_order/2697.sol#63-65) uses arbitrary from in transferFrom: assert(bool)(token.transferFrom(from,to,value)) (dataset/contracts/transaction_order/2697.sol#64)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
TPXToken.canTransfer() (dataset/contracts/transaction_order/2697.sol#309-318) compares to a boolean constant:
	-require(bool)(quarantined[msg.sender] == false) (dataset/contracts/transaction_order/2697.sol#314)
TPXToken.canTransfer() (dataset/contracts/transaction_order/2697.sol#309-318) compares to a boolean constant:
	-require(bool)(gratuity[msg.sender] == false) (dataset/contracts/transaction_order/2697.sol#315)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.24 (dataset/contracts/transaction_order/2697.sol#27)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/2697.sol#116) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/2697.sol#145) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/2697.sol#145) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/2697.sol#161) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/2697.sol#176) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/2697.sol#176) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/2697.sol#176) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/2697.sol#198) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/2697.sol#198) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/2697.sol#210) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/2697.sol#210) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/2697.sol#224) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/2697.sol#224) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/2697.sol#240) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/2697.sol#240) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/2697.sol#269) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/2697.sol#269) is not in mixedCase
Parameter TPXToken.quarantineAddress(address)._addr (dataset/contracts/transaction_order/2697.sol#333) is not in mixedCase
Parameter TPXToken.unQuarantineAddress(address)._addr (dataset/contracts/transaction_order/2697.sol#338) is not in mixedCase
Parameter TPXToken.lockAddress(address)._addr (dataset/contracts/transaction_order/2697.sol#343) is not in mixedCase
Parameter TPXToken.unlockAddress(address)._addr (dataset/contracts/transaction_order/2697.sol#348) is not in mixedCase
Parameter TPXToken.confiscate(address)._offender (dataset/contracts/transaction_order/2697.sol#359) is not in mixedCase
Parameter TPXToken.mint(address,uint256)._to (dataset/contracts/transaction_order/2697.sol#375) is not in mixedCase
Parameter TPXToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/2697.sol#375) is not in mixedCase
Parameter TPXToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/2697.sol#385) is not in mixedCase
Parameter TPXToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/2697.sol#385) is not in mixedCase
Parameter TPXToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/2697.sol#395) is not in mixedCase
Parameter TPXToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/2697.sol#395) is not in mixedCase
Parameter TPXToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/2697.sol#395) is not in mixedCase
Parameter TPXToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/2697.sol#409) is not in mixedCase
Parameter TPXToken.approve(address,uint256)._value (dataset/contracts/transaction_order/2697.sol#409) is not in mixedCase
Parameter TPXToken.transferBountyTokens(address[],uint256[])._toRecipients (dataset/contracts/transaction_order/2697.sol#419) is not in mixedCase
Parameter TPXToken.transferBountyTokens(address[],uint256[])._toValues (dataset/contracts/transaction_order/2697.sol#419) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TPXToken.slitherConstructorVariables() (dataset/contracts/transaction_order/2697.sol#288-427) uses literals with too many digits:
	- maxSupply = 200000000000000000000000000 (dataset/contracts/transaction_order/2697.sol#293)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TPXToken.decimals (dataset/contracts/transaction_order/2697.sol#292) should be constant 
TPXToken.maxSupply (dataset/contracts/transaction_order/2697.sol#293) should be constant 
TPXToken.name (dataset/contracts/transaction_order/2697.sol#290) should be constant 
TPXToken.symbol (dataset/contracts/transaction_order/2697.sol#291) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
transferBountyTokens(address[],uint256[]) should be declared external:
	- TPXToken.transferBountyTokens(address[],uint256[]) (dataset/contracts/transaction_order/2697.sol#419-425)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/2697.sol analyzed (10 contracts with 100 detectors), 44 result(s) found
