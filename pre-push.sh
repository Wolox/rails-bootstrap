#!/bin/sh

echo 'Running Rspec tests'
RUN_CHECK_CMD='bundle exec rspec spec'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "Can't commit! You've broken Rspec tests!!!"
  exit 1
fi

echo 'Running Cucumber tests'
RUN_CHECK_CMD='bundle exec cucumber'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "Can't commit! You've broken Cucumber tests!!!"
  exit 1
fi

echo 'Running Rubocop'
RUN_CHECK_CMD='bundle exec rubocop app spec -R --format simple'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "Can't commit! You have rubocop offences!!!"
  exit 1
fi

echo "All checks passed. You didn't broke anything. Congrats!\n"
exit 0
