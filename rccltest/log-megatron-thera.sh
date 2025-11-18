++ basename ./run1-rocm642-mi300.sh
++ sed 's/.sh$//'
++ sed 's/^run1-//'
+ BASENAME=rocm642-mi300
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ TAG=lumi-ai-workflow-tests/rccltest:rocm642-mi300
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ SIF=rccltest-rocm642-mi300.sif
+++ pwd
++ basename /data1/sfantao/lumi-ai-workflow-tests/rccltest
+ TESTNAME=rccltest
+ '[' 1 -eq 1 ']'
+ rm -rf /tmp/sfantao-sif-build-pipe
+ mkdir /tmp/sfantao-sif-build-pipe
+ TAG=rocm/megatron-lm:v25.9_gfx942
+ SIF=megatron-lm-v25.9_gfx942.sif
+ rsync -avhc --progress run2-rocm642-mi300.sh thera:/home/sfantao/lumi-ai-workflow-tests/rccltest/
sending incremental file list
run2-rocm642-mi300.sh
            700   6%    0.00kB/s    0:00:00           10.10K 100%    8.96MB/s    0:00:00 (xfr#1, to-chk=0/1)

sent 897 bytes  received 125 bytes  681.33 bytes/sec
total size is 10.10K  speedup is 9.88
+ ssh thera 'bash -eux -c '\''cd /home/sfantao/lumi-ai-workflow-tests/rccltest ; TAG=rocm/megatron-lm:v25.9_gfx942 SIF=megatron-lm-v25.9_gfx942.sif ./run2-rocm642-mi300.sh '\'''
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_vx=x
+ '[' -n x ']'
+ set +x
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for this output (/share/modules/lmod/lmod/init/bash)
Shell debugging restarted
+ unset __lmod_vx
+ cd /home/sfantao/lumi-ai-workflow-tests/rccltest
+ TAG=rocm/megatron-lm:v25.9_gfx942
+ SIF=megatron-lm-v25.9_gfx942.sif
+ ./run2-rocm642-mi300.sh
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_vx=x
+ '[' -n x ']'
+ set +x
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for this output (/share/modules/lmod/lmod/init/bash)
Shell debugging restarted
+ unset __lmod_vx
++ basename ./run2-rocm642-mi300.sh
++ sed 's/.sh$//'
++ sed 's/^run2-//'
+ BASENAME=rocm642-mi300
++ realpath megatron-lm-v25.9_gfx942.sif
+ SIF=/home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif
+ mkdir -p rocm642-mi300.runfolder
+ cd rocm642-mi300.runfolder
+ mpicmd='undefined mpicommand'
+ cat
++ hostname
+ '[' TheraS02.thera.amd.com = x1001c4s3b0n0 ']'
++ hostname
+ '[' TheraS02.thera.amd.com = lockhart-login1 ']'
++ hostname
+ [[ TheraS02.thera.amd.com == \u\a\n* ]]
++ hostname
+ [[ TheraS02.thera.amd.com == \T\h\e\r\a\S\0\2* ]]
+ module load singularity
++ /share/modules/lmod/lmod/libexec/lmod bash load singularity
+ eval '__LMOD_REF_COUNT_LOADEDMODULES=gcc/8.3.1:1\;contrib-modules:1\;StdEnv:1\;libevent/2.1.12:1\;ncurses/6.2:1\;tmux/3.3a:1\;singularity/4.1.2:1;' export '__LMOD_REF_COUNT_LOADEDMODULES;' 'LOADEDMODULES=gcc/8.3.1:contrib-modules:StdEnv:libevent/2.1.12:ncurses/6.2:tmux/3.3a:singularity/4.1.2;' export 'LOADEDMODULES;' 'MODULEPATH=/share/contrib-modules/.mfiles/Core:/share/contrib-modules/.mfiles/Libraries-and-Packages:/share/contrib-modules/.mfiles/Tools:/share/contrib-modules/.mfiles/Open-MPI:/share/modules/.mfiles/Compiler/gcc/8.3.1:/share/modules/.mfiles/Core:/share/modules/.mfiles/AMD:/share/modules/.mfiles/NVIDIA::/share/modules/modulefiles/Linux:/share/modules/modulefiles/Core:/share/modules/lmod/lmod/modulefiles/Core;' export 'MODULEPATH;' '__LMOD_REF_COUNT_PATH=/share/modules/singularity/4.1.2/libexec/singularity/bin:1\;/share/modules/singularity/4.1.2/bin:1\;/share/modules/ncurses/6.2/bin:1\;/share/modules/libevent/2.1.12/bin:1\;/share/modules/tmux/3.3a/bin:1\;/home/sfantao/tools/bin:1\;/home/sfantao/.local/bin:1\;/home/sfantao/bin:1\;/share/opt/slurm/current/bin:2\;/share/opt/thera/bin:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;' export '__LMOD_REF_COUNT_PATH;' 'PATH=/share/modules/singularity/4.1.2/libexec/singularity/bin:/share/modules/singularity/4.1.2/bin:/share/modules/ncurses/6.2/bin:/share/modules/libevent/2.1.12/bin:/share/modules/tmux/3.3a/bin:/home/sfantao/tools/bin:/home/sfantao/.local/bin:/home/sfantao/bin:/share/opt/slurm/current/bin:/share/opt/thera/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;' export 'PATH;' '__LMOD_REF_COUNT__LMFILES_=/share/modules/.mfiles/Core/gcc/8.3.1.lua:1\;/share/modules/.mfiles/Core/contrib-modules.lua:1\;/share/modules/.mfiles/Core/StdEnv.lua:1\;/share/modules/.mfiles/Core/libevent/2.1.12.lua:1\;/share/modules/.mfiles/Core/ncurses/6.2.lua:1\;/share/modules/.mfiles/Core/tmux/3.3a.lua:1\;/share/modules/.mfiles/Core/singularity/4.1.2.lua:1;' export '__LMOD_REF_COUNT__LMFILES_;' '_LMFILES_=/share/modules/.mfiles/Core/gcc/8.3.1.lua:/share/modules/.mfiles/Core/contrib-modules.lua:/share/modules/.mfiles/Core/StdEnv.lua:/share/modules/.mfiles/Core/libevent/2.1.12.lua:/share/modules/.mfiles/Core/ncurses/6.2.lua:/share/modules/.mfiles/Core/tmux/3.3a.lua:/share/modules/.mfiles/Core/singularity/4.1.2.lua;' export '_LMFILES_;' '_ModuleTable001_=X01vZHVsZVRhYmxlXz17WyJNVHZlcnNpb24iXT0zLFsiY19yZWJ1aWxkVGltZSJdPWZhbHNlLFsiY19zaG9ydFRpbWUiXT1mYWxzZSxkZXB0aFQ9e30sZmFtaWx5PXt9LG1UPXtTdGRFbnY9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL1N0ZEVudi5sdWEiLFsiZnVsbE5hbWUiXT0iU3RkRW52IixbImxvYWRPcmRlciJdPTMscHJvcFQ9e30sWyJzdGFja0RlcHRoIl09MCxbInN0YXR1cyJdPSJhY3RpdmUiLFsidXNlck5hbWUiXT0iU3RkRW52Iix9LFsiY29udHJpYi1tb2R1bGVzIl09e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL2NvbnRyaWItbW9kdWxlcy5sdWEiLFsiZnVsbE5hbWUiXT0iY29udHJpYi1tb2R1bGVzIixbImxvYWRPcmRl;' export '_ModuleTable001_;' '_ModuleTable002_=ciJdPTIscHJvcFQ9e30sWyJzdGFja0RlcHRoIl09MSxbInN0YXR1cyJdPSJhY3RpdmUiLFsidXNlck5hbWUiXT0iY29udHJpYi1tb2R1bGVzIix9LGdjYz17WyJmbiJdPSIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0NvcmUvZ2NjLzguMy4xLmx1YSIsWyJmdWxsTmFtZSJdPSJnY2MvOC4zLjEiLFsibG9hZE9yZGVyIl09MSxwcm9wVD17fSxbInN0YWNrRGVwdGgiXT0xLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJnY2MvOC4zLjEiLH0sbGliZXZlbnQ9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL2xpYmV2ZW50LzIuMS4xMi5sdWEiLFsiZnVsbE5hbWUiXT0ibGliZXZlbnQvMi4xLjEyIixbImxvYWRPcmRlciJdPTQscHJvcFQ9e30sWyJyZWZf;' export '_ModuleTable002_;' '_ModuleTable003_=Y291bnQiXT0xLFsic3RhY2tEZXB0aCJdPTEsWyJzdGF0dXMiXT0iYWN0aXZlIixbInVzZXJOYW1lIl09ImxpYmV2ZW50Iix9LG5jdXJzZXM9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL25jdXJzZXMvNi4yLmx1YSIsWyJmdWxsTmFtZSJdPSJuY3Vyc2VzLzYuMiIsWyJsb2FkT3JkZXIiXT01LHByb3BUPXt9LFsicmVmX2NvdW50Il09MSxbInN0YWNrRGVwdGgiXT0xLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJuY3Vyc2VzIix9LHNpbmd1bGFyaXR5PXtbImZuIl09Ii9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQ29yZS9zaW5ndWxhcml0eS80LjEuMi5sdWEiLFsiZnVsbE5hbWUiXT0ic2luZ3VsYXJpdHkvNC4xLjIiLFsibG9hZE9yZGVyIl09;' export '_ModuleTable003_;' '_ModuleTable004_=Nyxwcm9wVD17fSxbInN0YWNrRGVwdGgiXT0wLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJzaW5ndWxhcml0eSIsfSx0bXV4PXtbImZuIl09Ii9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQ29yZS90bXV4LzMuM2EubHVhIixbImZ1bGxOYW1lIl09InRtdXgvMy4zYSIsWyJsb2FkT3JkZXIiXT02LHByb3BUPXt9LFsic3RhY2tEZXB0aCJdPTAsWyJzdGF0dXMiXT0iYWN0aXZlIixbInVzZXJOYW1lIl09InRtdXgiLH0sfSxtcGF0aEE9eyIvc2hhcmUvY29udHJpYi1tb2R1bGVzLy5tZmlsZXMvQ29yZSIsIi9zaGFyZS9jb250cmliLW1vZHVsZXMvLm1maWxlcy9MaWJyYXJpZXMtYW5kLVBhY2thZ2VzIiwiL3NoYXJlL2NvbnRyaWItbW9kdWxlcy8ubWZpbGVzL1Rvb2xz;' export '_ModuleTable004_;' '_ModuleTable005_=IiwiL3NoYXJlL2NvbnRyaWItbW9kdWxlcy8ubWZpbGVzL09wZW4tTVBJIiwiL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db21waWxlci9nY2MvOC4zLjEiLCIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0NvcmUiLCIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0FNRCIsIi9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvTlZJRElBIiwiIiwiL3NoYXJlL21vZHVsZXMvbW9kdWxlZmlsZXMvTGludXgiLCIvc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9Db3JlIiwiL3NoYXJlL21vZHVsZXMvbG1vZC9sbW9kL21vZHVsZWZpbGVzL0NvcmUiLH0sWyJzeXN0ZW1CYXNlTVBBVEgiXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlOi9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQU1EOi9zaGFyZS9tb2R1;' export '_ModuleTable005_;' '_ModuleTable006_=bGVzLy5tZmlsZXMvTlZJRElBOjovc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9MaW51eDovc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9Db3JlOi9zaGFyZS9tb2R1bGVzL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIix9;' export '_ModuleTable006_;' '_ModuleTable_Sz_=6;' export '_ModuleTable_Sz_;'
++ __LMOD_REF_COUNT_LOADEDMODULES='gcc/8.3.1:1;contrib-modules:1;StdEnv:1;libevent/2.1.12:1;ncurses/6.2:1;tmux/3.3a:1;singularity/4.1.2:1'
++ export __LMOD_REF_COUNT_LOADEDMODULES
++ LOADEDMODULES=gcc/8.3.1:contrib-modules:StdEnv:libevent/2.1.12:ncurses/6.2:tmux/3.3a:singularity/4.1.2
++ export LOADEDMODULES
++ MODULEPATH=/share/contrib-modules/.mfiles/Core:/share/contrib-modules/.mfiles/Libraries-and-Packages:/share/contrib-modules/.mfiles/Tools:/share/contrib-modules/.mfiles/Open-MPI:/share/modules/.mfiles/Compiler/gcc/8.3.1:/share/modules/.mfiles/Core:/share/modules/.mfiles/AMD:/share/modules/.mfiles/NVIDIA::/share/modules/modulefiles/Linux:/share/modules/modulefiles/Core:/share/modules/lmod/lmod/modulefiles/Core
++ export MODULEPATH
++ __LMOD_REF_COUNT_PATH='/share/modules/singularity/4.1.2/libexec/singularity/bin:1;/share/modules/singularity/4.1.2/bin:1;/share/modules/ncurses/6.2/bin:1;/share/modules/libevent/2.1.12/bin:1;/share/modules/tmux/3.3a/bin:1;/home/sfantao/tools/bin:1;/home/sfantao/.local/bin:1;/home/sfantao/bin:1;/share/opt/slurm/current/bin:2;/share/opt/thera/bin:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
++ export __LMOD_REF_COUNT_PATH
++ PATH=/share/modules/singularity/4.1.2/libexec/singularity/bin:/share/modules/singularity/4.1.2/bin:/share/modules/ncurses/6.2/bin:/share/modules/libevent/2.1.12/bin:/share/modules/tmux/3.3a/bin:/home/sfantao/tools/bin:/home/sfantao/.local/bin:/home/sfantao/bin:/share/opt/slurm/current/bin:/share/opt/thera/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
++ export PATH
++ __LMOD_REF_COUNT__LMFILES_='/share/modules/.mfiles/Core/gcc/8.3.1.lua:1;/share/modules/.mfiles/Core/contrib-modules.lua:1;/share/modules/.mfiles/Core/StdEnv.lua:1;/share/modules/.mfiles/Core/libevent/2.1.12.lua:1;/share/modules/.mfiles/Core/ncurses/6.2.lua:1;/share/modules/.mfiles/Core/tmux/3.3a.lua:1;/share/modules/.mfiles/Core/singularity/4.1.2.lua:1'
++ export __LMOD_REF_COUNT__LMFILES_
++ _LMFILES_=/share/modules/.mfiles/Core/gcc/8.3.1.lua:/share/modules/.mfiles/Core/contrib-modules.lua:/share/modules/.mfiles/Core/StdEnv.lua:/share/modules/.mfiles/Core/libevent/2.1.12.lua:/share/modules/.mfiles/Core/ncurses/6.2.lua:/share/modules/.mfiles/Core/tmux/3.3a.lua:/share/modules/.mfiles/Core/singularity/4.1.2.lua
++ export _LMFILES_
++ _ModuleTable001_=X01vZHVsZVRhYmxlXz17WyJNVHZlcnNpb24iXT0zLFsiY19yZWJ1aWxkVGltZSJdPWZhbHNlLFsiY19zaG9ydFRpbWUiXT1mYWxzZSxkZXB0aFQ9e30sZmFtaWx5PXt9LG1UPXtTdGRFbnY9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL1N0ZEVudi5sdWEiLFsiZnVsbE5hbWUiXT0iU3RkRW52IixbImxvYWRPcmRlciJdPTMscHJvcFQ9e30sWyJzdGFja0RlcHRoIl09MCxbInN0YXR1cyJdPSJhY3RpdmUiLFsidXNlck5hbWUiXT0iU3RkRW52Iix9LFsiY29udHJpYi1tb2R1bGVzIl09e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL2NvbnRyaWItbW9kdWxlcy5sdWEiLFsiZnVsbE5hbWUiXT0iY29udHJpYi1tb2R1bGVzIixbImxvYWRPcmRl
++ export _ModuleTable001_
++ _ModuleTable002_=ciJdPTIscHJvcFQ9e30sWyJzdGFja0RlcHRoIl09MSxbInN0YXR1cyJdPSJhY3RpdmUiLFsidXNlck5hbWUiXT0iY29udHJpYi1tb2R1bGVzIix9LGdjYz17WyJmbiJdPSIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0NvcmUvZ2NjLzguMy4xLmx1YSIsWyJmdWxsTmFtZSJdPSJnY2MvOC4zLjEiLFsibG9hZE9yZGVyIl09MSxwcm9wVD17fSxbInN0YWNrRGVwdGgiXT0xLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJnY2MvOC4zLjEiLH0sbGliZXZlbnQ9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL2xpYmV2ZW50LzIuMS4xMi5sdWEiLFsiZnVsbE5hbWUiXT0ibGliZXZlbnQvMi4xLjEyIixbImxvYWRPcmRlciJdPTQscHJvcFQ9e30sWyJyZWZf
++ export _ModuleTable002_
++ _ModuleTable003_=Y291bnQiXT0xLFsic3RhY2tEZXB0aCJdPTEsWyJzdGF0dXMiXT0iYWN0aXZlIixbInVzZXJOYW1lIl09ImxpYmV2ZW50Iix9LG5jdXJzZXM9e1siZm4iXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlL25jdXJzZXMvNi4yLmx1YSIsWyJmdWxsTmFtZSJdPSJuY3Vyc2VzLzYuMiIsWyJsb2FkT3JkZXIiXT01LHByb3BUPXt9LFsicmVmX2NvdW50Il09MSxbInN0YWNrRGVwdGgiXT0xLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJuY3Vyc2VzIix9LHNpbmd1bGFyaXR5PXtbImZuIl09Ii9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQ29yZS9zaW5ndWxhcml0eS80LjEuMi5sdWEiLFsiZnVsbE5hbWUiXT0ic2luZ3VsYXJpdHkvNC4xLjIiLFsibG9hZE9yZGVyIl09
++ export _ModuleTable003_
++ _ModuleTable004_=Nyxwcm9wVD17fSxbInN0YWNrRGVwdGgiXT0wLFsic3RhdHVzIl09ImFjdGl2ZSIsWyJ1c2VyTmFtZSJdPSJzaW5ndWxhcml0eSIsfSx0bXV4PXtbImZuIl09Ii9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQ29yZS90bXV4LzMuM2EubHVhIixbImZ1bGxOYW1lIl09InRtdXgvMy4zYSIsWyJsb2FkT3JkZXIiXT02LHByb3BUPXt9LFsic3RhY2tEZXB0aCJdPTAsWyJzdGF0dXMiXT0iYWN0aXZlIixbInVzZXJOYW1lIl09InRtdXgiLH0sfSxtcGF0aEE9eyIvc2hhcmUvY29udHJpYi1tb2R1bGVzLy5tZmlsZXMvQ29yZSIsIi9zaGFyZS9jb250cmliLW1vZHVsZXMvLm1maWxlcy9MaWJyYXJpZXMtYW5kLVBhY2thZ2VzIiwiL3NoYXJlL2NvbnRyaWItbW9kdWxlcy8ubWZpbGVzL1Rvb2xz
++ export _ModuleTable004_
++ _ModuleTable005_=IiwiL3NoYXJlL2NvbnRyaWItbW9kdWxlcy8ubWZpbGVzL09wZW4tTVBJIiwiL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db21waWxlci9nY2MvOC4zLjEiLCIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0NvcmUiLCIvc2hhcmUvbW9kdWxlcy8ubWZpbGVzL0FNRCIsIi9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvTlZJRElBIiwiIiwiL3NoYXJlL21vZHVsZXMvbW9kdWxlZmlsZXMvTGludXgiLCIvc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9Db3JlIiwiL3NoYXJlL21vZHVsZXMvbG1vZC9sbW9kL21vZHVsZWZpbGVzL0NvcmUiLH0sWyJzeXN0ZW1CYXNlTVBBVEgiXT0iL3NoYXJlL21vZHVsZXMvLm1maWxlcy9Db3JlOi9zaGFyZS9tb2R1bGVzLy5tZmlsZXMvQU1EOi9zaGFyZS9tb2R1
++ export _ModuleTable005_
++ _ModuleTable006_=bGVzLy5tZmlsZXMvTlZJRElBOjovc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9MaW51eDovc2hhcmUvbW9kdWxlcy9tb2R1bGVmaWxlcy9Db3JlOi9zaGFyZS9tb2R1bGVzL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIix9
++ export _ModuleTable006_
++ _ModuleTable_Sz_=6
++ export _ModuleTable_Sz_
++ : -s sh
+ eval
++ squeue --me
++ awk '{print $1}'
++ tail -n1
+ jobid=255941
+ Nodes=1
+ c=fe
+ MYMASKS=0xfe000000000000,0xfe00000000000000,0xfe0000,0xfe000000,0xfe,0xfe00,0xfe00000000,0xfe0000000000
++ pwd
+ mpicmd='srun         --jobid 255941         --mpi=pmi2         -p MI300x         --time 2:00:00         --mem 0         --exclusive         --threads-per-core=1         -c 16         -N 1         -n 8         --gpus 8         singularity exec             -B /var/spool/slurmd             -B /home/sfantao/lumi-ai-workflow-tests/rccltest/rocm642-mi300.runfolder:/workdir             -B /home/sfantao/lumi-ai/megatron:/megatron             --pwd /workdir             /home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif'
+ '[' 1 -eq 0 ']'
+ rm -rf run.sh
+ cat
+ chmod +x run.sh
+ srun --jobid 255941 --mpi=pmi2 -p MI300x --time 2:00:00 --mem 0 --exclusive --threads-per-core=1 -c 16 -N 1 -n 8 --gpus 8 singularity exec -B /var/spool/slurmd -B /home/sfantao/lumi-ai-workflow-tests/rccltest/rocm642-mi300.runfolder:/workdir -B /home/sfantao/lumi-ai/megatron:/megatron --pwd /workdir /home/sfantao/lumi-ai-workflow-tests/rccltest/megatron-lm-v25.9_gfx942.sif ./run.sh
+ tee res.log
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-7
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-7
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=7
+ RANK=7
+ export LOCAL_RANK=7
+ LOCAL_RANK=7
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 7 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-3
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-3
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=3
+ RANK=3
+ export LOCAL_RANK=3
+ LOCAL_RANK=3
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 3 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-5
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-5
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=5
+ RANK=5
+ export LOCAL_RANK=5
+ LOCAL_RANK=5
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 5 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-0
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-0
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=0
+ RANK=0
+ export LOCAL_RANK=0
+ LOCAL_RANK=0
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 0 = 0 ']'
+ echo Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-4
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-4
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=4
+ RANK=4
+ export LOCAL_RANK=4
+ LOCAL_RANK=4
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 4 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-2
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-2
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=2
+ RANK=2
+ export LOCAL_RANK=2
+ LOCAL_RANK=2
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 2 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-6
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-6
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=6
+ RANK=6
+ export LOCAL_RANK=6
+ LOCAL_RANK=6
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 6 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
/bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
+ export 'PMIX_MCA_psec=^munge'
+ PMIX_MCA_psec='^munge'
+ export NCCL_NET_PLUGIN=librccl-net.so
+ NCCL_NET_PLUGIN=librccl-net.so
+ export AITER_JIT_DIR=/tmp/my-aiter-jit-dir-1
+ AITER_JIT_DIR=/tmp/my-aiter-jit-dir-1
+ cd /megatron
++ echo TheraC16
++ cut -d, -f1
+ export MASTER_ADDR=TheraC16
+ MASTER_ADDR=TheraC16
+ export MASTER_PORT=45678
+ MASTER_PORT=45678
+ set -eox pipefail
+ export CUDA_DEVICE_MAX_CONNECTIONS=1
+ CUDA_DEVICE_MAX_CONNECTIONS=1
+ export PYTHONWARNINGS=ignore
+ PYTHONWARNINGS=ignore
+ export TRITON_ALWAYS_COMPILE=1
+ TRITON_ALWAYS_COMPILE=1
+ LR=1.5e-4
+ MIN_LR=1.5e-5
+ INIT_METHOD_STD=0.00747017
+ TRAIN_DATA=data/fineweb-10BT-BPE_text_document
+ MERGES=data/merges.txt
+ VOCAB=data/vocab.json
+ NLAYERS=56
+ NHIDDEN=6144
+ NHEADS=96
+ FFN_HIDDEN_SIZE=21504
+ SEQ_LEN=8192
+ NUM_QUERY_GROUPS=24
+ GLOBAL_BATCH_SIZE=512
+ FIXED_GPT_ARGS='     --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1     '
+ TP_SIZE=8
+ PP_SIZE=8
+ CP_SIZE=2
+ MICRO_BATCH_SIZE=1
+ TP_SIZE=4
+ PP_SIZE=2
+ CP_SIZE=1
+ MICRO_BATCH_SIZE=1
+ GPT_ARGS='     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations     '
+ CMD='     Megatron-LM/pretrain_gpt.py          --num-layers 56     --hidden-size 6144     --num-attention-heads 96     --ffn-hidden-size 21504     --max-position-embeddings 8192     --seq-length 8192     --train-iters 20     --tokenizer-type GPT2BPETokenizer     --vocab-file data/vocab.json     --merge-file data/merges.txt     --data-path data/fineweb-10BT-BPE_text_document     --global-batch-size 512     --disable-bias-linear     --init-method-std 0.00747017     --normalization RMSNorm     --seed 42     --untie-embeddings-and-output-weights     --swiglu     --attention-dropout 0     --hidden-dropout 0     --use-rotary-position-embeddings     --group-query-attention     --num-query-groups 24     --use-flash-attn     --eval-iters 5     --log-throughput     --log-progress     --log-params-norm     --log-interval 1     --optimizer adam     --adam-beta1 0.9     --adam-beta2 0.95     --adam-eps 1e-5     --lr 1.5e-4     --min-lr 1.5e-5     --lr-decay-style cosine     --clip-grad 1.0     --weight-decay 1e-1      	     --bf16     --attention-softmax-in-fp32     --accumulate-allreduce-grads-in-fp32     --distributed-timeout-minutes 10     --no-gradient-accumulation-fusion     --no-bias-swiglu-fusion     --use-distributed-optimizer     --tensor-model-parallel-size 4     --pipeline-model-parallel-size 2     --context-parallel-size 1     --sequence-parallel     --dataloader-type single     --num-workers 8     --micro-batch-size 1 	--recompute-activations          '
+ export RANK=1
+ RANK=1
+ export LOCAL_RANK=1
+ LOCAL_RANK=1
+ export LOCAL_WORLD_SIZE=8
+ LOCAL_WORLD_SIZE=8
+ export WORLD_SIZE=8
+ WORLD_SIZE=8
+ '[' 1 = 0 ']'
+ python -u Megatron-LM/pretrain_gpt.py --num-layers 56 --hidden-size 6144 --num-attention-heads 96 --ffn-hidden-size 21504 --max-position-embeddings 8192 --seq-length 8192 --train-iters 20 --tokenizer-type GPT2BPETokenizer --vocab-file data/vocab.json --merge-file data/merges.txt --data-path data/fineweb-10BT-BPE_text_document --global-batch-size 512 --disable-bias-linear --init-method-std 0.00747017 --normalization RMSNorm --seed 42 --untie-embeddings-and-output-weights --swiglu --attention-dropout 0 --hidden-dropout 0 --use-rotary-position-embeddings --group-query-attention --num-query-groups 24 --use-flash-attn --eval-iters 5 --log-throughput --log-progress --log-params-norm --log-interval 1 --optimizer adam --adam-beta1 0.9 --adam-beta2 0.95 --adam-eps 1e-5 --lr 1.5e-4 --min-lr 1.5e-5 --lr-decay-style cosine --clip-grad 1.0 --weight-decay 1e-1 --bf16 --attention-softmax-in-fp32 --accumulate-allreduce-grads-in-fp32 --distributed-timeout-minutes 10 --no-gradient-accumulation-fusion --no-bias-swiglu-fusion --use-distributed-optimizer --tensor-model-parallel-size 4 --pipeline-model-parallel-size 2 --context-parallel-size 1 --sequence-parallel --dataloader-type single --num-workers 8 --micro-batch-size 1 --recompute-activations
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
[WARNING  | transformer_engine.pytorch.dot_product_attention.utils]: Supported flash-attn versions are >= 2.1.1, <= 2.8.0.post2. Found flash-attn 2.8.3.
WARNING: one_logger package is required to enable e2e metrics tracking. please go to https://confluence.nvidia.com/display/MLWFO/Package+Repositories for details to install it
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
using world size: 8, data-parallel size: 1, context-parallel size: 1, hierarchical context-parallel sizes: Nonetensor-model-parallel size: 4, encoder-tensor-model-parallel size: 0, pipeline-model-parallel size: 2, encoder-pipeline-model-parallel size: 0, pipeline-model-parallel size: 2 
WARNING: overriding default arguments for tokenizer_type:GPT2BPETokenizer                        with tokenizer_type:GPT2BPETokenizer
WARNING: Please specify --split when using --data-path. Using legacy default value of "969, 30, 1"
WARNING: Setting args.overlap_p2p_comm and args.align_param_gather to False since non-interleaved schedule does not support overlapping p2p communication and aligned param AG
using torch.bfloat16 for parameters ...
------------------------ arguments ------------------------
  accumulate_allreduce_grads_in_fp32 .............. True
  adam_beta1 ...................................... 0.9
  adam_beta2 ...................................... 0.95
  adam_eps ........................................ 1e-05
  add_bias_linear ................................. False
  add_position_embedding .......................... True
  add_qkv_bias .................................... False
  adlr_autoresume ................................. False
  adlr_autoresume_interval ........................ 1000
  align_grad_reduce ............................... True
  align_param_gather .............................. False
  app_tag_run_name ................................ None
  app_tag_run_version ............................. 0.0.0
  apply_layernorm_1p .............................. False
  apply_query_key_layer_scaling ................... False
  apply_residual_connection_post_layernorm ........ False
  apply_rope_fusion ............................... True
  async_save ...................................... None
  async_tensor_model_parallel_allreduce ........... False
  attention_backend ............................... AttnBackend.auto
  attention_dropout ............................... 0.0
  attention_sink_k ................................ 0
  attention_softmax_in_fp32 ....................... True
  auto_detect_ckpt_format ......................... False
  barrier_with_L1_time ............................ True
  bert_binary_head ................................ True
  bert_embedder_type .............................. megatron
  bert_load ....................................... None
  bf16 ............................................ True
  bias_dropout_fusion ............................. True
  bias_gelu_fusion ................................ False
  bias_swiglu_fusion .............................. False
  biencoder_projection_dim ........................ 0
  biencoder_shared_query_context_model ............ False
  block_data_path ................................. None
  calculate_per_token_loss ........................ False
  check_for_nan_in_loss_and_grad .................. True
  check_for_spiky_loss ............................ False
  check_weight_hash_across_dp_replicas_interval ... None
  ckpt_assume_constant_structure .................. False
  ckpt_convert_format ............................. None
  ckpt_convert_save ............................... None
  ckpt_convert_update_legacy_dist_opt_format ...... False
  ckpt_format ..................................... torch_dist
  ckpt_fully_parallel_load ........................ False
  ckpt_fully_parallel_save ........................ True
  ckpt_fully_parallel_save_deprecated ............. False
  ckpt_step ....................................... None
  classes_fraction ................................ 1.0
  clip_grad ....................................... 1.0
  clone_scatter_output_in_embedding ............... True
  config_logger_dir ............................... 
  consumed_train_samples .......................... 0
  consumed_valid_samples .......................... 0
  context_parallel_size ........................... 1
  cp_comm_type .................................... ['p2p']
  create_attention_mask_in_dataloader ............. True
  cross_entropy_loss_fusion ....................... False
  data_args_path .................................. None
  data_cache_path ................................. None
  data_parallel_random_init ....................... False
  data_parallel_size .............................. 1
  data_path ....................................... ['data/fineweb-10BT-BPE_text_document']
  data_per_class_fraction ......................... 1.0
  data_sharding ................................... True
  dataloader_type ................................. single
  ddp_average_in_collective ....................... False
  ddp_bucket_size ................................. None
  decoder_first_pipeline_num_layers ............... None
  decoder_last_pipeline_num_layers ................ None
  decoder_num_layers .............................. None
  decoder_seq_length .............................. None
  decoupled_lr .................................... None
  decoupled_min_lr ................................ None
  decrease_batch_size_if_needed ................... False
  defer_embedding_wgrad_compute ................... False
  deprecated_use_mcore_models ..................... False
  deterministic_mode .............................. False
  dino_bottleneck_size ............................ 256
  dino_freeze_last_layer .......................... 1
  dino_head_hidden_size ........................... 2048
  dino_local_crops_number ......................... 10
  dino_local_img_size ............................. 96
  dino_norm_last_layer ............................ False
  dino_teacher_temp ............................... 0.07
  dino_warmup_teacher_temp ........................ 0.04
  dino_warmup_teacher_temp_epochs ................. 30
  disable_straggler_on_startup .................... False
  disable_te_fused_rope ........................... False
  dist_ckpt_format_deprecated ..................... None
  dist_ckpt_strictness ............................ assume_ok_unexpected
  distribute_saved_activations .................... False
  distributed_backend ............................. nccl
  distributed_timeout_minutes ..................... 10
  embedding_path .................................. None
  empty_unused_memory_level ....................... 0
  enable_ft_package ............................... False
  enable_one_logger ............................... True
  encoder_num_layers .............................. 56
  encoder_pipeline_model_parallel_size ............ 0
  encoder_seq_length .............................. 8192
  encoder_tensor_model_parallel_size .............. 0
  end_weight_decay ................................ 0.1
  eod_mask_loss ................................... False
  error_injection_rate ............................ 0
  error_injection_type ............................ transient_error
  eval_interval ................................... 1000
  eval_iters ...................................... 5
  evidence_data_path .............................. None
  exit_duration_in_mins ........................... None
  exit_interval ................................... None
  exit_on_missing_checkpoint ...................... False
  exit_signal_handler ............................. False
  expert_model_parallel_size ...................... 1
  expert_tensor_parallel_size ..................... 4
  ffn_hidden_size ................................. 21504
  finetune ........................................ False
  flash_decode .................................... False
  fp16 ............................................ False
  fp16_lm_cross_entropy ........................... False
  fp32_residual_connection ........................ False
  fp8 ............................................. None
  fp8_amax_compute_algo ........................... most_recent
  fp8_amax_history_len ............................ 1
  fp8_interval .................................... 1
  fp8_margin ...................................... 0
  fp8_param_gather ................................ False
  fp8_reduce_amax ................................. True
  fp8_weight_cache ................................ True
  fp8_weight_transpose_cache ...................... True
  fp8_wgrad ....................................... True
  fused_padded_mla_attention ...................... False
  global_batch_size ............................... 512
  gradient_accumulation_fusion .................... False
  group_query_attention ........................... True
  head_lr_mult .................................... 1.0
  hidden_dropout .................................. 0.0
  hidden_size ..................................... 6144
  hierarchical_context_parallel_sizes ............. None
  hybrid_attention_ratio .......................... 0.0
  hybrid_mlp_ratio ................................ 0.0
  hybrid_override_pattern ......................... None
  hysteresis ...................................... 2
  ict_head_size ................................... None
  ict_load ........................................ None
  img_h ........................................... 224
  img_w ........................................... 224
  indexer_batch_size .............................. 128
  indexer_log_interval ............................ 1000
  inference_batch_times_seqlen_threshold .......... -1
  inference_max_seq_length ........................ 2560
  init_method_std ................................. 0.00747017
  init_method_xavier_uniform ...................... False
  initial_loss_scale .............................. 4294967296
  iter_per_epoch .................................. 1250
  kv_channels ..................................... 64
  kv_lora_rank .................................... 32
  lazy_mpu_init ................................... None
  linear_cross_entropy_loss_fusion ................ False
  load ............................................ None
  local_rank ...................................... 0
  log_batch_size_to_tensorboard ................... False
  log_interval .................................... 1
  log_loss_scale_to_tensorboard ................... True
  log_memory_to_tensorboard ....................... False
  log_num_zeros_in_grad ........................... False
  log_params_norm ................................. True
  log_progress .................................... True
  log_straggler ................................... False
  log_throughput .................................. True
  log_timers_to_tensorboard ....................... False
  log_validation_ppl_to_tensorboard ............... False
  log_world_size_to_tensorboard ................... False
  logging_level ................................... None
  loss_scale ...................................... None
  loss_scale_window ............................... 1000
  lr .............................................. 0.00015
  lr_decay_iters .................................. None
  lr_decay_samples ................................ None
  lr_decay_style .................................. cosine
  lr_warmup_fraction .............................. None
  lr_warmup_init .................................. 0.0
  lr_warmup_iters ................................. 0
  lr_warmup_samples ............................... 0
  lr_wsd_decay_iters .............................. None
  lr_wsd_decay_samples ............................ None
  lr_wsd_decay_style .............................. exponential
  make_vocab_size_divisible_by .................... 128
  manual_gc ....................................... False
  manual_gc_eval .................................. True
  manual_gc_interval .............................. 0
  mask_factor ..................................... 1.0
  mask_prob ....................................... 0.15
  mask_type ....................................... random
  masked_softmax_fusion ........................... True
  max_position_embeddings ......................... 8192
  max_tokens_to_oom ............................... 12000
  memory_snapshot_path ............................ snapshot.pickle
  merge_file ...................................... data/merges.txt
  micro_batch_size ................................ 1
  microbatch_group_size_per_vp_stage .............. None
  min_loss_scale .................................. 1.0
  min_lr .......................................... 1.5e-05
  mmap_bin_files .................................. True
  mock_data ....................................... False
  moe_aux_loss_coeff .............................. 0.0
  moe_expert_capacity_factor ...................... None
  moe_extended_tp ................................. False
  moe_ffn_hidden_size ............................. 21504
  moe_grouped_gemm ................................ False
  moe_input_jitter_eps ............................ None
  moe_layer_freq .................................. 1
  moe_layer_recompute ............................. False
  moe_pad_expert_input_to_capacity ................ False
  moe_per_layer_logging ........................... False
  moe_permute_fusion .............................. False
  moe_router_bias_update_rate ..................... 0.001
  moe_router_enable_expert_bias ................... False
  moe_router_force_load_balancing ................. False
  moe_router_group_topk ........................... None
  moe_router_load_balancing_type .................. aux_loss
  moe_router_num_groups ........................... None
  moe_router_pre_softmax .......................... False
  moe_router_score_function ....................... softmax
  moe_router_topk ................................. 2
  moe_router_topk_scaling_factor .................. None
  moe_shared_expert_intermediate_size ............. None
  moe_shared_expert_overlap ....................... False
  moe_token_dispatcher_type ....................... allgather
  moe_token_drop_policy ........................... probs
  moe_use_legacy_grouped_gemm ..................... False
  moe_use_upcycling ............................... False
  moe_z_loss_coeff ................................ None
  multi_latent_attention .......................... False
  nccl_communicator_config_path ................... None
  no_load_optim ................................... None
  no_load_rng ..................................... None
  no_persist_layer_norm ........................... False
  no_save_optim ................................... None
  no_save_rng ..................................... None
  non_persistent_ckpt_type ........................ None
  non_persistent_global_ckpt_dir .................. None
  non_persistent_local_ckpt_algo .................. fully_parallel
  non_persistent_local_ckpt_dir ................... None
  non_persistent_save_interval .................... None
  norm_epsilon .................................... 1e-05
  normalization ................................... RMSNorm
  num_attention_heads ............................. 96
  num_channels .................................... 3
  num_classes ..................................... 1000
  num_dataset_builder_threads ..................... 1
  num_distributed_optimizer_instances ............. 1
  num_experts ..................................... None
  num_layers ...................................... 56
  num_layers_per_virtual_pipeline_stage ........... None
  num_query_groups ................................ 24
  num_workers ..................................... 8
  one_logger_async ................................ False
  one_logger_project .............................. megatron-lm
  one_logger_run_name ............................. None
  onnx_safe ....................................... None
  openai_gelu ..................................... False
  optimizer ....................................... adam
  output_bert_embeddings .......................... False
  overlap_grad_reduce ............................. False
  overlap_p2p_comm ................................ False
  overlap_p2p_comm_warmup_flush ................... False
  overlap_param_gather ............................ False
  overlap_param_gather_with_optimizer_step ........ False
  override_opt_param_scheduler .................... False
  params_dtype .................................... torch.bfloat16
  patch_dim ....................................... 16
  per_split_data_args_path ........................ None
  perform_initialization .......................... True
  pipeline_model_parallel_size .................... 2
  pipeline_model_parallel_split_rank .............. None
  position_embedding_type ......................... rope
  pretrained_checkpoint ........................... None
  profile ......................................... False
  profile_ranks ................................... [0]
  profile_step_end ................................ 12
  profile_step_start .............................. 10
  q_lora_rank ..................................... None
  qk_head_dim ..................................... 128
  qk_layernorm .................................... False
  qk_pos_emb_head_dim ............................. 64
  query_in_block_prob ............................. 0.1
  rampup_batch_size ............................... None
  rank ............................................ 0
  recompute_granularity ........................... selective
  recompute_method ................................ None
  recompute_num_layers ............................ None
  record_memory_history ........................... False
  renormalize_blend_weights ....................... False
  rerun_mode ...................................... disabled
  reset_attention_mask ............................ False
  reset_position_ids .............................. False
  retriever_report_topk_accuracies ................ []
  retriever_score_scaling ......................... False
  retriever_seq_length ............................ 256
  retro_add_retriever ............................. False
  retro_attention_gate ............................ 1
  retro_cyclic_train_iters ........................ None
  retro_encoder_attention_dropout ................. 0.1
  retro_encoder_hidden_dropout .................... 0.1
  retro_encoder_layers ............................ 2
  retro_num_neighbors ............................. 2
  retro_num_retrieved_chunks ...................... 2
  retro_project_dir ............................... None
  retro_verify_neighbor_count ..................... True
  rotary_base ..................................... 10000
  rotary_interleaved .............................. False
  rotary_percent .................................. 1.0
  rotary_scaling_factor ........................... 1.0
  rotary_seq_len_interpolation_factor ............. None
  s3_cache_path ................................... None
  sample_rate ..................................... 1.0
  save ............................................ None
  save_interval ................................... None
  scatter_gather_tensors_in_pipeline .............. True
  seed ............................................ 42
  seq_length ...................................... 8192
  sequence_parallel ............................... True
  sgd_momentum .................................... 0.9
  short_seq_prob .................................. 0.1
  skip_train ...................................... False
  skipped_train_samples ........................... 0
  spec ............................................ None
  split ........................................... 969, 30, 1
  squared_relu .................................... False
  standalone_embedding_stage ...................... False
  start_weight_decay .............................. 0.1
  straggler_ctrlr_port ............................ 65535
  straggler_minmax_count .......................... 1
  swiglu .......................................... True
  swin_backbone_type .............................. tiny
  tensor_model_parallel_size ...................... 4
  tensorboard_dir ................................. None
  tensorboard_log_interval ........................ 1
  tensorboard_queue_size .......................... 1000
  test_data_path .................................. None
  test_mode ....................................... False
  tiktoken_num_special_tokens ..................... 1000
  tiktoken_pattern ................................ None
  tiktoken_special_tokens ......................... None
  timing_log_level ................................ 0
  timing_log_option ............................... minmax
  titles_data_path ................................ None
  tokenizer_model ................................. None
  tokenizer_type .................................. GPT2BPETokenizer
  tp_comm_bootstrap_backend ....................... nccl
  tp_comm_bulk_dgrad .............................. True
  tp_comm_bulk_wgrad .............................. True
  tp_comm_overlap ................................. False
  tp_comm_overlap_ag .............................. True
  tp_comm_overlap_cfg ............................. None
  tp_comm_overlap_rs .............................. True
  tp_comm_overlap_rs_dgrad ........................ False
  tp_comm_split_ag ................................ True
  tp_comm_split_rs ................................ True
  train_data_path ................................. None
  train_iters ..................................... 20
  train_samples ................................... None
  train_sync_interval ............................. None
  transformer_impl ................................ transformer_engine
  transformer_pipeline_model_parallel_size ........ 2
  untie_embeddings_and_output_weights ............. True
  use_checkpoint_args ............................. False
  use_checkpoint_opt_param_scheduler .............. False
  use_cpu_initialization .......................... None
  use_dist_ckpt ................................... True
  use_dist_ckpt_deprecated ........................ False
  use_distributed_optimizer ....................... True
  use_flash_attn .................................. True
  use_legacy_models ............................... False
  use_mp_args_from_checkpoint_args ................ False
  use_one_sent_docs ............................... False
  use_pytorch_profiler ............................ False
  use_ring_exchange_p2p ........................... False
  use_rope_scaling ................................ False
  use_rotary_position_embeddings .................. True
  use_tokenizer_model_from_checkpoint_args ........ True
  use_torch_fsdp2 ................................. False
  use_tp_pp_dp_mapping ............................ False
  v_head_dim ...................................... 128
  valid_data_path ................................. None
  variable_seq_lengths ............................ False
  virtual_pipeline_model_parallel_size ............ None
  vision_backbone_type ............................ vit
  vision_pretraining .............................. False
  vision_pretraining_type ......................... classify
  vocab_extra_ids ................................. 0
  vocab_file ...................................... data/vocab.json
  vocab_size ...................................... None
  wandb_exp_name .................................. 
  wandb_project ................................... 
  wandb_save_dir .................................. 
  weight_decay .................................... 0.1
  weight_decay_incr_style ......................... constant
  wgrad_deferral_limit ............................ 0
  window_size ..................................... None
  world_size ...................................... 8
  yaml_cfg ........................................ None
-------------------- end of arguments ---------------------
INFO:megatron.core.num_microbatches_calculator:setting number of microbatches to constant 512
> building GPT2BPETokenizer tokenizer ...
 > padded vocab (size: 50257) with 431 dummy tokens (new size: 50688)
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
> initializing torch distributed ...
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank7]:[W1114 10:05:22.500365145 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 7]  using GPU 7 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank2]:[W1114 10:05:22.620225077 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 2]  using GPU 2 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank4]:[W1114 10:05:22.694866055 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 4]  using GPU 4 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank3]:[W1114 10:05:23.406559899 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 3]  using GPU 3 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank5]:[W1114 10:05:23.468374129 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 5]  using GPU 5 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[rank6]:[W1114 10:05:23.569959694 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 6]  using GPU 6 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
WARNING:megatron.core.rerun_state_machine:RerunStateMachine initialized in mode disabled
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
[Gloo] Rank 0 is connected to 0 peer ranks. Expected number of connected peer ranks is : 0
> initialized tensor model parallel with size 4
> initialized pipeline model parallel with size 2
> setting random seeds to 42 ...
> compiling dataset index builder ...
[rank1]:[W1114 10:05:23.652702742 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 1]  using GPU 1 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
make: Entering directory '/megatron/Megatron-LM/megatron/core/datasets'
make: Nothing to be done for 'default'.
make: Leaving directory '/megatron/Megatron-LM/megatron/core/datasets'
>>> done with dataset index builder. Compilation time: 0.035 seconds
> compiling and loading fused kernels ...
[rank0]:[W1114 10:05:23.691066321 ProcessGroupNCCL.cpp:5059] [PG ID 0 PG GUID 0 Rank 0]  using GPU 0 as device used by this process is currently unknown. This can potentially cause a hang if this rank to GPU mapping is incorrect. You can specify device_id in init_process_group() to force use of a particular device.
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re6
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re5
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re4
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re3
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re2
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re1
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
libibverbs: Warning: Driver bnxt_re does not support the kernel ABI of 8 (supports 1 to 1) for device /sys/class/infiniband/bnxt_re0
>>> done with compiling and loading fused kernels. Compilation time: 8.307 seconds
time to initialize megatron (seconds): 17.854
[after megatron is initialized] datetime: 2025-11-14 10:05:39 
building GPT model ...
 > number of parameters on (tensor, pipeline) model parallel rank (2, 0): 3513335808
 > number of parameters on (tensor, pipeline) model parallel rank (0, 1): 3513341952
 > number of parameters on (tensor, pipeline) model parallel rank (0, 0): 3513335808
