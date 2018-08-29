from __future__ import absolute_import
import logging
from os import listdir, remove
from os.path import join, isfile

log = logging.getLevelName(__name__)

def get_filenames_matching_content(directory, content = None, pillar_key = None):
  '''
  A helper method to find certificate files that match content. You can specify 
  the content directly on the command line by using the content parameter or
  specify the pillar_key containing the content of the certificate.

  directory 
    (String) - The directory to search
  content 
    (String) - the contents to search for
  pillar_key 
    (String) - the pillar_key containing the contents of the file to search for

  returns
    (List) - A list of all the filenames matching the content using either the
    content or pillar_key

  CLI Example:

  .. code-block:: bash
    
    salt-call cert_formula_helper.get_filenames_matching_content /usr/local/share/ca-certificates pillar_key="cert:certlist:cert.filename:cert"

  '''
  if (not content and not pillar_key):
    return False

  if (pillar_key):
    content = __salt__['pillar.get'](pillar_key, None)
    if (not content):
      return False

  matchingFiles = []
  for filename in listdir(directory):
    if isfile(join(directory, filename)):
      with open(join(directory, filename)) as file:
        if content.strip() == file.read().strip():
          matchingFiles.append(filename)

  return matchingFiles
