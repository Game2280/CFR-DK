# CFR Decompiler Kit  

A **Windows Batch script** for easy decompilation of Java `.class` and `.jar` files using **[CFR (Class File Reader) 0.152](http://www.benf.org/other/cfr/)**.  

## Features  

- **Decompilation in a Nutshell** of `.class` or `.jar` files.  
- **Automated output** to a structured folder.  
- **Supports CFR 0.152** (latest stable version).  
- **No manual Java commands** — just type "decompile"!  

## Prerequisites  

- **Java Runtime Environment (JRE 8+)** installed.

## Installation  
1. **Download** the latest release (or clone this repo).  
2. **Unpack downloaded zip-archive** in the C:\CFR\.  
3. **Add** in the system variable Path C:\CFR\.  
4. **Open Terminal** in the any directory.
5. **Type** decompile [jar or class] [output folder] (output folder optional) 

## Example  
`decompile myjar.jar` | `decompile myjar.jar output`

**Output:**  
`.\output\  # All decompiled .java files`  
  
## Configuration  

Edit `decompile.bat` to modify CFR arguments (e.g., `--outputdir`, `--decodefinally`).  

## License  
CFR is © [Lee Benfield](https://github.com/leibnitz27/cfr), distributed under the [MIT License](https://opensource.org/licenses/MIT).  
This project (CFR Decompiler Kit) is a wrapper and not affiliated with the original authors of CFR.  

---  

### Notes  
- Adjust paths/commands if your setup differs.  
- For CFR updates, replace `cfr-0.152.jar` with a newer version (update the script if needed).  
- **Components**:  
  - `cfr-0.152.jar`: Developed by [Lee Benfield](https://github.com/leibnitz27/cfr).  
  - `decompile.bat`: Generated by AI (no third-party code used).

---

## Credits  
- CFR Decompiler: [Lee Benfield](https://github.com/leibnitz27/cfr) (MIT License).  
- Automation script (`decompile.bat`): Generated by the author using AI tools.  
