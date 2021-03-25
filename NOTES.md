# NOTES


## Build Dockerfile (alpine) with Lua

Run from `modules` directory.

`docker build --build-arg ENABLED_MODULES="ndk lua" -t my-nginx-with-lua . `

 ## Modules to add

 * `njs`

## Commands

`nginx -V | grep --color stub_status_module`

* [Nginx Command List](https://www.cyberciti.biz/faq/how-to-list-installed-nginx-modules-and-compiled-flags/)

