# Cyber2_Prac_Ex
This repo contains all report of practical exercises in the course Cyber Security 2 at Tampere University

## Installing LaTeX

Follow the link here: https://www.latex-project.org/get/

NOTE: If you are using Window, I would recommend to install
Ubuntu (or other distributions you like) following
this link: https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl

I assume all the commands below would be run in the
Unix environment.

## Install necessary packages

Ensure that I installed below packages throught TeX distributions (TeX Live if you use Linux, MiKTeX if you use Windows, MacTeX if you use MacOS).

```
graphicx  
amsmath  
parskip  
hyperref  
datetime2  
biblatex
```

## Most common TeX syntax

### Create a new section
```tex
\section{title_here}
```

### Create a new subsection
```tex
\subsection{title_here}
```

### Bolding text
```tex
\textbf{text_here}
```

### Italicizing text
```tex
\emph{text_here}
```

### Insert picture
Ensure that the image file was stored in `figures` folder.

```tex
\begin{picture}
    \centering
    \includegraphics[width=\textwidth height=\textheight,keepaspectratio]{file_name}
    \caption{title_of_figure}\label{fig:variable_name}
\end{picture}
```

NOTE: the `variable_name` is used to refer the correspoding figure in other places with the command 
`\autoref{fig:variable_name}`.

### Adding references

The first step is to add bibliography into the `references.bib` file.

Depends on the type of source you found e.g online pages, academic articles, or books we have different types of entry needed to consider:
- Online websites: @misc
- Academic article: @article
- Book: @book

For example
```
@article{<variable_name>,
    author = {Ley, Michael},
    title = {DBLP: Some Lessons Learned},
    year = {2009},
    issue_date = {August 2009},
    publisher = {VLDB Endowment},
    volume = {2},
    number = {2},
    issn = {2150-8097},
    url = {https://doi.org/10.14778/1687553.1687577},
    doi = {10.14778/1687553.1687577},
    journal = {Proc. VLDB Endow.},
    month = {aug},
    pages = {1493–1500},
    numpages = {8}
    }

```

The above entry will be rendered as
```
Michael Ley. 2009. DBLP: some lessons learned. Proc. VLDB Endow. 2, 2 (August 2009), 1493–1500. https://doi.org/10.14778/1687553.1687577
```

NOTE: you can freely assign the `variable_name` for later citing by the command `\cite{variable_name}`. However, I think we should agree that the format of this naming convention as `type:short_name` e.g `article:dblp_lesson_learned`.

I think most of sources we will use is online articles. So the simple format for online sources is
```tex
@misc{online:short_name,
    title = {title_here},
    author = {author_here},
    url = {url_here},
    urldate = {yyyy-mm-dd} % the date we accessed, not the publishing date
}
```

If you find a academic paper needs to be cited, it will be easy to find its `BibTeX` citation format through [ACM library](https://dl.acm.org/). At the page of the article, choosing `export citation` and then choose `BibTeX`.

### Citing sources
Ensure that the entry with `variable_name` was added in `references.bib`.
```
\cite{variable_name}.
```

### Newline
Newline in LaTeX is `\\`.

For example
```tex
The first line.\\
The second line.
```
will be rendered as
```
The first line.
The second line.
```

If you type
```tex
% LaTeX code here
The first line.
The second line
```
it will be rendered as
```
The first line.The second line.
```

**NOTE**: please remember to wrap your text around 80 characters while
editting the report for better visual.

### Include TeX files
The idea here is that we organize each task in a separate TeX file stored
in the folder `tex`.

In order to insert those TeX files, we use the command
```tex
\include{file_path}
% in this case the path will be './tex/file_name'
```

For example
```tex
\include{./tex/task1.tex}
```

## Starting a new report
Run the following command to start a new folder for the practical exercise (if the folder for the corresponding exercise does not exist)
```bash
source starter.sh <folder_name> <number_of_tasks>
# <number_of_tasks> here is the total number of tasks we will
# do in the exercise.
```
For example,
```bash
source starter.sh XSS 7
```

NOTE: after running the above script, the current directory will be moved to the newly created folder.

## Git workflow
```shell
git pull --rebase
# edit, edit, edit
make
# ensure that no error is raised.
git add .
git commit -m <message>
# the message should start with topic title in []
# for example: if you are working on the task 5 of the XSS exercise
# you can create a message as "[XSS][task_5] first draft"
# the idea here is that it makes easier for us to know what is the target of
# a specific commit by only looking at the very first letters.
git pull --rebase
git push origin master
```