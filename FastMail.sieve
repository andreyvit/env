require ["envelope", "imapflags", "fileinto", "reject", "notify", "vacation", "regex", "relational", "comparator-i;ascii-numeric", "body", "copy", "subaddress"];


## PERSONALITIES ##


## SPAM FILTERING ##


## OTHER SPECIAL FILTERS ##


if header :contains ["x-resolved-to"] "+chatlogs@" {
  addflag "$ChatLog";
  addflag "\\Seen";
  fileinto "INBOX.Chats";
  removeflag "$ChatLog";
  removeflag "\\Seen";
}


## TOTAL JUNK ##

if address :all :is "from" "do-not-reply@checklist.com" {
  discard;
  stop;
}

if address :domain "from" "imac.private" {
  discard;
  stop;
}


## SUPPORT ##
#
# if address "x-delivered-to" "alpha@livereload.com" {
#   fileinto "INBOX.Support.AlphaSupport";
#   stop;
# }
# if address "x-delivered-to" ["support@livereload.com", "help@livereload.com", "feedback@livereload.com"] {
#   if anyof(header :contains "subject" "URGENT", body :contains "URGENT") {
#     fileinto "INBOX.Support.Urgent";
#   } else {
#     fileinto "INBOX.Support.NewTickets";
#   }
#   stop;
# }
# if address "x-delivered-to" "urgent@livereload.com" {
#   fileinto "INBOX.Support.Urgent";
#   stop;
# }
# if allof(address "from" "support@livereload.com", header :matches "Message-Id" "<*@uservoice.com>") {
#   if body :contains "URGENT EMERGENCY" {
#     fileinto "INBOX.Support.Urgent";
#   } else {
#     fileinto "INBOX.Support.NewTickets";
#   }
#   stop;
# }


## URGENT ##

## GTD INBOX ##
# 
# if address :detail ["to", "cc", "resent-to", "x-delivered-to"] ["inbox"] {
#   redirect "andreyvit.b76cc@m.evernote.com";
#   addflag "\\Seen";
#   fileinto "Inbox";
#   stop;
# }


## SPECIAL LISTS AND GROUPS ##

if header :contains "subject" "[swift-evolution]" { fileinto "INBOX.Mailing Lists"; stop; }

if header :contains "list-id" "socketstream.googlegroups.com" { fileinto "INBOX.Junk.SocketStream"; stop; }

if allof (address :domain "from" "twitter.com", header :contains "subject" ["Suggestions", "have Tweets for you", "new follower", "Tweets from", "is now following", "favorited a Tweet", "favorited one of your Tweets", "retweeted a Tweet", "Do you know", "tweeted:"]) { fileinto "INBOX.Junk.Twitter Junk"; stop; }
if allof (address :domain "from" "twitter.com", body :contains "what's trending on Twitter", address "to" ["andreyvit+livereload@gmail.com", "andreyvit+mockko@gmail.com", "andreyvit+xdry@gmail.com"]) { fileinto "INBOX.Junk.Twitter Junk"; stop; }
if allof (address :domain "from" "twitter.com", address "to" ["andreyvit+mockko@gmail.com", "andreyvit+xdry@gmail.com"]) { fileinto "INBOX.NewsWeekly"; stop; }
if allof (address :domain "from" "twitter.com", body :contains ["what's trending on Twitter", "See your week in review"]) { fileinto "INBOX.NewsWeekly"; stop; }

if allof (address "from" "support@papertrailapp.com", header :contains "subject" ["logging stopped", "log data transfer notification"]) { fileinto "INBOX.NewsMonthly"; stop; }

if address :domain "from" ["projektmagazin.de", "pm.projektmagazin.de"] { fileinto "INBOX.Junk.ProjektMagazin"; stop; }

if address "from" ["gregor@buildtracks.com"] { fileinto "INBOX.SoloIM"; stop; }
if allof (address :domain "from" "plus.google.com", header :contains "subject" "solo.im") { fileinto "INBOX.SoloIM"; stop; }

