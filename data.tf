data "archive_file" "testfunc" {
    type        = "zip"
    source_dir  = "testfunc"
    output_path = "testfunc.zip"
}