INFO:megatron.core.distributed.distributed_data_parallel:Setting up DistributedDataParallel with config DistributedDataParallelConfig(grad_reduce_in_fp32=True, overlap_grad_reduce=False, overlap_param_gather=False, align_param_gather=False, use_distributed_optimizer=True, num_distributed_optimizer_instances=1, check_for_nan_in_grad=True, bucket_size=None, average_in_collective=False, fp8_param_gather=False)
INFO:megatron.core.distributed.param_and_grad_buffer:Number of buckets for gradient all-reduce / reduce-scatter: 1
Params for bucket 1 (3513341952 elements):
	module.decoder.layers.26.mlp.linear_fc1.weight
	module.decoder.layers.19.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.17.mlp.linear_fc1.weight
	module.decoder.layers.16.self_attention.linear_qkv.weight
	module.decoder.layers.8.mlp.linear_fc1.weight
	module.decoder.layers.3.mlp.linear_fc2.weight
	module.decoder.layers.26.self_attention.linear_proj.weight
	module.decoder.layers.23.mlp.linear_fc2.weight
	module.decoder.layers.19.self_attention.linear_qkv.weight
	module.decoder.layers.14.mlp.linear_fc2.weight
	module.decoder.layers.10.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.0.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.23.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.22.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.6.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.6.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.0.mlp.linear_fc1.weight
	module.decoder.layers.25.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.23.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.22.self_attention.linear_qkv.weight
	module.decoder.layers.14.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.8.self_attention.linear_qkv.weight
	module.decoder.layers.5.mlp.linear_fc2.weight
	module.decoder.layers.5.self_attention.linear_qkv.weight
	module.decoder.layers.4.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.self_attention.linear_qkv.weight
	module.decoder.layers.20.mlp.linear_fc2.weight
	module.decoder.layers.13.mlp.linear_fc1.weight
	module.decoder.layers.11.mlp.linear_fc2.weight
	module.decoder.layers.8.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.1.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.13.self_attention.linear_proj.weight
	module.decoder.layers.10.mlp.linear_fc2.weight
	module.decoder.layers.9.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.4.self_attention.linear_proj.weight
	module.decoder.layers.3.self_attention.linear_qkv.weight
	module.decoder.layers.1.self_attention.linear_qkv.weight
	module.decoder.final_layernorm.weight
	module.decoder.layers.20.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.16.mlp.linear_fc1.weight
	module.decoder.layers.11.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.2.mlp.linear_fc1.weight
	module.decoder.layers.16.self_attention.linear_proj.weight
	module.decoder.layers.26.mlp.linear_fc2.weight
	module.decoder.layers.19.mlp.linear_fc1.weight
	module.decoder.layers.17.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.1.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.19.self_attention.linear_proj.weight
	module.decoder.layers.12.self_attention.linear_qkv.weight
	module.decoder.layers.7.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.3.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.0.self_attention.linear_qkv.weight
	module.decoder.layers.26.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.24.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.22.mlp.linear_fc1.weight
	module.decoder.layers.15.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc1.weight
	module.decoder.layers.22.self_attention.linear_proj.weight
	module.decoder.layers.15.self_attention.linear_qkv.weight
	module.decoder.layers.9.self_attention.linear_qkv.weight
	module.decoder.layers.7.mlp.linear_fc2.weight
	module.decoder.layers.25.self_attention.linear_proj.weight
	module.decoder.layers.13.mlp.linear_fc2.weight
	module.decoder.layers.8.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.7.mlp.linear_fc1.weight
	module.decoder.layers.7.self_attention.linear_proj.weight
	module.decoder.layers.24.self_attention.linear_qkv.weight
	module.decoder.layers.21.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.5.mlp.linear_fc1.weight
	module.decoder.layers.4.mlp.linear_fc2.weight
	module.decoder.layers.21.self_attention.linear_qkv.weight
	module.decoder.layers.16.mlp.linear_fc2.weight
	module.decoder.layers.13.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.19.mlp.linear_fc2.weight
	module.decoder.layers.12.mlp.linear_fc1.weight
	module.decoder.layers.16.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.18.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.12.self_attention.linear_proj.weight
	module.output_layer.weight
	module.decoder.layers.27.self_attention.linear_qkv.weight
	module.decoder.layers.22.mlp.linear_fc2.weight
	module.decoder.layers.19.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.18.self_attention.linear_qkv.weight
	module.decoder.layers.15.mlp.linear_fc1.weight
	module.decoder.layers.6.mlp.linear_fc1.weight
	module.decoder.layers.5.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc2.weight
	module.decoder.layers.24.self_attention.linear_proj.weight
	module.decoder.layers.17.mlp.linear_fc2.weight
	module.decoder.layers.15.self_attention.linear_proj.weight
	module.decoder.layers.10.self_attention.linear_qkv.weight
	module.decoder.layers.22.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.10.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.3.mlp.linear_fc1.weight
	module.decoder.layers.25.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc1.weight
	module.decoder.layers.14.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.7.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.5.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.1.mlp.linear_fc2.weight
	module.decoder.layers.24.mlp.linear_fc1.weight
	module.decoder.layers.23.self_attention.linear_qkv.weight
	module.decoder.layers.21.self_attention.linear_proj.weight
	module.decoder.layers.14.self_attention.linear_qkv.weight
	module.decoder.layers.2.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.0.mlp.linear_fc2.weight
	module.decoder.layers.17.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.12.mlp.linear_fc2.weight
	module.decoder.layers.9.mlp.linear_fc2.weight
	module.decoder.layers.6.self_attention.linear_qkv.weight
	module.decoder.layers.4.self_attention.linear_qkv.weight
	module.decoder.layers.27.mlp.linear_fc1.weight
	module.decoder.layers.20.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.18.mlp.linear_fc1.weight
	module.decoder.layers.17.self_attention.linear_qkv.weight
	module.decoder.layers.12.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.11.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.15.mlp.linear_fc2.weight
	module.decoder.layers.27.self_attention.linear_proj.weight
	module.decoder.layers.20.self_attention.linear_qkv.weight
	module.decoder.layers.18.self_attention.linear_proj.weight
	module.decoder.layers.12.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.11.self_attention.linear_qkv.weight
	module.decoder.layers.8.self_attention.linear_proj.weight
	module.decoder.layers.3.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.1.self_attention.linear_proj.weight
	module.decoder.layers.8.mlp.linear_fc2.weight
	module.decoder.layers.6.self_attention.linear_proj.weight
	module.decoder.layers.4.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.26.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.15.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc1.weight
	module.decoder.layers.7.self_attention.linear_qkv.weight
	module.decoder.layers.26.self_attention.linear_qkv.weight
	module.decoder.layers.23.mlp.linear_fc1.weight
	module.decoder.layers.21.mlp.linear_fc2.weight
	module.decoder.layers.14.mlp.linear_fc1.weight
	module.decoder.layers.3.self_attention.linear_proj.weight
	module.decoder.layers.2.self_attention.linear_qkv.weight
	module.decoder.layers.2.self_attention.linear_proj.weight
	module.decoder.layers.24.mlp.linear_fc2.weight
	module.decoder.layers.23.self_attention.linear_proj.weight
	module.decoder.layers.14.self_attention.linear_proj.weight
	module.decoder.layers.6.mlp.linear_fc2.weight
	module.decoder.layers.5.self_attention.linear_proj.weight
	module.decoder.layers.0.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.2.mlp.linear_fc2.weight
	module.decoder.layers.27.mlp.linear_fc2.weight
	module.decoder.layers.24.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.20.mlp.linear_fc1.weight
	module.decoder.layers.18.mlp.linear_fc2.weight
	module.decoder.layers.17.self_attention.linear_proj.weight
	module.decoder.layers.13.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.11.mlp.linear_fc1.weight
	module.decoder.layers.10.self_attention.linear_proj.weight
	module.decoder.layers.1.mlp.linear_fc1.weight
	module.decoder.layers.20.self_attention.linear_proj.weight
	module.decoder.layers.13.self_attention.linear_qkv.weight
	module.decoder.layers.11.self_attention.linear_proj.weight
	module.decoder.layers.10.mlp.linear_fc1.weight
	module.decoder.layers.9.self_attention.linear_proj.weight
	module.decoder.layers.16.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.27.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.18.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.4.mlp.linear_fc1.weight
	module.decoder.layers.2.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.0.self_attention.linear_proj.weight
