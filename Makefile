all:
	@ if [[ ! -d out/ ]]; \
		then \
			mkdir out; \
	fi
	@ cd src && pandoc DisMatLectureNotes.md -s -o ../out/DisMatLectureNotes.pdf && pandoc ProblemSheetAnswers.md -s -o ../out/ProblemSheetAnswers.pdf