'solc --version' running
'solc ./dataset/contracts/transaction_order/25089.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Randao.returnReward(uint256,Randao.Campaign,Randao.Participant) (dataset/contracts/transaction_order/25089.sol#227-238) sends eth to arbitrary user
	Dangerous calls:
	- ! msg.sender.send(_share + c.deposit) (dataset/contracts/transaction_order/25089.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Version constraint 0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- 0.4.19 (dataset/contracts/transaction_order/25089.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Randao.newCampaign(uint32,uint96,uint16,uint16)._bnum (dataset/contracts/transaction_order/25089.sol#70) is not in mixedCase
Parameter Randao.newCampaign(uint32,uint96,uint16,uint16)._deposit (dataset/contracts/transaction_order/25089.sol#71) is not in mixedCase
Parameter Randao.newCampaign(uint32,uint96,uint16,uint16)._commitBalkline (dataset/contracts/transaction_order/25089.sol#72) is not in mixedCase
Parameter Randao.newCampaign(uint32,uint96,uint16,uint16)._commitDeadline (dataset/contracts/transaction_order/25089.sol#73) is not in mixedCase
Parameter Randao.follow(uint256)._campaignID (dataset/contracts/transaction_order/25089.sol#91) is not in mixedCase
Parameter Randao.followCampaign(uint256,Randao.Campaign,Randao.Consumer)._campaignID (dataset/contracts/transaction_order/25089.sol#104) is not in mixedCase
Parameter Randao.commit(uint256,bytes32)._campaignID (dataset/contracts/transaction_order/25089.sol#117) is not in mixedCase
Parameter Randao.commit(uint256,bytes32)._hs (dataset/contracts/transaction_order/25089.sol#117) is not in mixedCase
Parameter Randao.commitmentCampaign(uint256,bytes32,Randao.Campaign)._campaignID (dataset/contracts/transaction_order/25089.sol#131) is not in mixedCase
Parameter Randao.commitmentCampaign(uint256,bytes32,Randao.Campaign)._hs (dataset/contracts/transaction_order/25089.sol#132) is not in mixedCase
Parameter Randao.reveal(uint256,uint256)._campaignID (dataset/contracts/transaction_order/25089.sol#144) is not in mixedCase
Parameter Randao.reveal(uint256,uint256)._s (dataset/contracts/transaction_order/25089.sol#144) is not in mixedCase
Parameter Randao.revealCampaign(uint256,uint256,Randao.Campaign,Randao.Participant)._campaignID (dataset/contracts/transaction_order/25089.sol#162) is not in mixedCase
Parameter Randao.revealCampaign(uint256,uint256,Randao.Campaign,Randao.Participant)._s (dataset/contracts/transaction_order/25089.sol#163) is not in mixedCase
Parameter Randao.getRandom(uint256)._campaignID (dataset/contracts/transaction_order/25089.sol#178) is not in mixedCase
Parameter Randao.getMyBounty(uint256)._campaignID (dataset/contracts/transaction_order/25089.sol#195) is not in mixedCase
Parameter Randao.returnReward(uint256,Randao.Campaign,Randao.Participant)._share (dataset/contracts/transaction_order/25089.sol#228) is not in mixedCase
Parameter Randao.refundBounty(uint256)._campaignID (dataset/contracts/transaction_order/25089.sol#245) is not in mixedCase
Parameter Randao.getDoubleKeccak256(uint256)._s (dataset/contracts/transaction_order/25089.sol#271) is not in mixedCase
Parameter Randao.getKeccak256(uint256)._s (dataset/contracts/transaction_order/25089.sol#275) is not in mixedCase
Parameter Randao.getBytes32(uint256)._s (dataset/contracts/transaction_order/25089.sol#279) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/25089.sol analyzed (1 contracts with 100 detectors), 24 result(s) found