INFO:megatron.core.distributed.param_and_grad_buffer:Number of buckets for gradient all-reduce / reduce-scatter: 1
Params for bucket 1 (3513335808 elements):
	module.decoder.layers.25.mlp.linear_fc2.weight
	module.decoder.layers.15.self_attention.linear_proj.weight
	module.decoder.layers.11.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.6.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.6.mlp.linear_fc2.weight
	module.decoder.layers.22.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.11.self_attention.linear_qkv.weight
	module.decoder.layers.8.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc1.weight
	module.decoder.layers.19.mlp.linear_fc2.weight
	module.decoder.layers.14.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.7.mlp.linear_fc1.weight
	module.decoder.layers.6.self_attention.linear_qkv.weight
	module.decoder.layers.24.mlp.linear_fc1.weight
	module.decoder.layers.21.self_attention.linear_proj.weight
	module.decoder.layers.14.self_attention.linear_qkv.weight
	module.decoder.layers.6.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.6.self_attention.linear_proj.weight
	module.decoder.layers.5.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.1.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.19.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.17.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.12.mlp.linear_fc2.weight
	module.decoder.layers.5.mlp.linear_fc2.weight
	module.decoder.layers.27.mlp.linear_fc1.weight
	module.decoder.layers.20.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.18.mlp.linear_fc1.weight
	module.decoder.layers.3.mlp.linear_fc2.weight
	module.decoder.layers.1.mlp.linear_fc2.weight
	module.decoder.layers.27.self_attention.linear_proj.weight
	module.decoder.layers.20.self_attention.linear_qkv.weight
	module.decoder.layers.18.self_attention.linear_proj.weight
	module.decoder.layers.15.mlp.linear_fc2.weight
	module.decoder.layers.12.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.23.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.11.mlp.linear_fc1.weight
	module.decoder.layers.5.self_attention.linear_proj.weight
	module.decoder.layers.1.mlp.linear_fc1.weight
	module.decoder.layers.26.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.23.self_attention.linear_qkv.weight
	module.decoder.layers.15.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.11.self_attention.linear_proj.weight
	module.decoder.layers.9.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.8.mlp.linear_fc1.weight
	module.decoder.layers.5.self_attention.linear_qkv.weight
	module.decoder.layers.1.self_attention.linear_qkv.weight
	module.decoder.layers.26.self_attention.linear_qkv.weight
	module.decoder.layers.24.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc2.weight
	module.decoder.layers.14.mlp.linear_fc1.weight
	module.decoder.layers.2.self_attention.linear_qkv.weight
	module.decoder.layers.24.mlp.linear_fc2.weight
	module.decoder.layers.14.self_attention.linear_proj.weight
	module.decoder.layers.7.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.21.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.10.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.4.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.2.mlp.linear_fc2.weight
	module.decoder.layers.1.self_attention.linear_proj.weight
	module.decoder.layers.27.mlp.linear_fc2.weight
	module.decoder.layers.24.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.20.mlp.linear_fc1.weight
	module.decoder.layers.18.mlp.linear_fc2.weight
	module.decoder.layers.17.self_attention.linear_proj.weight
	module.decoder.layers.13.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.4.self_attention.linear_qkv.weight
	module.decoder.layers.4.self_attention.linear_proj.weight
	module.decoder.layers.2.self_attention.linear_qkv.layer_norm_weight
	module.embedding.word_embeddings.weight
	module.decoder.layers.20.self_attention.linear_proj.weight
	module.decoder.layers.13.self_attention.linear_qkv.weight
	module.decoder.layers.3.self_attention.linear_qkv.weight
	module.decoder.layers.16.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.27.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.23.mlp.linear_fc1.weight
	module.decoder.layers.18.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.11.mlp.linear_fc2.weight
	module.decoder.layers.10.mlp.linear_fc2.weight
	module.decoder.layers.26.mlp.linear_fc1.weight
	module.decoder.layers.23.self_attention.linear_proj.weight
	module.decoder.layers.17.mlp.linear_fc1.weight
	module.decoder.layers.16.self_attention.linear_qkv.weight
	module.decoder.layers.26.self_attention.linear_proj.weight
	module.decoder.layers.14.mlp.linear_fc2.weight
	module.decoder.layers.11.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.8.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.7.mlp.linear_fc2.weight
	module.decoder.layers.0.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.22.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.10.mlp.linear_fc1.weight
	module.decoder.layers.10.self_attention.linear_qkv.weight
	module.decoder.layers.7.self_attention.linear_qkv.weight
	module.decoder.layers.25.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.22.self_attention.linear_qkv.weight
	module.decoder.layers.14.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.0.mlp.linear_fc2.weight
	module.decoder.layers.25.self_attention.linear_qkv.weight
	module.decoder.layers.20.mlp.linear_fc2.weight
	module.decoder.layers.13.mlp.linear_fc1.weight
	module.decoder.layers.5.mlp.linear_fc1.weight
	module.decoder.layers.4.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.19.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.13.self_attention.linear_proj.weight
	module.decoder.layers.2.mlp.linear_fc1.weight
	module.decoder.layers.23.mlp.linear_fc2.weight
	module.decoder.layers.20.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.19.self_attention.linear_qkv.weight
	module.decoder.layers.16.mlp.linear_fc1.weight
	module.decoder.layers.9.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.3.self_attention.linear_proj.weight
	module.decoder.layers.1.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.16.self_attention.linear_proj.weight
	module.decoder.layers.26.mlp.linear_fc2.weight
	module.decoder.layers.17.mlp.linear_fc2.weight
	module.decoder.layers.12.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.9.mlp.linear_fc2.weight
	module.decoder.layers.8.mlp.linear_fc2.weight
	module.decoder.layers.3.mlp.linear_fc1.weight
	module.decoder.layers.23.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.12.self_attention.linear_qkv.weight
	module.decoder.layers.26.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.22.mlp.linear_fc1.weight
	module.decoder.layers.17.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.15.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.2.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.25.mlp.linear_fc1.weight
	module.decoder.layers.22.self_attention.linear_proj.weight
	module.decoder.layers.15.self_attention.linear_qkv.weight
	module.decoder.layers.8.self_attention.linear_qkv.weight
	module.decoder.layers.7.self_attention.linear_proj.weight
	module.decoder.layers.6.mlp.linear_fc1.weight
	module.decoder.layers.4.mlp.linear_fc1.weight
	module.decoder.layers.3.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.25.self_attention.linear_proj.weight
	module.decoder.layers.13.mlp.linear_fc2.weight
	module.decoder.layers.5.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.0.mlp.linear_fc1.weight
	module.decoder.layers.0.self_attention.linear_qkv.weight
	module.decoder.layers.24.self_attention.linear_proj.weight
	module.decoder.layers.21.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.19.mlp.linear_fc1.weight
	module.decoder.layers.17.self_attention.linear_qkv.weight
	module.decoder.layers.7.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.0.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.16.mlp.linear_fc2.weight
	module.decoder.layers.21.self_attention.linear_qkv.weight
	module.decoder.layers.19.self_attention.linear_proj.weight
	module.decoder.layers.13.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.10.self_attention.linear_proj.weight
	module.decoder.layers.4.mlp.linear_fc2.weight
	module.decoder.layers.2.self_attention.linear_proj.weight
	module.decoder.layers.24.self_attention.linear_qkv.weight
	module.decoder.layers.12.mlp.linear_fc1.weight
	module.decoder.layers.10.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.9.self_attention.linear_qkv.weight
	module.decoder.layers.9.self_attention.linear_proj.weight
	module.decoder.layers.0.self_attention.linear_proj.weight
	module.decoder.layers.16.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.18.self_attention.linear_qkv.layer_norm_weight
	module.decoder.layers.12.self_attention.linear_proj.weight
	module.decoder.layers.9.mlp.linear_fc1.weight
	module.decoder.layers.3.mlp.linear_fc1.layer_norm_weight
	module.decoder.layers.27.self_attention.linear_qkv.weight
	module.decoder.layers.22.mlp.linear_fc2.weight
	module.decoder.layers.18.self_attention.linear_qkv.weight
	module.decoder.layers.15.mlp.linear_fc1.weight
	module.decoder.layers.8.self_attention.linear_proj.weight
