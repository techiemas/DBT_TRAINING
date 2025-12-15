{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Principal": {
				"AWS": "arn:aws:iam::568650268465:user/fq150000-s"
			},
			"Action": "sts:AssumeRole",
			"Condition": {
			"StringEquals": {
			    "sts:ExternalId":"ETB81434_SFCRole=2_TkzfYL7I6zk0Jj/cEyCHkfpiGbc="
			}
			}
		}
	]
}