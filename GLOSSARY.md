# Course Platform

An online course marketplace where Instructors publish Courses and Students buy them, alone or through a Team.

## People

**Student**:
A person who buys or is given access to Courses. Matches the `student` user role.
_Avoid_: Learner, customer, buyer

**Instructor**:
A person who authors and publishes Courses.
_Avoid_: Teacher, author

## Buying

**Purchase**:
A payment by a Student, or by a Team, for one Course.
_Avoid_: Order, transaction

**Enrollment**:
A Student's access to a Course, with their progress through it.
_Avoid_: Subscription, registration

**Team Seat**:
One place on a Course bought through a Team, handed to a Student as a code. A Seat is Claimed when a Student takes it.
_Avoid_: Coupon, licence, redeem

## Refunds

**Refund**:
The return of a Purchase's money to the Student. Starts as a Refund Request and ends Approved or Declined.
_Avoid_: Cancellation, Reversal, Chargeback

**Refund Request**:
A Student's written ask for a Refund, waiting for staff to decide. Shown to the Student as "Refund requested".
_Avoid_: Pending Chargeback, cancel my purchase

**Refund Window**:
The 14 days after a Purchase during which a Student may ask for a Refund.
_Avoid_: Cancel window
