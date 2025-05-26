// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoListManager {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    // Event emitted when a task is created
    event TaskCreated(uint id, string content);
    
    // Event emitted when a task is completed
    event TaskCompleted(uint id, bool completed);

    // Add a new task
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content);
    }

    // Toggle task completion
    function toggleCompleted(uint _id) public {
        Task storage task = tasks[_id];
        task.completed = !task.completed;
        emit TaskCompleted(_id, task.completed);
    }

    // Get task details
    function getTask(uint _id) public view returns (uint, string memory, bool) {
        Task memory task = tasks[_id];
        return (task.id, task.content, task.completed);
    }
}
