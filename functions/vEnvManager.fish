function vEnvManager --on-variable PWD
	status --is-command-substitution; and return
    if test -n "$V_ENV_DIR"
        string match --regex {$V_ENV_DIR}.\* (pwd); and return; or vf deactivate; and set -ex V_ENV_DIR; and set -ex V_ENV_NAME
    end
    if test -e .vf
        echo 'Virtual Env Exists for this project'
        set -gx V_ENV_NAME (head -n 1 .vf)
        echo $V_ENV_NAME
        set -gx V_ENV_DIR (pwd)
        vf activate $V_ENV_NAME
    end
end
