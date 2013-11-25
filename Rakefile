
namespace :import do
  task all: [:doc, :r2ddi]

  desc "Copy CSV documentation"
  task :doc do
    system "cp doc/doc_csv/* import/soep-test/"
  end

  desc "run r2ddi"
  task :r2ddi do
    system "cd r2ddi ; Rscript run.R"
    system "cp -r r2ddi/en/* import/soep-test/r2ddi/v3/"
  end
end

desc "Run all commands"
task import: "import:all"

