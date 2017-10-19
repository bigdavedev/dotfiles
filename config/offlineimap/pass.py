from subprocess import check_output
import os


def get_credentials_file():
    xdg_config_home = os.environ['XDG_CONFIG_HOME']
    password_file = os.path.join(xdg_config_home,
        "offlineimap",
        "mail_passwords.gpg")
    return password_file


def decode_passwords(password_file):
    gpg_cmd = "gpg -dq {encrypted}"
    output = (
        check_output(gpg_cmd.format(encrypted=password_file), shell=True)
        .decode("utf-8")
        .split("\n")
    )
    passwords = {
        "arccore": output[0],
        "gmail": output[1],
        "consat": output[2]
    }
    return passwords


def get_password(account):
    password_file = get_credentials_file()
    passwords = decode_passwords(password_file)
    return passwords[account]

