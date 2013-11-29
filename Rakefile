
task all: [:doc, :r2ddi, :recode]

desc "Copy CSV documentation"
task :doc do
  system "cp doc/doc_csv/* import/soep-test/"
end

desc "run r2ddi"
task :r2ddi do
  system "cd r2ddi ; Rscript run.R"
  system "cp -r r2ddi/en/* import/soep-test/r2ddi/v3/"
end

desc "Recode r2ddi files from latin1 to utf8"
task :recode do
  system "recode l1...utf8 import/soep-test/r2ddi/v3/*"
end

