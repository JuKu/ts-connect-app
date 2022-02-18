echo "Sync GitHub labels"

echo "GitHub Access Token: ";
$token = Read-Host "Please enter your GitHub access token"

echo "GitHub Access token: $token"

set GITHUB_ACCESS_TOKEN $token

github-label-sync -d -l labels_without_multiple_aliases.json JuKu/ts-connect-app
PAUSE

github-label-sync -l labels_without_multiple_aliases.json JuKu/ts-connect-app --access-token $token

PAUSE