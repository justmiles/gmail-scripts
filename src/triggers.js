function unstarOld() {
  unstarThreads('older_than:1y AND is:starred')
}

function archiveRead() {
  archiveThreads('label:inbox -label:unread -label:starred')
}
