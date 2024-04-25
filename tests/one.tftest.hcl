run "test_password" {
    command = apply

    assert {
        condition = length(output.name) == 16
        error_message = "Password length is not 16"
    }
}