# typst-resume-template

Typstで履歴書/職務経歴書を生成するサンプル。

https://www.takeokunn.org/posts/fleeting/20250619103829-build_cv_resume_with_typst/

## Output PDF

- [resume/resume.pdf](resume/resume.pdf)
- [cv/cv.pdf](cv/cv.pdf)

## Usage

cv:

```console
$ cd cv/
$ nix build .
$ open result/cv.pdf
```

resume:

```console
$ cd resume/
$ nix build .
$ open result/resume.pdf
```

## Inspire by

- cv
  - [Nikudanngo/typst-ja-resume-template](https://github.com/Nikudanngo/typst-ja-resume-template)
  - [Typstで履歴書を書く - Qiita](https://qiita.com/Nikudanngo/items/ed9a452b5f63101fb26b)
- resume
  - [ShinoharaTa/typst-work-resume](https://github.com/ShinoharaTa/typst-work-resume)
  - [エンジニアは職務経歴書をTypstでビルドしよう - Zenn](https://zenn.dev/shino3/articles/a0c9eeb0d09c3a)
