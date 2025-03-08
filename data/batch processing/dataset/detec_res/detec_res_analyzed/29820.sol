'solc --version' running
'solc ./dataset/contracts/transaction_order/29820.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/29820.sol:
./dataset/contracts/transaction_order/29820.sol:219:13: Warning: Unused local variable
            uint256 tokens;
            ^------------^

INFO:Detectors:
GPower.emergencyERC20Drain(ERC20,uint256) (dataset/contracts/transaction_order/29820.sol#283-285) ignores return value by token.transfer(owner,amount) (dataset/contracts/transaction_order/29820.sol#284)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
GPower.icoAddress (dataset/contracts/transaction_order/29820.sol#169) is never initialized. It is used in:
	- GPower.fallback() (dataset/contracts/transaction_order/29820.sol#212-246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
GPower.wallet (dataset/contracts/transaction_order/29820.sol#173) is written in both
	wallet = owner (dataset/contracts/transaction_order/29820.sol#220)
	wallet = icoAddress (dataset/contracts/transaction_order/29820.sol#222)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#write-after-write
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/29820.sol#55-59) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/29820.sol#57) 
	- owner = newOwner (dataset/contracts/transaction_order/29820.sol#57) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
GPower.fallback() (dataset/contracts/transaction_order/29820.sol#212-246) uses timestamp for comparisons
	Dangerous comparisons:
	- (icoStart + (7 * 24 * 60 * 60)) >= now (dataset/contracts/transaction_order/29820.sol#224)
	- (icoStart + (14 * 24 * 60 * 60)) >= now (dataset/contracts/transaction_order/29820.sol#227)
	- (icoStart + (21 * 24 * 60 * 60)) >= now (dataset/contracts/transaction_order/29820.sol#230)
	- (icoStart + (28 * 24 * 60 * 60)) >= now (dataset/contracts/transaction_order/29820.sol#233)
	- (icoStart + (35 * 24 * 60 * 60)) >= now (dataset/contracts/transaction_order/29820.sol#236)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
GPower.onlyWhenTransferEnabled() (dataset/contracts/transaction_order/29820.sol#192-203) compares to a boolean constant:
	-transferEnabled == false && msg.sender == owner (dataset/contracts/transaction_order/29820.sol#196)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/29820.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/29820.sol#83) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/29820.sol#83) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/29820.sol#95) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29820.sol#120) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29820.sol#120) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29820.sol#120) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/29820.sol#140) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/29820.sol#140) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/29820.sol#155) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/29820.sol#155) is not in mixedCase
Parameter GPower.transfer(address,uint256)._to (dataset/contracts/transaction_order/29820.sol#248) is not in mixedCase
Parameter GPower.transfer(address,uint256)._value (dataset/contracts/transaction_order/29820.sol#248) is not in mixedCase
Parameter GPower.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29820.sol#256) is not in mixedCase
Parameter GPower.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29820.sol#256) is not in mixedCase
Parameter GPower.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29820.sol#256) is not in mixedCase
Parameter GPower.burn(uint256)._value (dataset/contracts/transaction_order/29820.sol#266) is not in mixedCase
Parameter GPower.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/29820.sol#276) is not in mixedCase
Parameter GPower.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/29820.sol#276) is not in mixedCase
Parameter GPower.setParamsStopSale(bool)._value (dataset/contracts/transaction_order/29820.sol#293) is not in mixedCase
Parameter GPower.setParamsTransfer(bool)._value (dataset/contracts/transaction_order/29820.sol#298) is not in mixedCase
Parameter GPower.setParamsIco(bool)._value (dataset/contracts/transaction_order/29820.sol#303) is not in mixedCase
Parameter GPower.startIco(uint256)._value (dataset/contracts/transaction_order/29820.sol#309) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GPower.GPower() (dataset/contracts/transaction_order/29820.sol#181-189) uses literals with too many digits:
	- totalSupply = (500000000 * 1000000000000000000) (dataset/contracts/transaction_order/29820.sol#183)
GPower.slitherConstructorVariables() (dataset/contracts/transaction_order/29820.sol#161-321) uses literals with too many digits:
	- icoSaleTotalTokens = 400000000 (dataset/contracts/transaction_order/29820.sol#168)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
GPower.icoSaleTotalTokens (dataset/contracts/transaction_order/29820.sol#168) is never used in GPower (dataset/contracts/transaction_order/29820.sol#161-321)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
GPower.icoAddress (dataset/contracts/transaction_order/29820.sol#169) should be constant 
GPower.icoSaleTotalTokens (dataset/contracts/transaction_order/29820.sol#168) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/29820.sol analyzed (7 contracts with 100 detectors), 35 result(s) found