INFO:megatron.core.optimizer:Setting up optimizer with config OptimizerConfig(optimizer='adam', lr=0.00015, min_lr=1.5e-05, decoupled_lr=None, decoupled_min_lr=None, weight_decay=0.1, fp16=False, bf16=True, params_dtype=torch.bfloat16, loss_scale=None, initial_loss_scale=4294967296, min_loss_scale=1.0, loss_scale_window=1000, hysteresis=2, adam_beta1=0.9, adam_beta2=0.95, adam_eps=1e-05, sgd_momentum=0.9, use_distributed_optimizer=True, overlap_param_gather_with_optimizer_step=False, clip_grad=1.0, log_num_zeros_in_grad=False, barrier_with_L1_time=True, timers=<megatron.core.timers.Timers object at 0x7fb860637ca0>, config_logger_dir='')
 > number of parameters on (tensor, pipeline) model parallel rank (3, 1): 3513341952
 > number of parameters on (tensor, pipeline) model parallel rank (2, 1): 3513341952
 > number of parameters on (tensor, pipeline) model parallel rank (1, 1): 3513341952
 > number of parameters on (tensor, pipeline) model parallel rank (1, 0): 3513335808
 > number of parameters on (tensor, pipeline) model parallel rank (3, 0): 3513335808
INFO:megatron.core.optimizer_param_scheduler:> learning rate decay style: cosine
[after model, optimizer, and learning rate scheduler are built] datetime: 2025-11-14 10:05:39 
> building train, validation, and test datasets ...
 > datasets target sizes (minimum size):
    train:      10240
    validation: 2560
    test:       2560
