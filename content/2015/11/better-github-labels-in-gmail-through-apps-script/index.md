
{
  "categories": [
    "Coding", "Apps Script"
  ],
  "date": "2015-11-25",
  "resources": [
    {
      "name": "featuredImage",
      "src": "images/a-google-apps-script-that-automatically-labels-github-issue-tracker-mails-in-gmail.png"
    }
  ],
  "title": "Better GitHub labels in Gmail through Apps Script"
}

When my team at work started doing a lot of projects in GitHub, I had trouble keeping up with all
the notifications from the issue tracker in Gmail. Which mails were about bugs assigned to me? Bugs
that had me in @ mentions? Bugs just from projects I was watching? Couldn’t the labels on the issues
also be labels on the issue emails?

I’ve always been a huge fan of Google Apps Script for productivity. You can automate Gmail,
spreadsheets, and docs. I’ve used it a lot for processing data in spreadsheets. I decided to combine
it with the GitHub API to label the issue tracker mails coming in and help me sort which ones to pay
attention to.

The source code for my apps script is [here](https://github.com/anniesullie/GitHubGmailLabels). It
runs on a timer, checking for unprocessed mail from GitHub, pulling data about the issue each GitHub
mail references from the GitHub API, and using that to add labels. Overall it’s really simple, less
than 150 lines of code including all the comments. I’m really excited about how much easier this
makes my mail to scan!
