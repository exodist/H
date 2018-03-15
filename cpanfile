requires "perl" => "5.008000";

on 'test' => sub {
  requires "Test2::Tools::Tiny" => "1.302133";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Test::Pod" => "1.41";
};
