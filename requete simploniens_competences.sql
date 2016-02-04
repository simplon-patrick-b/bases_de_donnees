SELECT *
FROM simploniens INNER JOIN competences_simploniens
ON simploniens.simp_id = competences_simploniens.simp_id
INNER JOIN competences 
ON competences_simploniens.comp_id = competences.comp_id ;
ORDER BY nom, prenom, desc