require ["envelope", "imapflags", "fileinto", "reject", "notify", "vacation", "regex", "relational", "comparator-i;ascii-numeric", "body", "copy"];

if header :contains ["x-resolved-to"] "+personalitysentitem-15209269@" {
  setflag "\\Seen";
  fileinto "INBOX.Sent Items";
  stop;
  }
if header :contains ["x-resolved-to"] "+personalitysentitem-19518889@" {
  setflag "\\Seen";
  fileinto "INBOX.Sent Items";
  stop;
  }
if not anyof(
  header :contains ["X-Spam-known-sender"] "yes"
) {
if address :all :is "from" "do-not-reply@checklist.com" {
  discard;
  stop;
}
if address :all :is "from" "root@imac.private" {
  discard;
  stop;
}
if not header :contains ["X-Spam-known-sender"] "yes" {
if allof(
  header :contains ["X-Backscatter"] "yes",
  not header :matches ["X-LinkName"] "*"
) {
  discard;
  stop;
}
if  header :value "ge" :comparator "i;ascii-numeric" ["X-Spam-score"] ["10"]  {
  discard;
  stop;
}
if  header :value "ge" :comparator "i;ascii-numeric" ["X-Spam-score"] ["4"]  {
  fileinto "INBOX.Junk Mail";
  stop;
}
}
}

if header :contains "from" "sam@snug.ug" {
  addflag "\\Flagged";
  fileinto "Inbox";
  removeflag "\\Flagged";
  stop;
}

if address :all :is ["from", "to", "cc", "resent-to", "x-delivered-to"] "alpha@livereload.com" {
  fileinto "INBOX.Support.AlphaSupport";
  stop;
}

