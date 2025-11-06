-module(rna_transcription).

-export([to_rna/1]).

% -define(TRANSFORM, #{$G => $C, $C => $G, $T => $A, $A => $U}).
%
% to_rna(Strand) ->
%   [maps:get(Nucleotide, ?TRANSFORM) || Nucleotide <- Strand].

% ---

% transform(Nucleotide) ->
%   case Nucleotide of
%     $G -> $C;
%     $C -> $G;
%     $T -> $A;
%     $A -> $U
%   end.
%
% to_rna(Strand) -> 
%   [transform(Nucleotide) || Nucleotide <- Strand].

% ---

% to_rna($G) -> $C;
% to_rna($C) -> $G;
% to_rna($T) -> $A;
% to_rna($A) -> $U;
% to_rna(Strand) ->
%     [to_rna(Nucleotide) || Nucleotide <- Strand].

% ---

% to_rna([]) -> [];
% to_rna($G) -> "C";
% to_rna($C) -> "G";
% to_rna($T) -> "A";
% to_rna($A) -> "U";
% to_rna([H|Rest]) -> to_rna(H) ++ to_rna(Rest).

% ---

% to_rna(Strand) ->
%   lists:map(fun($G) -> $C;
%                ($C) -> $G;
%                ($T) -> $A;
%                ($A) -> $U
%             end, Strand).

% ---

to_rna(Strand) ->
  Replacement = lists:zip("GCTA", "CGAU"),
  [RNA || Nucleotide <- Strand, {DNA, RNA} <- Replacement, Nucleotide == DNA].
