library(Rnmr1D)

RAWDIR <- file.path("SampleData", "SampleData")
CMDFILE <- file.path("CMDFile", "NP_macro_cmd_NMR_DATA.txt")
SAMPLEFILE <- file.path("Samples", "NMR_DATA_Samples.txt")

samples <- read.table(SAMPLEFILE, sep="\t", header=T,stringsAsFactors=FALSE)
samples

CMDTEXT <- readLines(CMDFILE)
CMDTEXT[grep("^#$", CMDTEXT, invert=TRUE)]