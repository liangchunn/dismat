all:
	@ if [[ ! -d out/ ]]; \
		then \
			mkdir out; \
	fi
	@ pandoc ./src/DisMatLectureNotes.md -s -o ./out/DisMatLectureNotes.pdf
	@ pandoc ./src/ProblemSheetAnswers.md -s -o ./out/ProblemSheetAnswers.pdf