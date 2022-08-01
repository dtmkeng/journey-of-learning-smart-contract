# Day1 note

## Function
```solidity
 function setName() public {
    // write some thing
 }

  function getName() public view returns (string memory) {
    // write some thing
 }
```
- `public` คือบอกว่าใครเรียกก็ได้
- `view` คือบอกว่า function นั้นจะไม่มีการเปลี่ยนค่า

## test
asset require
```solidity
    await expect(lock.disposit(0))
    .to.be.revertedWith('Amount should more than zero');
```