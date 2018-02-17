archiveThreads = (search)->
  GmailApp.moveThreadsToArchive GmailApp.search(search, 0, 100)
  return

unstarThreads = (search)->
  threads = GmailApp.search(search, 0, 100)
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
