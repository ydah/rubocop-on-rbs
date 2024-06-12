# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RuboCop::Cop::RBS::Style::EmptyArgument, :config do
  it 'registers an offense' do
    expect_offense(<<~RBS)
      class Foo
        def arg: -> void
                 ^{} Insert `()` when empty argument
        def block: ({a: 1}) { -> void } -> void
                              ^{} Insert `()` when empty argument
        def proc_arg: (^ -> void) -> void
                        ^{} Insert `()` when empty argument
        def proc_block: (^() { -> void } -> void) -> void
                               ^{} Insert `()` when empty argument
        def all: { -> ^{ -> void }-> void } -> void
                 ^{} Insert `()` when empty argument
                   ^{} Insert `()` when empty argument
                       ^{} Insert `()` when empty argument
                         ^{} Insert `()` when empty argument
        attr_reader attr: ^ -> void
                           ^{} Insert `()` when empty argument
      end
      CONST: ^ -> void
              ^{} Insert `()` when empty argument
      $global: ^ -> void
                ^{} Insert `()` when empty argument
      type typealias = ^ -> void
                        ^{} Insert `()` when empty argument
    RBS

    expect_correction(<<~RBS)
      class Foo
        def arg: ()-> void
        def block: ({a: 1}) { ()-> void } -> void
        def proc_arg: (^() -> void) -> void
        def proc_block: (^() { ()-> void } -> void) -> void
        def all: (){ ()-> ^(){ ()-> void }-> void } -> void
        attr_reader attr: ^() -> void
      end
      CONST: ^() -> void
      $global: ^() -> void
      type typealias = ^() -> void
    RBS
  end
end
