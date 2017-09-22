#!/bin/sh

echo "\033[34mRunning Rspec tests\033[0m"
RUN_CHECK_CMD='bundle exec rspec spec -fd'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "\033[34mCan't commit! You've broken Rspec tests!!!\033[0m"
  exit 1
fi

# echo "\033[34mRunning SCSS Lint\033[0m"
# RUN_CHECK_CMD='bundle exec scss-lint app/assets/stylesheets/'
# RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

# if [ $? -eq 1 ]
# then
#   echo "\033[34mCan't commit! You have scss lint offences!!!\033[0m"
#   exit 1
# fi

echo "\033[34mRunning eslint\033[0m"
RUN_CHECK_CMD='yarn run lint'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "\033[34mCan't commit! You have eslint problems!!!\033[0m"
  exit 1
fi

echo "\033[34mRunning Rubocop\033[0m"
RUN_CHECK_CMD='bundle exec rubocop app spec -R --format simple'
RUN_TESTS_OUTPUT=`${RUN_CHECK_CMD}`

if [ $? -eq 1 ]
then
  echo "\033[34mCan't commit! You have rubocop offences!!!\033[0m"
  exit 1
fi

echo "\033[34mAll checks passed. You didn't break anything. Congrats!\n\033[0m"
exit 0
