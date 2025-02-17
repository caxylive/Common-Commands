# Table of Contents:
1) [Robocopy](#robocopy)

# Robocopy
```cmd
robocopy "D:\SourceFolder" "H:\DestinationFolder" /E /IPG:200
```
## Summary of Options:
| Option | Effect |
|--------|--------|
|/E | Copies all subfolders|
|/IPG:10 | Slight throttling (Fast)|
|/IPG:50 | Medium throttling (Balanced)|
|/IPG:100| High throttling (Slow but cool)|
|/XO | Skip older files (overwrite only if newer)|
|/IS | Overwrite even if identical|
|/IT | Overwrite identical timestamps (force overwrite)|
|/XC | Skip existing files that have changed|
|/XN | Skip newer files in destination|
|/MIR | Exact mirror of source (deletes extra files)|
|/V | Verbose mode, shows skipped files in the log.|
|/TEE | Displays output both in CMD and in a log file.|
|/LOG:C:\copy_log.txt | (Optional) Saves output to a log file|
|/TS | Adds timestamps to each file copied|
|/FP | Shows full path of files being copied.|
|/ETA | Shows estimated time for each file.|
