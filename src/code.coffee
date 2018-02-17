archiveRead = ->
  GmailApp.moveThreadsToArchive GmailApp.search('label:inbox -label:unread -label:starred', 0, 100)
  return

unstarOld = ->
  threads = GmailApp.search('older_than:1y AND is:starred', 0, 100)
  Logger.log threads[1].getMessages()
  i = 0
  len = threads.length
  while i < len
    messages = threads[i].getMessages()
    j = 0
    len1 = messages.length
    while j < len1
      message = messages[j]
      if message.isStarred()
        message.unstar()
      j++
    i++
