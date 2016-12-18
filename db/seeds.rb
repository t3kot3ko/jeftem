p = Project.create(name: "TV_BasicTest", description: "Basic test for Trinity", identifier: "basic")
s = Section.create(name: "Section", project: p)
t1 = TestCase.create(title: "test1", step: "step", precondition: "step", postcondition: "postcondition", expected_result: "expected_result", section: s)
t2 = TestCase.create(title: "test2", step: "step", precondition: "step", postcondition: "postcondition", expected_result: "expected_result", section: s)

executor = Executor.create(name: "executor")
execution = Execution.create(executed_at: Time.now, executor: executor)

result_pass = TestResultType.create(name: "PASS", identifier: "pass", color: "green")
result_fail = TestResultType.create(name: "FAIL", identifier: "fail", color: "red")

TestResult.create(test_result_type: result_pass, execution: execution)
TestResult.create(test_result_type: result_fail, execution: execution)

