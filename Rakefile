desc "Run all tasks"
task all: [:doc, :r2ddi, :quest]

desc "Copy CSV documentation"
task :doc do
  system "cp doc/doc_csv/* import/soep-test/"
end

task :r2ddi_test do
  system "cd r2ddi/soep-test ; Rscript run.R"
  system "cp -r r2ddi/soep-test/de/* non-utf8/"
  system "recode l1...utf8 r2ddi/soep-test/de/*"
  system "recode l1...utf8 r2ddi/soep-test/en/*"
  system "cp -r r2ddi/soep-test/en/* import/soep-test/r2ddi/soep-test/v3/"
  system "cp -r r2ddi/soep-test/de/* import/soep-test/r2ddi/soep-test/v3/de/"
end

task :r2ddi_testl do
  system "cd r2ddi/soep-testl ; Rscript run.R"
  system "cp -r r2ddi/soep-testl/de/* non-utf8/"
  system "recode l1...utf8 r2ddi/soep-testl/de/*"
  system "recode l1...utf8 r2ddi/soep-testl/en/*"
  system "cp -r r2ddi/soep-testl/en/* import/soep-testl/r2ddi/soep-testl/v3/"
  system "cp -r r2ddi/soep-testl/de/* import/soep-testl/r2ddi/soep-testl/v3/de/"
end

desc "Run r2ddi"
task r2ddi: [:r2ddi_test, :r2ddi_testl]

desc "Copy new questionnaire format"
task :quest do
  system "cp -r doc/questions_de_QeDML/* import/soep-test/qedml"
end
