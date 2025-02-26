# Automated Testing Script for C Programs

This repository contains a **Bash script** that automates the compilation, execution, and testing of a C program with multiple input test cases.

## 📌 Features
- **Compiles the C program** (`main.c`) using `gcc`
- **Automatically runs** test cases stored in the `input/` directory
- **Compares** the program's output with expected results in the `expected/` directory
- **Provides feedback** on passed or failed test cases with `diff` output for debugging

## 🚀 How to Use

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/CosminStamateAndrei/testcase_runner.git
cd testcase_runner
```

### 2️⃣ Place Your Files
- **Your C source file** should be named `main.c` (or update the script accordingly).
- **Input files** should be stored in the `input/` directory with the format:
- **Expected output files** should be in the `expected/` directory with the format:

### 3️⃣ Run the Script
Execute the run script:
```bash
./run.sh
```

## 📜 Script Details (`run.sh`)
The script follows these steps:
1. **Compiles** `main.c` using `gcc`
2. **Runs** the compiled program on all `input/*.in` files
3. **Saves** the outputs to the `results/` directory
4. **Compares** each output with the expected results in `expected/`
5. **Displays** which test cases passed or failed, showing differences for failed cases

## ✅ Example Output
```
Test case 0 passed! ✅
Test case 1 failed! ❌
2c2
<   -9   4   7
---
>   -9    4    7
Test case 2 passed! ✅
...
All test cases executed!
```

## 🛠 Troubleshooting
- **Compilation failed!** ❌  
  Check if `main.c` has errors and fix them before running the script.
- **Missing input or expected output files**  
  Ensure all test cases have corresponding `.in` and `.txt` files.

## 🤝 Contributing
Pull requests are welcome! If you find a bug or have suggestions, open an issue.

## 📄 License
This project is open-source and available under the **MIT License**.  
Feel free to modify and use it as needed.

## 👨‍💻 Author
Developed by **Cosmin**  
If you have any questions or suggestions, feel free to reach out!


