#!/bin/sh

echo "\033[34mRunning Rspec tests\033[0m"
RUN_CHECK_CMD='bundle exec rspec spec -fd'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "\033[34mCan't commit! You've broken Rspec tests!!!\033[0m"
  exit 1
fi

echo "\033[34mRunning Rubocop\033[0m"
RUN_CHECK_CMD='bundle exec rubocop app spec --format simple'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "\033[34mCan't commit! You have rubocop offences!!!\033[0m"
  exit 1
fi

echo "\033[34mAll checks passed. You didn't break anything. Congrats!\n\033[0m"
exit 0
