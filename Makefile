
all:
	rm -rf iclp-ws-dc-2025-proceedings.zip
	cd preface && \
	make all && \
	cp preface.pdf ../proceedings/iclp-ws-dc-2025/preface.pdf && \
	cd .. && \
	zip -r iclp-ws-dc-2025-proceedings.zip proceedings/

submission: all
	rm -rf iclp-ws-dc-2025-submission.zip iclp-ws-dc-2025-agreements.zip
	cd preface && \
	make all && \
	cp preface.pdf ../proceedings/iclp-ws-dc-2025/preface.pdf && \
	cd .. && \
	cd proceedings && \
	zip -r ../iclp-ws-dc-2025-submission.zip iclp-ws-dc-2025/ && \
	cd .. && \
	zip -r iclp-ws-dc-2025-agreements.zip agreements/