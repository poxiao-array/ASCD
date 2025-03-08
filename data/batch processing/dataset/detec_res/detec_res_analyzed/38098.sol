'solc --version' running
'solc ./dataset/contracts/transaction_order/38098.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SandwichShop.addToCart(uint256,string).newOrder (dataset/contracts/transaction_order/38098.sol#101) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
SandwichShop.transferFundsAdminOnly(address,uint256).addr (dataset/contracts/transaction_order/38098.sol#159) lacks a zero-check on :
		- addr.transfer(amount) (dataset/contracts/transaction_order/38098.sol#163)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/38098.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter SandwichShop.getSandwichInfo(uint256)._sandwichId (dataset/contracts/transaction_order/38098.sol#83) is not in mixedCase
Parameter SandwichShop.addToCart(uint256,string)._sandwichID (dataset/contracts/transaction_order/38098.sol#97) is not in mixedCase
Parameter SandwichShop.addToCart(uint256,string)._notes (dataset/contracts/transaction_order/38098.sol#97) is not in mixedCase
Parameter SandwichShop.getCartLength(address)._curious (dataset/contracts/transaction_order/38098.sol#116) is not in mixedCase
Parameter SandwichShop.getCartItemInfo(address,uint256)._curious (dataset/contracts/transaction_order/38098.sol#121) is not in mixedCase
Parameter SandwichShop.getCartItemInfo(address,uint256)._slot (dataset/contracts/transaction_order/38098.sol#121) is not in mixedCase
Parameter SandwichShop.getCartSubtotal(address)._curious (dataset/contracts/transaction_order/38098.sol#132) is not in mixedCase
Parameter SandwichShop.checkoutCart(string)._firstname (dataset/contracts/transaction_order/38098.sol#137) is not in mixedCase
Parameter SandwichShop.decrementQuantity(uint256)._sandnum (dataset/contracts/transaction_order/38098.sol#167) is not in mixedCase
Parameter SandwichShop.setQuantityAdminOnly(uint256,uint256)._sandnum (dataset/contracts/transaction_order/38098.sol#172) is not in mixedCase
Parameter SandwichShop.setQuantityAdminOnly(uint256,uint256)._quantity (dataset/contracts/transaction_order/38098.sol#172) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
addToCart(uint256,string) should be declared external:
	- SandwichShop.addToCart(uint256,string) (dataset/contracts/transaction_order/38098.sol#97-113)
checkoutCart(string) should be declared external:
	- SandwichShop.checkoutCart(string) (dataset/contracts/transaction_order/38098.sol#137-157)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/38098.sol analyzed (1 contracts with 100 detectors), 17 result(s) found
