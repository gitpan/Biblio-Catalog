use ExtUtils::MakeMaker;


# This is not the correct way to test, but "It Works! (tm)"
eval {require Text::BibTeX;};
die "I need Text::BibTeX. Please install it!\n" if $@;

WriteMakefile (
	       NAME         => q/Biblio::Catalog/,
	       EXE_FILES    => [ qw/bibtex2html/ ],
	       VERSION_FROM => q/Catalog.pm/,
	       PREREQ_PM    => {
				XML::DT      => '0.19',
				DB_File      => '1.804',
				Data::Dumper => '2.10',
				XML::XPath   => '1.12',
				#'Text::BibTeX' => ,
			       },
	      );
