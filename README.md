# 📝 ToDoListManager Smart Contract

A simple Ethereum smart contract that allows users to manage a to-do list on the blockchain. Built using Solidity.

## 📦 Features

- Create new tasks
- Mark tasks as completed or incomplete
- Retrieve task details
- Emits events on task creation and status change

## 🔧 Contract Details

### ✅ Structs

```solidity
struct Task {
    uint id;
    string content;
    bool completed;
}
