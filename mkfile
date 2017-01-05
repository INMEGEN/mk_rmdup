RMDUP_TARGETS = `{./targets}

rmdup:EV:	$RMDUP_TARGETS

results/rmdup/%.rmdup.bam:D:	data/%.bam
	mkdir -p `dirname $target`
	samtools rmdup $prereq \
	$target".build"
	&& mv $target".build" $target
	