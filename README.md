# CFR Decompiler Kit  

A **Windows Batch script** for easy decompilation of Java `.class` and `.jar` files using **[CFR (Class File Reader) 0.152](http://www.benf.org/other/cfr/)**.  

## Features  

- **One-click decompilation** of `.class` or `.jar` files.  
- **Automated output** to a structured folder.  
- **Supports CFR 0.152** (latest stable version).  
- **No manual Java commands**—just type "decompile"!  

## Prerequisites  

- **Java Runtime Environment (JRE 8+)** installed.
## Usage  

1. **Download** the latest release (or clone this repo).  
2. **Unpack downloaded zip-archive** in the C:\CFR\.  
3. **Add** in the system variable Path C:\CFR\.  
4. **Open Terminal** in the any directory.
5. **Type** decompile [jar or class] [output folder] (output folder optional) 

## Example  
Input:  
  myapp.jar  

Output:  
  ./output/  # All decompiled .java files  
  
## Configuration  

Edit `decompile.bat` to modify CFR arguments (e.g., `--outputdir`, `--decodefinally`).  

## License  

CFR is © [Lee Benfield](http://www.benf.org/). I am not the creator of CFR.

---  

### Notes:  
- Adjust paths/commands if your setup differs.  
- For CFR updates, replace `cfr-0.152.jar` with a newer version (update the script if needed).  
