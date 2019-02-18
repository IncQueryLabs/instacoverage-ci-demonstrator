# InstaCoverage Continous Integration demonstrator

This project demonstrates how the API of [InstaCoverage](https://incquerylabs.com/instacoverage/) can be used to implement Jenkins-based continous integration (CI).

This GitHub repository hosts our example LabVIEW project and the following link points to our demo Jenkins server: [![Build Status](https://build.incquerylabs.com/jenkins/buildStatus/icon?job=instacoverage-ci-demonstrator/master)](https://build.incquerylabs.com/jenkins/job/instacoverage-ci-demonstrator/job/master/)

We made the following commits to the repository to demonstrate a typical CI workflow: 
1. In the first step (after the initial commit) we created the demo project which is a simple calculator project without unit tests.

2. In the second step we added a unit test for the calculator VI but code coverage being under 100% makes the test fail.

3. In the third step we fixed the test coverage (made it 100%) but the new test case discovered a bug in the implementation (divide by zero).

4. In the fourth step we fixed the implementation error, which means that all tests are PASSED. As a result, the build displays a healthy (green) state. 
