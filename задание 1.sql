SELECT DISTINCT
  CASE WHEN name1 > name2 THEN name2 ELSE name1 end name1,
  CASE WHEN name1 < name2 THEN name2 ELSE name1 end name2
FROM (	
		SELECT  empl.NAME name1, em.NAME name2
		FROM
			EMPLOYEE empl,
			EMPLOYEE em
		WHERE
			empl.DEPARTMENT_ID = 10 and
			em.DEPARTMENT_ID = empl.DEPARTMENT_ID and
			em.POSITION != empl.POSITION) nam

