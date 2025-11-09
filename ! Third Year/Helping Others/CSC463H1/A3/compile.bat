@echo off
REM Compilation script for CSC463 Assignment 3
REM Runs pdflatex twice to resolve all references

echo ============================================
echo  CSC463H1 Assignment 3 - LaTeX Compilation
echo ============================================
echo.

cd /d "%~dp0"

echo [1/2] Running pdfLaTeX (first pass)...
pdflatex -interaction=nonstopmode CSC463_A3_Solutions.tex
echo.

echo [2/2] Running pdfLaTeX (second pass for references)...
pdflatex -interaction=nonstopmode CSC463_A3_Solutions.tex
echo.

echo ============================================
echo  Compilation Complete!
echo ============================================
echo.
echo Output: CSC463_A3_Solutions.pdf
echo.

REM Clean up auxiliary files (optional)
echo Cleaning up auxiliary files...
del /Q *.aux *.log *.out *.toc 2>nul

echo.
echo Done! Open CSC463_A3_Solutions.pdf to view your assignment.
echo.
pause
