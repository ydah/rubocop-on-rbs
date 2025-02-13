# frozen_string_literal: true

require 'rbs'

require_relative 'rbs/layout/comment_indentation'
require_relative 'rbs/layout/empty_lines_around_overloads'
require_relative 'rbs/layout/end_alignment'
require_relative 'rbs/layout/extra_spacing'
require_relative 'rbs/layout/indentation_width'
require_relative 'rbs/layout/overload_indentation'
require_relative 'rbs/layout/space_around_arrow'
require_relative 'rbs/layout/space_around_braces'
require_relative 'rbs/layout/space_before_colon'
require_relative 'rbs/layout/space_before_overload'
require_relative 'rbs/layout/trailing_whitespace'

require_relative 'rbs/lint/duplicate_overload'
require_relative 'rbs/lint/redundant_overload_type_params'
require_relative 'rbs/lint/syntax'
require_relative 'rbs/lint/type_params_arity'
require_relative 'rbs/lint/will_syntax_error'

require_relative 'rbs/style/block_return_boolish'
require_relative 'rbs/style/true_false'
require_relative 'rbs/style/classic_type'
require_relative 'rbs/style/optional_nil'
require_relative 'rbs/style/duplicated_type'
require_relative 'rbs/style/initialize_return_type'
require_relative 'rbs/style/merge_untyped'
