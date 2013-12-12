
task all: [:doc, :r2ddi]

desc "Copy CSV documentation"
task :doc do
  system "cp doc/doc_csv/* import/soep-test/"
end

desc "run r2ddi"
task :r2ddi do
  system "cd r2ddi ; Rscript run.R"
  system "recode l1...utf8 r2ddi/de/*"
  system "recode l1...utf8 r2ddi/en/*"
  system "cp -r r2ddi/en/* import/soep-test/r2ddi/v3/"
  system "cp -r r2ddi/de/* import/soep-test/r2ddi/v3/de/"
end