if header :matches "subject" "[feedback.livereload.com] Daily summary*" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "service@intl.paypal.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "billing@olark.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "chromewebstore-noreply@google.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@tthor.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "invitations@linkedin.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@hackermonthly.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "kale@hackernewsletter.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "billing@tenderapp.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@email.newyorktimes.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "ops@geekli.st" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "notifications@fetchapp.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "support@academ.org" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@onemedstore.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@pagelime.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@facebookmail.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@meteor.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "hello@cageapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :is "list-id" ["google-appengine-downtime-notify.googlegroups.com", "<google-appengine-downtime-notify.googlegroups.com>"] {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "andrey+lrtranscript@tarantsov.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "do_not_reply@apple.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@n.testflightapp.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "reportcard@chartbeat.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "notify@my.firstvds.ru" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@codeweavers.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "sales@2checkout.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "appsumo@email.appsumo.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "iBookstore@InsideApple.Apple.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "info@medialoot.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "digest-noreply@quora.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@wallet.google.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "googleappengine@googlecode.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@couchsurfing.org" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "support@xydo.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "crashkit@yoursway.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "list-id" "socketstream.googlegroups.com" {
  fileinto "INBOX.SocketStream";
} elsif header :matches "subject" "[Mockko] new user signed up*" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "socketstream@googlegroups.com" {
  fileinto "INBOX.SocketStream";
} elsif header :contains "from" "info@projektmagazin.de" {
  fileinto "INBOX.ProjektMagazin";
} elsif header :contains "from" "Projekt Magazin (JIRA)" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "do_not_reply@itunes.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "iTunes-GiftCards.com@" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@ohlife.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@zurb.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@nozbe.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "no-reply@2co.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@workflowy.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "reports@appfigures.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@nytimes.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@plus.google.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@notify.vk.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@postmaster.twitter.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@pm.projektmagazin.de" {
  fileinto "INBOX.ProjektMagazin";
} elsif header :contains "from" "@s3log.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@wufoo.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "@appcelerator.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "pleasereply@fullcontact.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@odesk.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "info@startupplays.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "info@campaignmonitor.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "yammer@yammer.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "no-reply-aws@amazon.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains "from" "root@imac.private" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@plugg.io" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@quora.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@youtube.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "des.traynor@intercom.mail.intercom.io" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "geeks@geekli.st" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "notifications@notifications.intercom.io" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "jasons@99designs.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :matches "from" "*@moikrug.ru" {
  fileinto "INBOX.NewsMonthly";
} elsif address :all :is "from" "support@recurly.com" {
  fileinto "INBOX.NewsMonthly";
} elsif address :all :is "from" "do-not-reply@stackexchange.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "billing@hetzner.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "developer@insideapple.apple.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "News@InsideApple.Apple.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :regex "from" "(^|,)[[:space:]]*\"?Harvest[[:space:]]+Newsletter\"?[[:space:]]*<" {
  fileinto "INBOX.NewsMonthly";
} elsif address :all :is "from" "feedback@parse.com" {
  fileinto "INBOX.NewsMonthly";
} elsif address :all :is "from" "no-reply-mobile-app-distribution@amazon.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "contact@photoguides.net" {
  fileinto "INBOX.NewsWeekly";
} elsif header :matches "from" "*@apigee.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "support@campaignmonitor.com" {
  fileinto "INBOX.NewsDaily";
} elsif header :contains ["x-resolved-to"] "+chatlogs@" {
  addflag "$ChatLog";
  addflag "\\Seen";
  fileinto "INBOX.Chats";
  removeflag "$ChatLog";
  removeflag "\\Seen";
} elsif address :all :is "from" "pixelbuzz@ellislab.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@linkedin.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "do-not-reply@envato.com" {
  fileinto "INBOX.NewsMonthly";
} elsif address :all :is "from" "amazonkindle-feedback@amazon.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "noreply@github.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "marketing@marinersoftware.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "info@cocoacontrols.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "billing@appfigures.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "noreply@jaconda.im" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "info@payonline.ru" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is "from" "team@evernote.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "bundle@maclegion.com" {
  fileinto "INBOX.NewsDaily";
} elsif address :all :is ["to", "cc", "resent-to", "x-delivered-to"] "andrey+urgent@tarantsov.com" {
  addflag "\\Flagged";
  fileinto "Inbox";
  removeflag "\\Flagged";
} elsif header :contains "from" "contact@codeschool.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "faculty@codeschool.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "do-not-reply@archiveofourown.org" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "bot@fanfiction.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@everpix.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "lj_notify@livejournal.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "info@deepa.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "emailmarketing@rackspace.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "info@accel.io" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "newsletter@wallwiz.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "newsletter@dotcloud.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "newsletter@ifttt.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "news@macphun.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "scottr@apigee.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@gotomeeting.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@care.gotomeeting.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@urbanairship.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@bufferapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "ikeafamilynews.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "do-not-reply@klout.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@rottentomatoes.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "hannaandersson.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@moikrug.ru" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@elance.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@professionali.ru" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@spacemonkey.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "new-followers@email.app.net" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@affiliatetrafficmachine.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "nevmed@gmail.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@okdork.com" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is "from" "support@livereload.com" {
  fileinto "INBOX.Support.NewTickets";
} elsif header :contains "from" "@crashplan.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "friendly-emails@disqus.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "dave.verwer@shinydevelopment.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "notifications@livestream.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "dolce-gusto@dvs-emarket.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "no-reply@livereload.uservoice.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "cards@xarakiri.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "notification@browserstack.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "no-reply@hootsuite.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "aubrey@toutapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "team@toutapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "kollaborate@assemblagehq.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "info@alfredapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@jilion.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "CharterforCompassion@" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "beta@heroku.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "help@ebenpagan.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@mindmeister.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "community@blurb.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "googleplay-noreply@google.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@nanya.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@startupplays.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "community@parse.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@AlanG.us" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "do-not-reply@stackoverflow.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "tracker-noreply@pivotallabs.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@github.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "news@spark59.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@productivemacs.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@agilewebsolutions.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "b-news@kontur.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@InsideApple.Apple.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "billing@sublimevideo.net" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@angel.co" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@qloudstat.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@weebly.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@freejapaneselessons.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@new.itunes.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@newrelic.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@syniumsoftware.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "noreply@google.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@appbot.co" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "newsletter@heroku.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "desk.team@desk.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@macheist.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "no-reply@wunderlist.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "evan@uservoice.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "info@noringa.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "inf@alfabank.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "newsletter@udacity.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@realmacsoftware.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@dolce-gusto.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@nskes.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@tcsbank.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@kickstarter.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "seti@37signals.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@cloudHQ.net" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@workhappy.odesk.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "monthly@flowdock.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@99designs.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@budist.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif address :all :is ["to", "cc", "resent-to", "x-delivered-to"] "wala-sourceforge-net@googlegroups.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "@ergonis.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "sales@computerplaza.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@icyblaze.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@pusher.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@mixpanel.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@getaltitude.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@envato.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@macphun.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@forrst.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@formz.ru" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@expandrive.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@planscope.io" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@feedbin.me" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@verbling.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@bits.vn" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "newsletter@yubico.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@sweetprocess.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "Chupamobile@" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "replies@e.logmein.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@snipt.mail.intercom.io" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@mailchimp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "rsihelp+doitnow@gmail.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@digitaldeliveryapp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@equinux.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@dropmark.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@nevskycontour.com" {
  fileinto "INBOX.NewsMonthly";
} elsif header :contains "from" "MacHeist_Directorate@mail.vresp.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@koingosw.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "@stairways.com.au" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "from" "marketing@joyent.com" {
  fileinto "INBOX.NewsWeekly";
} elsif header :contains "subject" "URGENT" {
  addflag "\\Flagged";
  fileinto "Inbox";
  removeflag "\\Flagged";
} elsif header :contains "from" "@koingo-newsletter.com" {
  fileinto "INBOX.NewsMonthly";
}



