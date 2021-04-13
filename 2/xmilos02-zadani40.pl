% 40. Zjištění, zdali se jedná o seznam,
%     ve kterém se pravidelně střídají kladná a záporná čísla.
%
% Autor: Tomáš Milostný (xmilos02)
%
% uloha40(SEZNAM)
% SEZNAM je seznamem čísel typu Integer různých od nuly

negative([]).
positive([]).
negative([H|T]) :- H < 0 , positive(T).
positive([H|T]) :- H > 0 , negative(T).

uloha40(List) :- positive(List).
uloha40(List) :- negative(List).