if anyof(
  address "from" [
    "brian@casjam.com",
    "nevmed@gmail.com",
    "jakub@linowski.ca",
    "ash@spark59.com",
    "nathan@thinklegend.com",
    "support@affiliatetrafficmachine.com",
    "brennan@planscope.io",
    "team@sweetprocess.com",
    "patrick@kalzumeus.com",
    "info@founderdating.com"
  ],
  address :domain "from" [
    "ebenpagan.com",
    "okdork.com",
    "socialentrepreneurempowerment.com",
    "neilpatel.com",
    "dancounsell.com"
  ],
  address :domain :matches "from" [
    "*.warriorforum.com"
  ]
) { fileinto "INBOX.Business Reading"; stop; }

if address :domain "from" [
    "archiveofourown.org",
    "fanfiction.com"
] { fileinto "INBOX.Fanfiction"; stop; }

if anyof(
  address :domain "from" [
    "hackermonthly.com",
    "objc.io",
    "ewebdesign.com",
    "cloudability.com",
    "politepersistence.com"
  ],
  address "from" "dave.verwer@shinydevelopment.com",
  allof(address "from" "editor@toptal.com", header :matches "subject" "New Blog Post:*"),
  allof(address "from" "noreply-appledev@apple.com", header :matches "subject" "ADF:*")
) { fileinto "INBOX.Tech Reading"; stop; }

if allof(address :domain "from" "plus.google.com", header :contains "subject" "Shared a post") { fileinto "INBOX.Junk.Google+"; stop; }

if anyof (
  address "from" "notifications@notifications.intercom.io",
  allof(address "from" "andreyvit@gmail.com", header :contains "subject" "[Mockko] new user signed up")
) { fileinto "INBOX.Junk.Mockko"; stop; }

if allof(address :domain "from" "github.com", header :contains "subject" "GitHub explore the week") { fileinto "INBOX.NewsWeekly"; stop; }


## NEWS DAILY / WEEKLY / MONTLY ##

# if anyof (
#   header :matches "subject" "solo.im weekly*",
#   address "from" [
#     # financial
#     "service@intl.paypal.com",
# 
#     # billing (want to know of any issues ASAP)
#     "billing@tenderapp.com",
#     "sales@2checkout.com",
#     "noreply@wallet.google.com",
#     "no-reply@2co.com",
#     "billing@hetzner.com",
#     "billing@appfigures.com",
#     "noreply@jaconda.im",
#     "info@payonline.ru",
#     "billing@sublimevideo.net",
# 
#     # critical services
#     "no-reply-aws@amazon.com",
#     "support@academ.org",
#     "do_not_reply@apple.com",
#     "do_not_reply@itunes.com",
#     "developer@insideapple.apple.com",
#     "support@campaignmonitor.com",
# 
#     # replies / comments / feedback
#     "chromewebstore-noreply@google.com",
#     "notifications@fetchapp.com",
#     "googleappengine@googlecode.com",
#     "do-not-reply@stackexchange.com",
# 
#     # expiring deals
#     "appsumo@email.appsumo.com",
#     "marketing@marinersoftware.com",
#     "bundle@maclegion.com",
# 
#     # daily reporting
#     "bitofnews.com",
#     "reports@appfigures.com",
#     "info@campaignmonitor.com",
# 
#     # potentially personal emails
#     "team@madebysource.com"
#   ],
#   address :domain "from" [
#     # replies / comments / feedback
#     "facebookmail.com",
#     "n.testflightapp.com",
#     "plus.google.com",
#     "wufoo.com",
#     "postmaster.twitter.com",
#     "couchsurfing.org",
#     "github.com",
#     "dnevnik.ru",
#     "chronopay.com",
# 
#     "chartbeat.com",
#     "bitofnews.com",
# 
#     "onemedstore.com",
#     "codeweavers.com",
#     "ohlife.com"
#   ]
# ) {
#   fileinto "INBOX.NewsDaily";
#   stop;
# }

