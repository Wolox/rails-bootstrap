# Move to project's root folder
cd metrics

# bundle install
direct_dependencies=$(cat bundle_install | grep "Bundle complete" | cut -d " " -f3)
total_dependencies=$(cat bundle_install | grep "Bundle complete" | cut -d " " -f6)
indirect_dependencies=$((total_dependencies - direct_dependencies))

# rspec
code_coverage=$(cat rspec_report | grep Coverage | cut -d " " -f12 | tr -dc '0-9.')

# rubycritic
code_quality=$(cat rubycritic_report | grep Score | cut -d " " -f2)

# Sending metrics
echo "Sending metrics to the server..."

# args options or default values
DEFAULT_METRICS_URL='https://backendmetrics.engineering.wolox.com.ar/metrics'
DEFAULT_BRANCH='development'
UNDEFINED_VALUE=-1

repo_name=$1
project_name=$2
branch="${3:-$DEFAULT_BRANCH}"
metrics_url="${4:-$DEFAULT_METRICS_URL}"
code_coverage="${code_coverage:-$UNDEFINED_VALUE}"
code_quality="${code_quality:-$UNDEFINED_VALUE}"
direct_dependencies="${direct_dependencies:-$UNDEFINED_VALUE}"
indirect_dependencies="${indirect_dependencies:-$UNDEFINED_VALUE}"
build_time="${build_time:-$UNDEFINED_VALUE}"

# Results
echo "\nResults"
echo "Reponame : ${repo_name}"
echo "Project name : ${project_name}"
echo "Branch : ${branch}"
echo "metrics_url : ${metrics_url}"
echo "Code coverage (simplecov): ${code_coverage}"
echo "Code quality score (rubycritic): ${code_quality}"
echo "Direct dependencies: ${direct_dependencies}"
echo "Indirect dependencies: ${indirect_dependencies}"
echo "Build time (seconds): ${build_time}"

curl -i \
  --request POST \
  ${metrics_url} \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --data '{
    "tech": '\""ruby_on_rails"\"',
    "env": '\""${branch}"\"',
    "repo_name": '\""${repo_name}"\"',
    "project_name": '\""${project_name}"\"',
    "metrics": [
      {
        "name": "code-coverage",
        "value": '${code_coverage}',
        "version": "1.0"
      },
      {
        "name": "code-quality",
        "value": '${code_quality}',
        "version": "1.0"
      },
      {
        "name": "direct-dependencies",
        "value": '${direct_dependencies}',
        "version": "1.0"
      },
      {
        "name": "indirect-dependencies",
        "value": '${indirect_dependencies}',
        "version": "1.0"
      },
      {
        "name": "build-time",
        "value": '${build_time}',
        "version": "1.0"
      }
    ]
  }'
