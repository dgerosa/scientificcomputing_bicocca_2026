lastyear=2024
thisyear=2025

scriptdir="$(cd "$(dirname "$0")" && pwd)"
reporoot="$(dirname "$scriptdir")"

sed -i "" "s/DEFAULT_START: \"[0-9][0-9][0-9][0-9]-01-01\"/DEFAULT_START: \"$thisyear-01-01\"/" "$reporoot/.github/workflows/update_calendar.yml"
sed -i "" "s/DEFAULT_END: \"[0-9][0-9][0-9][0-9]-12-31\"/DEFAULT_END: \"$thisyear-12-31\"/" "$reporoot/.github/workflows/update_calendar.yml"

cd "$reporoot/lectures" || exit 1
sed -i "" "s/scientificcomputing_bicocca_$lastyear/scientificcomputing_bicocca_$thisyear/g" *.ipynb