if anyof (
  address "from" [
    "digest-noreply@quora.com",
    "no-reply-mobile-app-distribution@amazon.com",
    "pixelbuzz@ellislab.com",
    "amazonkindle-feedback@amazon.com",
    "team@evernote.com",
    "contact@codeschool.com",
    "faculty@codeschool.com",
    "emailmarketing@rackspace.com",
    "newsletter@wallwiz.com",
    "newsletter@dotcloud.com",
    "newsletter@ifttt.com",
    "friendly-emails@disqus.com",
    "notifications@livestream.com",
    "dolce-gusto@dvs-emarket.ru",
    "no-reply@livereload.uservoice.com",
    "kollaborate@assemblagehq.com",
    "CharterforCompassion@",
    "beta@heroku.com",
    "newsletter@heroku.com",
    "communications@heroku.com",
    "community@blurb.com",
    "googleplay-noreply@google.com",
    "codesite-noreply@google.com",
    "admob-noreply@google.com",
    "news@spark59.com",
    "b-news@kontur.ru",
    "noreply@angel.co",
    "noreply@google.com",
    "no-reply@wunderlist.com",
    "inf@alfabank.ru",
    "seti@37signals.com",
    "monthly@flowdock.com",
    "newsletter@yubico.com",
    "replies@e.logmein.com",
    "rsihelp+doitnow@gmail.com",
    "MacHeist_Directorate@mail.vresp.com",
    "marketing@joyent.com",
    "friends@olark.com",
    "noreply@medium.com",
    "fsafety@live.com",
    "aws-marketing-email-replies@amazon.com",
    "support-alert@code42.com",
    "noreply@sumome.com",
    "newsletter@basecamp.com",
    "feedback@highrisehq.com",
    "notifier@crashlytics.com"
  ],
  address :domain "from" [
    "livejournal.com",
    "apigee.com",
    "photoguides.net",
    "cocoacontrols.com",
    "hackernewsletter.com",
    "cageapp.com",
    "xydo.com",
    "yammer.com",
    "geekli.st",
    "deepa.ru",
    "accel.io",
    "computerplaza.ru",
    "everpix.com",
    "macphun.com",
    "ikeafamilynews.com",
    "ru.ikeafamilynews.com",
    "shinydevelopment.com",
    "xarakiri.ru",
    "hootsuite.com",
    "toutapp.com",
    "alfredapp.com",
    "jilion.com",
    "ebenpagan.com",
    "nanya.ru",
    "pivotallabs.com",
    "stackoverflow.com",
    "desk.com",
    "udacity.com",
    "noringa.ru",
    "hackermonthly.com",
    "meteor.com",
    "zurb.com",
    "nytimes.com",
    "s3log.com",
    "odesk.com",
    "plugg.io",
    "quora.com",
    "youtube.com",
    "linkedin.com",
    "e.linkedin.com",
    "gotomeeting.com",
    "care.gotomeeting.com",
    "urbanairship.com",
    "bufferapp.com",
    "affiliatetrafficmachine.com",
    "okdork.com",
    "crashplan.com",
    "startupplays.com",
    "productivemacs.com",
    "agilewebsolutions.com",
    "InsideApple.Apple.com",
    "qloudstat.com",
    "weebly.com",
    "freejapaneselessons.com",
    "new.itunes.com",
    "newrelic.com",
    "syniumsoftware.com",
    "appbot.co",
    "macheist.com",
    "realmacsoftware.com",
    "dolce-gusto.ru",
    "nskes.ru",
    "tcsbank.ru",
    "kickstarter.com",
    "cloudHQ.net",
    "workhappy.odesk.com",
    "99designs.com",
    "budist.ru",
    "ergonis.com",
    "icyblaze.com",
    "pusher.com",
    "mixpanel.com",
    "getaltitude.com",
    "envato.com",
    "macphun.com",
    "forrst.com",
    "formz.ru",
    "expandrive.com",
    "planscope.io",
    "feedbin.me",
    "verbling.com",
    "sweetprocess.com",
    "mailchimp.com",
    "digitaldeliveryapp.com",
    "equinux.com",
    "dropmark.com",
    "koingosw.com",
    "stairways.com.au",
    "mail.adobesystems.com",
    "info.adobesystems.com",
    "uservoice.com",
    "audible.com",
    "flexibits.com",
    "brace.io",
    "apparentsoft.com",
    "browserstack.com",
    "getpocket.com",
    "kissmetrics.com",
    "guides.co",
    "macupdate.com",
    "gopivotal.com",
    "parallels-universe.com",
    "e-mail.microsoft.com",
    "microsoft.microsoft.com",
    "redislabs.com",
    "connect.asana.com",
    "irradiatedsoftware.com",
    "droplr.com",
    "atlassian.com",
    "postmarkapp.com",
    "signnow.com",
    "e.airbnb.com",
    "e.join.me",
    "glip.com",
    "digidna.net",
    "privacyinternational.org",
    "designmodo.com",
    "secret.ly",
    "sqwiggle.com",
    "getbase.com",
    "techsmith.messages4.com",
    "cloudinary.com",
    "playteam.ru",
    "playfamily.ru",
    "telemetryapp.com",
    "icons8.com",
    "telestream.net"
  ],
  address :domain :matches "from" "*.intercom.io",
  header :matches "subject" "[feedback.livereload.com] Daily summary*",
  address :localpart "from" "Chupamobile"
) {
  fileinto "INBOX.NewsWeekly";
  stop;
}

