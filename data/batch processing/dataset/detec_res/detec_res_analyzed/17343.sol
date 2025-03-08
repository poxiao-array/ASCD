'solc --version' running
'solc ./dataset/contracts/transaction_order/17343.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/17343.sol:
./dataset/contracts/transaction_order/17343.sol:373:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        msg.sender.send(amount);
        ^---------------------^
./dataset/contracts/transaction_order/17343.sol:383:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        msg.sender.send(withdrawAmount);
        ^-----------------------------^

INFO:Detectors:
CryptoStars.withdraw() (dataset/contracts/transaction_order/17343.sol#367-374) ignores return value by msg.sender.send(amount) (dataset/contracts/transaction_order/17343.sol#373)
CryptoStars.withdrawPartial(uint256) (dataset/contracts/transaction_order/17343.sol#376-384) ignores return value by msg.sender.send(withdrawAmount) (dataset/contracts/transaction_order/17343.sol#383)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
CryptoStars.setGivenName(uint256,string).name (dataset/contracts/transaction_order/17343.sol#132) shadows:
	- CryptoStars.name (dataset/contracts/transaction_order/17343.sol#9) (state variable)
CryptoStars.setMasterName(uint256,string).name (dataset/contracts/transaction_order/17343.sol#138) shadows:
	- CryptoStars.name (dataset/contracts/transaction_order/17343.sol#9) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
CryptoStars.reserveStarsForOwner(uint256) (dataset/contracts/transaction_order/17343.sol#116-130) has costly operations inside a loop:
	- nextStarIndexToAssign ++ (dataset/contracts/transaction_order/17343.sol#125)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#117):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#118):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#133):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#139):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#140):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#151):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#158):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#164):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#169):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#171):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#186):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#187):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#213):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#226):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#232):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#240):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#241):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#242):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#243):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#282):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#283):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#284):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#285):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#303):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#304):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#305):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#306):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#309):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#320):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#322):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#325):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#326):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#353):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#354):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#355):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#358):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#379):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17343.sol#380):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.12 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.12 (dataset/contracts/transaction_order/17343.sol#1)
solc-0.4.12 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CryptoStars.setMinMax(uint256,uint256).MaxStarIndexHolder (dataset/contracts/transaction_order/17343.sol#150) is not in mixedCase
Parameter CryptoStars.setMinMax(uint256,uint256).MinStarIndexHolder (dataset/contracts/transaction_order/17343.sol#150) is not in mixedCase
Variable CryptoStars.MaxStarIndexAvailable (dataset/contracts/transaction_order/17343.sol#15) is not in mixedCase
Variable CryptoStars.MinStarIndexAvailable (dataset/contracts/transaction_order/17343.sol#16) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CryptoStars.CryptoStars() (dataset/contracts/transaction_order/17343.sol#70-113) uses literals with too many digits:
	- initialPrice = 99000000000000000 (dataset/contracts/transaction_order/17343.sol#79)
CryptoStars.CryptoStars() (dataset/contracts/transaction_order/17343.sol#70-113) uses literals with too many digits:
	- transferPrice = 10000000000000000 (dataset/contracts/transaction_order/17343.sol#80)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
CryptoStars.standard (dataset/contracts/transaction_order/17343.sol#8) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setGivenName(uint256,string) should be declared external:
	- CryptoStars.setGivenName(uint256,string) (dataset/contracts/transaction_order/17343.sol#132-136)
setMasterName(uint256,string) should be declared external:
	- CryptoStars.setMasterName(uint256,string) (dataset/contracts/transaction_order/17343.sol#138-144)
getStar(uint256,string,string) should be declared external:
	- CryptoStars.getStar(uint256,string,string) (dataset/contracts/transaction_order/17343.sol#168-182)
buyStarInitial(uint256,string) should be declared external:
	- CryptoStars.buyStarInitial(uint256,string) (dataset/contracts/transaction_order/17343.sol#279-299)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/17343.sol analyzed (1 contracts with 100 detectors), 56 result(s) found
