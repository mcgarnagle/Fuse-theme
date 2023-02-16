echo "building..."
ng build --prod --aot
echo "built...now deploying"
aws s3 sync ./dist/fuse s3://mcgarnaglesolutions.com.au  --profile personal --region ap-southeast-4
echo "complete!"

