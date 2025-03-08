'solc --version' running
'solc ./dataset/contracts/transaction_order/10711.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenInterface (dataset/contracts/transaction_order/10711.sol#13-21) has incorrect ERC20 function interface:TokenInterface.approve(address,uint256) (dataset/contracts/transaction_order/10711.sol#16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Reentrancy in DSAuth.setAuthority(DSAuthority) (dataset/contracts/transaction_order/10711.sol#55-61):
	External calls:
	- auth() (dataset/contracts/transaction_order/10711.sol#57)
		- authority.canCall(src,this,sig) (dataset/contracts/transaction_order/10711.sol#76)
	State variables written after the call(s):
	- authority = authority_ (dataset/contracts/transaction_order/10711.sol#59)
	DSAuth.authority (dataset/contracts/transaction_order/10711.sol#39) can be used in cross function reentrancies:
	- DSAuth.authority (dataset/contracts/transaction_order/10711.sol#39)
	- DSAuth.isAuthorized(address,bytes4) (dataset/contracts/transaction_order/10711.sol#68-78)
	- DSAuth.setAuthority(DSAuthority) (dataset/contracts/transaction_order/10711.sol#55-61)
Reentrancy in DSAuth.setOwner(address) (dataset/contracts/transaction_order/10711.sol#47-53):
	External calls:
	- auth() (dataset/contracts/transaction_order/10711.sol#49)
		- authority.canCall(src,this,sig) (dataset/contracts/transaction_order/10711.sol#76)
	State variables written after the call(s):
	- owner = owner_ (dataset/contracts/transaction_order/10711.sol#51)
	DSAuth.owner (dataset/contracts/transaction_order/10711.sol#40) can be used in cross function reentrancies:
	- DSAuth.constructor() (dataset/contracts/transaction_order/10711.sol#42-45)
	- DSAuth.isAuthorized(address,bytes4) (dataset/contracts/transaction_order/10711.sol#68-78)
	- DSAuth.owner (dataset/contracts/transaction_order/10711.sol#40)
	- DSAuth.setOwner(address) (dataset/contracts/transaction_order/10711.sol#47-53)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-1
INFO:Detectors:
DSAuth.setOwner(address).owner_ (dataset/contracts/transaction_order/10711.sol#47) lacks a zero-check on :
		- owner = owner_ (dataset/contracts/transaction_order/10711.sol#51)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in OasisMonetizedProxy.setFeeAuthority(FeeInterface) (dataset/contracts/transaction_order/10711.sol#156-158):
	External calls:
	- auth() (dataset/contracts/transaction_order/10711.sol#156)
		- authority.canCall(src,this,sig) (dataset/contracts/transaction_order/10711.sol#76)
	State variables written after the call(s):
	- fees = _fees (dataset/contracts/transaction_order/10711.sol#157)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
Reentrancy in DSAuth.setAuthority(DSAuthority) (dataset/contracts/transaction_order/10711.sol#55-61):
	External calls:
	- auth() (dataset/contracts/transaction_order/10711.sol#57)
		- authority.canCall(src,this,sig) (dataset/contracts/transaction_order/10711.sol#76)
	Event emitted after the call(s):
	- LogSetAuthority(authority) (dataset/contracts/transaction_order/10711.sol#60)
Reentrancy in DSAuth.setOwner(address) (dataset/contracts/transaction_order/10711.sol#47-53):
	External calls:
	- auth() (dataset/contracts/transaction_order/10711.sol#49)
		- authority.canCall(src,this,sig) (dataset/contracts/transaction_order/10711.sol#76)
	Event emitted after the call(s):
	- LogSetOwner(owner) (dataset/contracts/transaction_order/10711.sol#52)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
DSMath.add(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#98-100) is never used and should be removed
DSMath.imax(int256,int256) (dataset/contracts/transaction_order/10711.sol#116-118) is never used and should be removed
DSMath.imin(int256,int256) (dataset/contracts/transaction_order/10711.sol#113-115) is never used and should be removed
DSMath.max(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#110-112) is never used and should be removed
DSMath.mul(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#104-106) is never used and should be removed
DSMath.rdiv(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#132-134) is never used and should be removed
DSMath.rmul(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#126-128) is never used and should be removed
DSMath.rpow(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#136-146) is never used and should be removed
DSMath.wdiv(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#129-131) is never used and should be removed
DSMath.wmul(uint256,uint256) (dataset/contracts/transaction_order/10711.sol#123-125) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.24 (dataset/contracts/transaction_order/10711.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Mortal.withdrawTo(address) (dataset/contracts/transaction_order/10711.sol#86-89):
	- require(bool)(_to.call.value(address(this).balance)()) (dataset/contracts/transaction_order/10711.sol#88)
Low level call in OasisMonetizedProxy.unwrapAndSend(TokenInterface,address,uint256) (dataset/contracts/transaction_order/10711.sol#160-164):
	- require(bool)(_to.call.value(wethAmt)()) (dataset/contracts/transaction_order/10711.sol#162)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Mortal.withdrawTo(address)._to (dataset/contracts/transaction_order/10711.sol#86) is not in mixedCase
Parameter Mortal.withdrawTokenTo(TokenInterface,address)._to (dataset/contracts/transaction_order/10711.sol#91) is not in mixedCase
Parameter OasisMonetizedProxy.setFeeAuthority(FeeInterface)._fees (dataset/contracts/transaction_order/10711.sol#156) is not in mixedCase
Parameter OasisMonetizedProxy.unwrapAndSend(TokenInterface,address,uint256)._to (dataset/contracts/transaction_order/10711.sol#160) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/10711.sol analyzed (9 contracts with 100 detectors), 25 result(s) found
