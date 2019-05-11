female(amy).
female(koy).
female(gul).
female(pen).
female(jun).
female(mitra).
female(lara).
female(rung).

male(ryan).
male(mike).
male(luke).
male(roy).
male(seri).
male(kim).
male(kom).
male(suki).
male(dang).

father_of_is_(pen, ryan).
father_of_is_(luke, ryan).
father_of_is_(jun, ryan).
father_of_is_(mitra, ryan).

father_of_is_(roy, mike).
father_of_is_(seri, mike).
father_of_is_(kim, mike).

father_of_is_(rung, roy).
father_of_is_(suki, roy).

father_of_is_(dang, kim).

mother_of_is_(pen, koy).
mother_of_is_(luke, koy).
mother_of_is_(jun, koy).
mother_of_is_(mitra, koy).

mother_of_is_(roy, gul).
mother_of_is_(seri, gul).
mother_of_is_(kim, gul).

mother_of_is_(rung, mitra).
mother_of_is_(suki, mitra).

mother_of_is_(dang, lara).

grandfather_of_is_(Child, Grandfather) :- male(Grandfather), father_of_is_(Child, Father), father_of_is_(Father, GF), Grandfather = GF.

grandmother_of_is_(Child, Grandmother) :- female(Grandmother), mother_of_is_(Child, Mother), mother_of_is_(Mother, GM), Grandmother = GM.

grandparent_of_is_(Child, Grandparent) :- grandfather_of_is_(Child, Grandparent) ; grandmother_of_is_(Child, Grandparent).

parent_of_is_(Child, Parent) :- father_of_is_(Child, Parent) ; mother_of_is_(Child, Parent).