INFO:megatron.core.datasets.blended_megatron_dataset_config:Let split_matrix = [(0, 0.969), (0.969, 0.999), (0.999, 1.0)]
> building train, validation, and test datasets for GPT ...
INFO:megatron.core.datasets.blended_megatron_dataset_builder:Building dataset splits with cls=GPTDataset, sizes=(10240, 2560, 2560), and config=GPTDatasetConfig(random_seed=42, sequence_length=8192, blend=(['data/fineweb-10BT-BPE_text_document'], None), blend_per_split=None, renormalize_blend_weights=False, split='969, 30, 1', split_matrix=[(0, 0.969), (0.969, 0.999), (0.999, 1.0)], num_dataset_builder_threads=1, path_to_cache=None, mmap_bin_files=True, mock=False, tokenizer=<megatron.training.tokenizer.tokenizer._GPT2BPETokenizer object at 0x7fb860637cd0>, reset_position_ids=False, reset_attention_mask=False, eod_mask_loss=False, create_attention_mask=True, drop_last_partial_validation_sequence=True, add_extra_token_to_sequence=True, s3_cache_path=None)
INFO:megatron.core.datasets.indexed_dataset:Load the _IndexReader from data/fineweb-10BT-BPE_text_document.idx
INFO:megatron.core.datasets.indexed_dataset:	Extract the sequence lengths
INFO:megatron.core.datasets.indexed_dataset:	Extract the sequence pointers
INFO:megatron.core.datasets.indexed_dataset:	Extract the document indices
INFO:megatron.core.datasets.indexed_dataset:> total number of sequences: 14868862
INFO:megatron.core.datasets.indexed_dataset:> total number of documents: 14868862
INFO:megatron.core.datasets.gpt_dataset:Load the GPTDataset train indices
INFO:megatron.core.datasets.gpt_dataset:	Load the document index from 0b4a499e3b7bfe8584d66168ed9a36bb-GPTDataset-train-document_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the sample index from 0b4a499e3b7bfe8584d66168ed9a36bb-GPTDataset-train-sample_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the shuffle index from 0b4a499e3b7bfe8584d66168ed9a36bb-GPTDataset-train-shuffle_index.npy
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 1224922
INFO:megatron.core.datasets.gpt_dataset:Load the GPTDataset valid indices
INFO:megatron.core.datasets.gpt_dataset:	Load the document index from 6660ca599710d9d6ef8059dee80f55c7-GPTDataset-valid-document_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the sample index from 6660ca599710d9d6ef8059dee80f55c7-GPTDataset-valid-sample_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the shuffle index from 6660ca599710d9d6ef8059dee80f55c7-GPTDataset-valid-shuffle_index.npy
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 37395
INFO:megatron.core.datasets.gpt_dataset:Load the GPTDataset test indices
INFO:megatron.core.datasets.gpt_dataset:	Load the document index from 3f988362405ffce00fbacf054c541f30-GPTDataset-test-document_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the sample index from 3f988362405ffce00fbacf054c541f30-GPTDataset-test-sample_index.npy
INFO:megatron.core.datasets.gpt_dataset:	Load the shuffle index from 3f988362405ffce00fbacf054c541f30-GPTDataset-test-shuffle_index.npy
INFO:megatron.core.datasets.gpt_dataset:> total number of samples: 3763
> finished creating GPT datasets ...
[after dataloaders are built] datetime: 2025-11-14 10:05:41 
done with setup ...
(min, max) time across ranks (ms):
    model-and-optimizer-setup ......................: (341.12, 420.24)
    train/valid/test-data-iterators-setup ..........: (33.15, 1523.69)