if anyof (
  # "andrey+lrtranscript@tarantsov.com"
  address "from" [
    "service@intl.paypal.com",
    "billing@olark.com",
    "ops@geekli.st",
    "info@medialoot.com",
    "crashkit@yoursway.com",
    "info@startupplays.com",
    "new-followers@email.app.net"
  ],
  address :domain "from" [
    "tthor.com",
    "email.newyorktimes.com",
    "pagelime.com",
    "InsideApple.Apple.com",
    "my.firstvds.ru",
    "workflowy.com",
    "appcelerator.com",
    "fullcontact.com",
    "recurly.com",
    "harvestapp.com",
    "parse.com",
    "envato.com",
    "klout.com",
    "rottentomatoes.com",
    "email.rottentomatoes.com",
    "hannaandersson.com",
    "elance.com",
    "mindmeister.com",
    "AlanG.us",
    "bits.vn",
    "nevskycontour.com",
    "spacemonkey.com",
    "koingo-newsletter.com",
    "cacoo.com",
    "todoist.com",
    "cplaza.ru",
    "startupcompass.co",
    "tumblr.com",
    "neatberry.com",
    "lingualeo.com",
    "uservoice.uservoice.com",
    "nozbe.com",
    "news.oktogo.ru",
    "lift.do",

    # marketing geniuses
    "instantcustomer.com",
    "marketinggenesis.com",

    "notify.vk.com",
    "moikrug.ru",
    "professionali.ru"
  ],
  address :domain :matches "from" [
    "*.blurb.com",
    "*.moo.com",
    "*.hannaandersson.com"
  ],
  address :localpart "from" "iTunes-GiftCards.com@",
  header "list-id" [
    "<google-appengine-downtime-notify.googlegroups.com>",
    "<wala-sourceforge-net.googlegroups.com>"
  ],
  header :matches "subject" [
    "[Mockko] new user signed up*"
  ]
) {
  fileinto "INBOX.NewsMonthly";
  stop;
}

if header :contains ["x-resolved-to"] "+chatlogs@" {
  addflag "$ChatLog";
  addflag "\\Seen";
  fileinto "INBOX.Chats";
  removeflag "$ChatLog";
  removeflag "\\Seen";
}