# ===BEGIN-GENERATED=== Text between markers will be automatically replaced
#
# This is the sieve script that would be used if you weren't using
# custom rules.  Note that it has been commented out, so it has no actual
# effect on your mail, we've just placed it here for your reference.
# Also note that any changes you make between the BEGIN and END tags
# may be overwritten at any time, so if you want to add your own
# comments and code, don't do it in here!
#
# require ["envelope", "imapflags", "fileinto", "reject", "notify", "vacation", "regex", "relational", "comparator-i;ascii-numeric", "body", "copy"];
#
# if header :contains ["x-resolved-to"] "+personalitysentitem-15209269@" {
#   setflag "\\Seen";
#   fileinto "INBOX.Sent Items";
#   stop;
#   }
# if header :contains ["x-resolved-to"] "+personalitysentitem-19518889@" {
#   setflag "\\Seen";
#   fileinto "INBOX.Sent Items";
#   stop;
#   }
# if not anyof(
#   header :contains ["X-Spam-known-sender"] "yes"
# ) {
# if address :all :is "from" "do-not-reply@checklist.com" {
#   discard;
#   stop;
# }
# if not header :contains ["X-Spam-known-sender"] "yes" {
# if allof(
#   header :contains ["X-Backscatter"] "yes",
#   not header :matches ["X-LinkName"] "*"
# ) {
#   discard;
#   stop;
# }
# if  header :value "ge" :comparator "i;ascii-numeric" ["X-Spam-score"] ["10"]  {
#   discard;
#   stop;
# }
# if  header :value "ge" :comparator "i;ascii-numeric" ["X-Spam-score"] ["4"]  {
#   fileinto "INBOX.Junk Mail";
#   stop;
# }
# }
# }
# if header :matches "subject" "[feedback.livereload.com] Daily summary*" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "service@intl.paypal.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "billing@olark.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "chromewebstore-noreply@google.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@tthor.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "invitations@linkedin.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@hackermonthly.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "kale@hackernewsletter.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "billing@tenderapp.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@email.newyorktimes.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "ops@geekli.st" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "notifications@fetchapp.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "support@academ.org" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@onemedstore.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@pagelime.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@facebookmail.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@meteor.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "hello@cageapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :is "list-id" ["google-appengine-downtime-notify.googlegroups.com", "<google-appengine-downtime-notify.googlegroups.com>"] {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "andrey+lrtranscript@tarantsov.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "do_not_reply@apple.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@n.testflightapp.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "reportcard@chartbeat.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "notify@my.firstvds.ru" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@codeweavers.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "sales@2checkout.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "appsumo@email.appsumo.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "iBookstore@InsideApple.Apple.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "info@medialoot.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "digest-noreply@quora.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@wallet.google.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "googleappengine@googlecode.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@couchsurfing.org" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "support@xydo.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "crashkit@yoursway.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "list-id" "socketstream.googlegroups.com" {
#   fileinto "INBOX.SocketStream";
# } elsif header :matches "subject" "[Mockko] new user signed up*" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "socketstream@googlegroups.com" {
#   fileinto "INBOX.SocketStream";
# } elsif header :contains "from" "info@projektmagazin.de" {
#   fileinto "INBOX.ProjektMagazin";
# } elsif header :contains "from" "Projekt Magazin (JIRA)" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "do_not_reply@itunes.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "iTunes-GiftCards.com@" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@ohlife.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@zurb.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@nozbe.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "no-reply@2co.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@workflowy.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "reports@appfigures.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@nytimes.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@plus.google.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@notify.vk.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@postmaster.twitter.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@pm.projektmagazin.de" {
#   fileinto "INBOX.ProjektMagazin";
# } elsif header :contains "from" "@s3log.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@wufoo.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "@appcelerator.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "pleasereply@fullcontact.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@odesk.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "info@startupplays.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "info@campaignmonitor.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "yammer@yammer.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "no-reply-aws@amazon.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains "from" "root@imac.private" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@plugg.io" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@quora.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@youtube.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "des.traynor@intercom.mail.intercom.io" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "geeks@geekli.st" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "notifications@notifications.intercom.io" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "jasons@99designs.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :matches "from" "*@moikrug.ru" {
#   fileinto "INBOX.NewsMonthly";
# } elsif address :all :is "from" "support@recurly.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif address :all :is "from" "do-not-reply@stackexchange.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "billing@hetzner.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "developer@insideapple.apple.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "News@InsideApple.Apple.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :regex "from" "(^|,)[[:space:]]*\"?Harvest[[:space:]]+Newsletter\"?[[:space:]]*<" {
#   fileinto "INBOX.NewsMonthly";
# } elsif address :all :is "from" "feedback@parse.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif address :all :is "from" "no-reply-mobile-app-distribution@amazon.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "contact@photoguides.net" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :matches "from" "*@apigee.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "support@campaignmonitor.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif header :contains ["x-resolved-to"] "+chatlogs@" {
#   addflag "$ChatLog";
#   addflag "\\Seen";
#   fileinto "INBOX.Chats";
#   removeflag "$ChatLog";
#   removeflag "\\Seen";
# } elsif address :all :is "from" "pixelbuzz@ellislab.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@linkedin.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "do-not-reply@envato.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif address :all :is "from" "amazonkindle-feedback@amazon.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "noreply@github.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "marketing@marinersoftware.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "info@cocoacontrols.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "billing@appfigures.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "noreply@jaconda.im" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "info@payonline.ru" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is "from" "team@evernote.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "bundle@maclegion.com" {
#   fileinto "INBOX.NewsDaily";
# } elsif address :all :is ["to", "cc", "resent-to", "x-delivered-to"] "andrey+urgent@tarantsov.com" {
#   addflag "\\Flagged";
#   fileinto "Inbox";
#   removeflag "\\Flagged";
# } elsif header :contains "from" "contact@codeschool.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "faculty@codeschool.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "do-not-reply@archiveofourown.org" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "bot@fanfiction.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@everpix.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "lj_notify@livejournal.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "info@deepa.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "emailmarketing@rackspace.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "info@accel.io" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "newsletter@wallwiz.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "newsletter@dotcloud.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "newsletter@ifttt.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "news@macphun.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "scottr@apigee.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@gotomeeting.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@care.gotomeeting.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@urbanairship.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@bufferapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "ikeafamilynews.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "do-not-reply@klout.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@rottentomatoes.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "hannaandersson.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@moikrug.ru" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@elance.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@professionali.ru" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@spacemonkey.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "new-followers@email.app.net" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@affiliatetrafficmachine.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "nevmed@gmail.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@okdork.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is "from" "support@livereload.com" {
#   fileinto "INBOX.Support.NewTickets";
# } elsif header :contains "from" "@crashplan.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "friendly-emails@disqus.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "dave.verwer@shinydevelopment.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "notifications@livestream.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "dolce-gusto@dvs-emarket.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "no-reply@livereload.uservoice.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "cards@xarakiri.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "notification@browserstack.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "no-reply@hootsuite.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "aubrey@toutapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "team@toutapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "kollaborate@assemblagehq.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "info@alfredapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@jilion.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "CharterforCompassion@" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "beta@heroku.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "help@ebenpagan.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@mindmeister.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "community@blurb.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "googleplay-noreply@google.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@nanya.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@startupplays.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "community@parse.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@AlanG.us" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "do-not-reply@stackoverflow.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "tracker-noreply@pivotallabs.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@github.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "news@spark59.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@productivemacs.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@agilewebsolutions.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "b-news@kontur.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@InsideApple.Apple.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "billing@sublimevideo.net" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@angel.co" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@qloudstat.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@weebly.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@freejapaneselessons.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@new.itunes.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@newrelic.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@syniumsoftware.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "noreply@google.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@appbot.co" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "newsletter@heroku.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "desk.team@desk.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@macheist.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "no-reply@wunderlist.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "evan@uservoice.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "info@noringa.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "inf@alfabank.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "newsletter@udacity.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@realmacsoftware.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@dolce-gusto.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@nskes.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@tcsbank.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@kickstarter.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "seti@37signals.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@cloudHQ.net" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@workhappy.odesk.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "monthly@flowdock.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@99designs.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@budist.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif address :all :is ["to", "cc", "resent-to", "x-delivered-to"] "wala-sourceforge-net@googlegroups.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "@ergonis.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "sales@computerplaza.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@icyblaze.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@pusher.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@mixpanel.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@getaltitude.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@envato.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@macphun.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@forrst.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@formz.ru" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@expandrive.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@planscope.io" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@feedbin.me" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@verbling.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@bits.vn" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "newsletter@yubico.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@sweetprocess.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "Chupamobile@" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "replies@e.logmein.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@snipt.mail.intercom.io" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@mailchimp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "rsihelp+doitnow@gmail.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@digitaldeliveryapp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@equinux.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@dropmark.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@nevskycontour.com" {
#   fileinto "INBOX.NewsMonthly";
# } elsif header :contains "from" "MacHeist_Directorate@mail.vresp.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@koingosw.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "@stairways.com.au" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "from" "marketing@joyent.com" {
#   fileinto "INBOX.NewsWeekly";
# } elsif header :contains "subject" "URGENT" {
#   addflag "\\Flagged";
#   fileinto "Inbox";
#   removeflag "\\Flagged";
# } elsif header :contains "from" "@koingo-newsletter.com" {
#   fileinto "INBOX.NewsMonthly";
# }
# ===END-GENERATED=== Text between markers will be automatically replaced
