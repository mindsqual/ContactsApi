# Get parameters from the command line
param([string]$target = "build")

# Set values for the build
$prj_name = "ContactsSrvcDbDacpac"
$prj = "..\" + $prj_name + ".sqlproj"
$t = "/t:" + $target
$sln = "/p:SolutionDir=..\"

# Build DACPAC
msbuild $prj $t $sln
