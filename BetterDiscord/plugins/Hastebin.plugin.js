/**
 * @name Hastebin
 * @author CT-1409
 * @version 1.0.1
 */

    const request = require("request")
    const electron = require("electron")
    const fs = require("fs")
    const path = require("path")

    const config = {
        info: {
            name: "Hastebin",
            authors: [
                {
                    name: "CT-1409",
                    discord_id: "272875632088842240",
                }
            ],
            version: "1.0.1",
            description: "Uploads text to https://hastebin.com",
        },
        changelog: [
            {"title": "Update", "items":[
                "Added the upload button to the text area when typing a message"
            ]}
        ]
        
    };

    module.exports = !global.ZeresPluginLibrary ? class {

        constructor() {
            this._config = config;
        }
    
        load() {
            BdApi.showConfirmationModal("Library Missing", `The library plugin needed for ${config.info.name} is missing. Please click Download Now to install it.`, {
                confirmText: "Download Now",
                cancelText: "Cancel",
                onConfirm: () => {
                    request.get("https://rauenzi.github.io/BDPluginLibrary/release/0PluginLibrary.plugin.js", async (error, _response, body) => {
                        if (error) return electron.shell.openExternal("https://betterdiscord.net/ghdl?url=https://raw.githubusercontent.com/rauenzi/BDPluginLibrary/master/release/0PluginLibrary.plugin.js");
                        await new Promise(r => fs.writeFile(path.join(BdApi.Plugins.folder, "0PluginLibrary.plugin.js"), body, r));
                    });
                }
            });
        }
    
        start() { }
    
        stop() { }
    } : (([Plugin, Library]) => {

        const { Patcher, Toasts, WebpackModules, DCM } = Library;

        const { React } = BdApi
        return class Hastebin extends Plugin {
            constructor() {
                super();
            }

            async onStart() {
                this.patch()

            }

            patch() {
                const slate = WebpackModules.getModule(m => m?.default?.displayName === "SlateTextAreaContextMenu")

                Patcher.after(slate, "default", (_, args, component) => {
                    let props = args[0]
                    let target = props.target
                    let text = target.textContent

                    let item = DCM.buildMenuItem({
                        label: "Create Hastebin",
                        type: "text",
                        action: () => {
                            request.post({
                                url:     'https://hastebin.com/documents',
                                body:    text
                            }, (error, _response, body) => {
                                let data = JSON.parse(body)
                                if (error || !data.key) return Toasts.error("There was an issue getting the Hastebin link from the message content")
                                BdApi.alert("Hastebin Link", "https://hastebin.com/"+data.key)
                            });
                            
                        }
                    })
                    component.props.children.push(item)

                })

                const item = WebpackModules.getModule(m => m?.default?.displayName === "MessageContextMenu")

                Patcher.after(item, "default", (_, args, component) => {

                    console.log(window.getSelection())


                    let props = args[0]
                    let message = props.message
                    if (message.content) {
                        let item = DCM.buildMenuItem({
                            label: "Create Hastebin",
                            type: "text",
                            action: () => {
                                request.post({
                                    url:     'https://hastebin.com/documents',
                                    body:    message.content
                                }, (error, _response, body) => {
                                    let data = JSON.parse(body)
                                    if (error || !data.key) return Toasts.error("There was an issue getting the Hastebin link from the message content")
                                    BdApi.alert("Hastebin Link", "https://hastebin.com/"+data.key)
                                });
                                
                            }
                        })
    
                        component.props.children.push(item)
                    }

                })

            }

            onLoad() {
            }

            onStop() {
                Patcher.unpatchAll();
            }

        }
    })(global.ZeresPluginLibrary.buildPlugin(config));