training ...
[before the start of training step] datetime: 2025-11-14 10:05:41 
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_fwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
[aiter] type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
WARNING:aiter:type hints mismatch, override to --> rope_bwd_impl(arg0: torch.Tensor, arg1: torch.Tensor, arg2: torch.Tensor, arg3: int, arg4: bool, arg5: bool) -> None
Number of parameters in transformer layers in billions:  27.48
Number of parameters in embedding layers in billions: 0.62
Total number of parameters in billions: 28.11
Number of parameters in most loaded shard in billions: 3.5132
Number of parameters in other shards in billions: 3.4353
Activation memory footprint per transformer layer: 384.0 MB
Number of in-flight microbatches: 2
Theoretical memory footprints: weight and optimizer=60307.48 MB, activation=21528.03 MB, total=81835.51 MB

 [2025-11-14 10:13:12] iteration        1/      20 | consumed samples:          512 | elapsed time per iteration (ms): 450846.5 | mem usages: 0.4410 | throughput per GPU (TFLOP/s/GPU): 233.3 | learning rate: 1.491690E-04 | global batch size:   512 | lm loss: 1.099230E+01 | loss scale: 1.0 | grad norm: 62.521 | params norm: 1317.761 | number of skipped iterations:   0 | number of nan iterations:   0 |
