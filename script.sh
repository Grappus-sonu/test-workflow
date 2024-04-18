cd /var/opt/uat-protean/web-sdk
sudo awk '/^[[:space:]]+image/ && !p_chng{sub(/:.+$/,": $image_path"); p_chng=1} 1' websdk-deployment.yml
cat websdk-deployment.yml
