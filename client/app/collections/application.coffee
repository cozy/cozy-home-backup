BaseCollection = require 'lib/base_collection'
Application = require 'models/application'


# List of installed applications.
module.exports = class ApplicationCollection extends BaseCollection

    model: Application
    url: 'api/applications/'

    # fetch application list from the market
    # callback(err, apps)
    fetchFromMarket: (callback) =>
        apps = [
                icon:"img/bookmarks-icon.png"
                name:"bookmarks"
                slug:"bookmarks"
                git:"https://github.com/Piour/cozy-bookmarks.git"
                comment: "community contribution"
                description:"Manage your bookmarks easily"
            ,
                icon:"img/feeds-icon.png"
                name:"feeds"
                slug:"feeds"
                git:"https://github.com/Piour/cozy-feeds.git"
                comment:"community contribution"
                description:"Aggregate your feeds and save your favorite links in bookmarks."
            ,
                icon:"img/notes-icon.png"
                name:"notes"
                slug:"notes"
                git:"https://github.com/mycozycloud/cozy-notes.git"
                comment:"official application"
                description:"Store all your notes and files."
            ,
                icon:"img/todos-icon.png"
                name:"todos"
                slug:"todos"
                git:"https://github.com/mycozycloud/cozy-todos.git"
                comment:"official application"
                description:"Write your tasks, order them and execute them efficiently."
            ,
                icon:"img/mails-icon.png"
                name:"mails"
                slug:"mails"
                git:"https://github.com/mycozycloud/cozy-mails.git"
                comment:"official application"
                description:"Backup your inbox and browse them from your cozy."
            ,
                icon:"img/boonk-icon.png"
                name:"boonk"
                slug:"boonk"
                git:"https://github.com/frankrousseau/boonk.git"
                comment:"community contribution"
                description:"Aggregate your bank account data (for French citizen only)."
        ]
        @reset apps
        callback null, apps  if callback?
