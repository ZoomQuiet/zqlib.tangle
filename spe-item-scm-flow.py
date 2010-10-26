SVN_TASK_DIR = '/tasks/CMDB.KUP'
SVN_BRANCHES_DIR = '/branches/CMDB.KUP'
LOCAL = 'local PC'
BETA = 'beta.rdev.kingsoft.net'
DEMO = 'demo.rdev.kingsoft.net'
SVN_RELEASE_DIR = '/release/CMDB.KUP'

def develop(version):
  while cannot_demo:
    co from SVN_TASK_DIR to LOCAL
    coding
    ci from LOCAL to SVN_TASK_DIR
    co/update from SVN_TASK_DIR to BETA
    test and debug on BETA

def demo(version):
  freeze functions
  try:
    cp/merge from SVN_TASK_DIR to SVN_BRANCHES_DIR
    co from SVN_BRANCHES_DIR to DEMO
    demo show
  except error:
    return bugs

def release(version):
  cp from SVN_BRANCHES_DIR to SVN_RELEASE_DIR
  co from SVN_RELEASE_DIR to producting_machine

def main_process(version):
  version2_is_begin = False
  while project_is_not_dead:
      develop(version)
      bug = demo(version):
      if bug:
        continue
      release(version):
      listening from end_users
      if !version2_is_begin:
        fork(main_process(version2))
      if get_bug_report
      continue

main_process(version1)

