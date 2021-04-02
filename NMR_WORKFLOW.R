library(Rnmr1D)

RAWDIR <- file.path("SampleData", "NMR DATA")
CMDFILE <- file.path("CMDFile", "NP_macro_cmd_NMR_DATA.txt")
SAMPLEFILE <- file.path("Samples", "NMR_DATA_Samples_Orig.txt")

samples <- read.table(SAMPLEFILE, sep="\t", header=T,stringsAsFactors=FALSE)
samples

CMDTEXT <- readLines(CMDFILE)
CMDTEXT[grep("^#$", CMDTEXT, invert=TRUE)]

out <- Rnmr1D::doProcessing(RAWDIR, cmdfile=CMDFILE, samplefile=SAMPLEFILE, ncpu=detectCores())