archiveThreads = (search)->
  return GmailApp.moveThreadsToArchive GmailApp.search(search, 0, 100)

unstarThreads = (search)->
  threads = GmailApp.search(search, 0, 100)
  for thread in threads
    for message in thread.getMessages()
      if message.isStarred()
        message.unstar()
  return
