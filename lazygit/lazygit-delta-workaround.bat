@echo off

set "old=%~2"
set "new=%~5"
set "target=%~1"
set "old=%old:\=/%"
set "new=%new:\=/%"

git --no-pager diff --no-index --no-ext-diff "%old%" "%new%"^
 | sd "%old%" "%target%"^ | sd "%new%" "%target%"^
 | delta --paging=never
