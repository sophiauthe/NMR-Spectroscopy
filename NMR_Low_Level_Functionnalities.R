data_dir <- system.file("extra", package = "Rnmr1D")
RAWDIR <- file.path("SampleData", "NMR DATA")

procParams <- Spec1rProcpar
procParams$LOGFILE <- ""
procParams$VENDOR <- 'varian'
procParams$INPUT_SIGNAL <- 'fid'
procParams$LB <- 0.3
procParams$ZEROFILLING <- TRUE
procParams$ZFFAC <- 4
procParams$OPTPHC1 <- TRUE
procParams$TSP <- TRUE

metadata <- generateMetadata(RAWDIR, procParams)
metadata

ID <- 1
ACQDIR <- metadata$rawids[ID,1]
spec <- Spec1rDoProc(Input=ACQDIR,param=procParams)