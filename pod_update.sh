 #!/bin/bash
echo "请输入版本号"
read tag

target=$PWD
target=${target##*/}
echo 🔥执行:fastlane ManagerLib tag:$tag target:$target
fastlane ManagerLib tag:$tag target:$target
echo 请输入注册的邮箱
read email
echo 请输入注册的描述
read des
echo 🔥开始注册
pod trunk register $email  $des  --verbose
echo 执行提交...
pod trunk push  $target.podspec  --allow-warnings