[Rank 2] (after 1 iterations) memory (MB) | allocated: 60348.2529296875 | max allocated: 73750.25537109375 | reserved: 90892.0 | max reserved: 90892.0
[Rank 3] (after 1 iterations) memory (MB) | allocated: 60348.2529296875 | max allocated: 73750.25537109375 | reserved: 90892.0 | max reserved: 90892.0
[Rank 0] (after 1 iterations) memory (MB) | allocated: 60348.2529296875 | max allocated: 73751.56787109375 | reserved: 90894.0 | max reserved: 90894.0
[Rank 1] (after 1 iterations) memory (MB) | allocated: 60348.2529296875 | max allocated: 73750.25537109375 | reserved: 90892.0 | max reserved: 90892.0
[Rank 5] (after 1 iterations) memory (MB) | allocated: 60643.34765625 | max allocated: 74045.349609375 | reserved: 79368.0 | max reserved: 79368.0
[Rank 6] (after 1 iterations) memory (MB) | allocated: 60643.34765625 | max allocated: 74045.349609375 | reserved: 79368.0 | max reserved: 79368.0
[Rank 4] (after 1 iterations) memory (MB) | allocated: 60643.34765625 | max allocated: 74046.685546875 | reserved: 79368.0 | max reserved: 79368.0
[Rank 7] (after 1 iterations) memory (MB) | allocated: 60643.34765625 | max allocated: 74045.349609375 | reserved: 79368.0 | max reserved: 79368.0
 [2025-11-14 10:20:15] iteration        2/      20 | consumed samples:         1024 | elapsed time per iteration (ms): 423291.1 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 248.4 | learning rate: 1.466963E-04 | global batch size:   512 | lm loss: 1.171790E+01 | loss scale: 1.0 | grad norm: 970.893 | params norm: 1317.768 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 10:27:17] iteration        3/      20 | consumed samples:         1536 | elapsed time per iteration (ms): 421545.3 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 249.5 | learning rate: 1.426429E-04 | global batch size:   512 | lm loss: 1.205387E+01 | loss scale: 1.0 | grad norm: 110.961 | params norm: 1317.776 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 10:34:18] iteration        4/      20 | consumed samples:         2048 | elapsed time per iteration (ms): 420965.6 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 249.8 | learning rate: 1.371086E-04 | global batch size:   512 | lm loss: 1.501864E+01 | loss scale: 1.0 | grad norm: 137.909 | params norm: 1317.785 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 10:41:19] iteration        5/      20 | consumed samples:         2560 | elapsed time per iteration (ms): 421365.2 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 249.6 | learning rate: 1.302297E-04 | global batch size:   512 | lm loss: 1.141622E+01 | loss scale: 1.0 | grad norm: 17.405 | params norm: 1317.792 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 10:48:18] iteration        6/      20 | consumed samples:         3072 | elapsed time per iteration (ms): 419080.4 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.9 | learning rate: 1.221755E-04 | global batch size:   512 | lm loss: 1.435364E+01 | loss scale: 1.0 | grad norm: 92.220 | params norm: 1317.799 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 10:55:17] iteration        7/      20 | consumed samples:         3584 | elapsed time per iteration (ms): 418343.3 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 251.4 | learning rate: 1.131444E-04 | global batch size:   512 | lm loss: 1.557407E+01 | loss scale: 1.0 | grad norm: 80.153 | params norm: 1317.805 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:02:16] iteration        8/      20 | consumed samples:         4096 | elapsed time per iteration (ms): 419181.8 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.9 | learning rate: 1.033586E-04 | global batch size:   512 | lm loss: 9.912777E+00 | loss scale: 1.0 | grad norm: 21.762 | params norm: 1317.810 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:09:15] iteration        9/      20 | consumed samples:         4608 | elapsed time per iteration (ms): 419295.2 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.8 | learning rate: 9.305933E-05 | global batch size:   512 | lm loss: 9.801585E+00 | loss scale: 1.0 | grad norm: 9.969 | params norm: 1317.814 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:16:15] iteration       10/      20 | consumed samples:         5120 | elapsed time per iteration (ms): 419414.1 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.7 | learning rate: 8.250000E-05 | global batch size:   512 | lm loss: 9.692838E+00 | loss scale: 1.0 | grad norm: 4.981 | params norm: 1317.816 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:23:14] iteration       11/      20 | consumed samples:         5632 | elapsed time per iteration (ms): 419469.4 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.7 | learning rate: 7.194067E-05 | global batch size:   512 | lm loss: 9.549048E+00 | loss scale: 1.0 | grad norm: 4.964 | params norm: 1317.818 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:30:13] iteration       12/      20 | consumed samples:         6144 | elapsed time per iteration (ms): 419234.8 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.8 | learning rate: 6.164135E-05 | global batch size:   512 | lm loss: 9.318695E+00 | loss scale: 1.0 | grad norm: 4.955 | params norm: 1317.820 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:37:13] iteration       13/      20 | consumed samples:         6656 | elapsed time per iteration (ms): 419363.6 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.8 | learning rate: 5.185564E-05 | global batch size:   512 | lm loss: 9.084155E+00 | loss scale: 1.0 | grad norm: 4.698 | params norm: 1317.820 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:44:12] iteration       14/      20 | consumed samples:         7168 | elapsed time per iteration (ms): 418969.1 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 251.0 | learning rate: 4.282450E-05 | global batch size:   512 | lm loss: 8.871639E+00 | loss scale: 1.0 | grad norm: 4.412 | params norm: 1317.821 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:51:11] iteration       15/      20 | consumed samples:         7680 | elapsed time per iteration (ms): 419212.6 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.9 | learning rate: 3.477029E-05 | global batch size:   512 | lm loss: 8.693085E+00 | loss scale: 1.0 | grad norm: 4.369 | params norm: 1317.821 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 11:58:10] iteration       16/      20 | consumed samples:         8192 | elapsed time per iteration (ms): 419055.3 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.9 | learning rate: 2.789135E-05 | global batch size:   512 | lm loss: 8.547236E+00 | loss scale: 1.0 | grad norm: 4.402 | params norm: 1317.821 | number of skipped iterations:   0 | number of nan iterations:   0 |
 [2025-11-14 12:05:09] iteration       17/      20 | consumed samples:         8704 | elapsed time per iteration (ms): 419152.3 | mem usages: 0.4430 | throughput per GPU (TFLOP/s/GPU): 250.9 | learning rate: 2.235706E-05 | global batch size:   512 | lm loss: 8.424495E+00 | loss scale: 1.0 | grad norm: 4.336 | params norm: 1317.821 | number of skipped iterations:   0 | number of nan iterations:   0 |
slurmstepd: error: *** STEP 255941.18 ON TheraC16 CANCELLED AT 2025-11-14T12:05:16 DUE TO TIME LIMIT ***
srun: error: TheraC16: tasks 0-7: Terminated
srun: Force Terminated StepId=255941.18
+ exit 0
