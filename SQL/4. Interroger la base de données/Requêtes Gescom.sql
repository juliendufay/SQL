/* Q1. Afficher dans l'ordre alphabétique et sur une seule colonne, les noms et prénoms des employés qui ont des enfants. Présenter d'abord ceux qui en ont le plus.*/
SELECT
    CONCAT(emp_lastname,' ', emp_firstname) AS Employé,
    emp_children As NB_enfants
FROM
    employees
ORDER BY
    emp_children
DESC
    ,
    emp_lastname ASC

/*Q2. Y-a-t-il des clients étrangers ? Afficher leur nom, prénom et pays de résidence.*/
SELECT
    cus_lastname,
    cus_firstname,
    cus_countries_id
FROM
    customers
WHERE
    cus_countries_id != 'FR'
/*Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays.*/

SELECT
    cus_city,
    cus_countries_id,
    cou_name
FROM
    customers
JOIN countries ON cou_id = cus_countries_id
ORDER BY
    cus_city ASC


/*Q4. Afficher le nom des clients dont les fiches ont été modifiées*/

SELECT
    cus_lastname,
    cus_update_date
FROM
    customers
WHERE
    cus_update_date IS NOT NULL

/*Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne est qu'il habite une ville genre 'divos'. Pouvez-vous l'aider ?*/

    SELECT
    cus_lastname,
    cus_firstname,
    cus_city
FROM
    customers
WHERE
    cus_city LIKE '%divo%'

/*Q6. Quel est le produit dont le prix de vente est le moins cher ? Afficher le prix, l'id et le nom du produit.*/
SELECT
    MIN(pro_price),
    pro_id,
   pro_name
FROM
    products


/*Q7. Lister les produits qui n'ont jamais été vendus*/


SELECT
    pro_id,
    pro_ref,
    pro_name
FROM
    products
WHERE
    pro_id NOT IN(
    SELECT
        orders_details.ode_pro_id
    FROM
        orders_details
)

/*Q8. Afficher les produits commandés par Madame Pikatchien. */

SELECT
    pro_id,
    pro_ref,
    pro_name,
    cus_id,
    ord_id,
    ode_id
FROM
    customers
JOIN orders ON ord_cus_id = cus_id
JOIN orders_details ON ode_ord_id = ord_id
JOIN products ON pro_id = ode_pro_id
WHERE
    cus_lastname = "Pikatchien"

/*Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés.*/

SELECT
    cat_id,
    cat_name,
    pro_name
FROM
    products
JOIN categories ON cat_id = pro_cat_id
ORDER BY
    cat_name ASC


/*Q10. Afficher l'organigramme du magasin de Compiègne Afficher le nom et prénom des employés, classés par ordre alphabétique, ainsi que celui de leur supérieur hiérarchique (et éventuellement leurs postes respectifs, si vous y parvenez).*/

SELECT
    CONCAT( e.emp_lastname,' ', e.emp_firstname ) AS Employees,
    CONCAT( Sup.emp_lastname,' ',Sup.emp_firstname ) AS Superieur,
    pos_libelle
   
FROM
    employees AS e

Join posts on pos_id = emp_pos_id

LEFT OUTER JOIN employees AS Sup
ON
    Sup.emp_id = e.emp_superior_id
WHERE
    e.emp_sho_id = 3 and 
    Sup.emp_sho_id = 3 
     order BY Employees, Superieur ASC

    /*Q11. Quel produit a été vendu avec la remise la plus élevée ? Afficherle numéro et le nom du produit, le numéro de commande, le numéro de ligne de commande, et le montant de la remise.*/ 
SELECT
    pro_id,
    pro_name,
    ode_id,
    ode_ord_id
FROM
    products
JOIN orders_details ON ode_pro_id = pro_id
ORDER BY
    ode_discount
DESC
LIMIT 1
    /* Q12. Combien y-a-t-il de clients canadiens ? Afficher dans une colonne intitulée 'Nb clients Canada'*/

SELECT
    COUNT(cus_countries_id) AS 'Nb clients Canada'
FROM
    customers
WHERE
    cus_countries_id = "CA"


/*Q13. Afficher le détail des commandes de 2020.*/
   SELECT
    ode_id,
    ode_unit_price,
    ode_discount,
    ode_quantity,
    ode_ord_id,
    ode_pro_id,
    ord_order_date
FROM
    orders_details
JOIN orders ON ode_ord_id = ord_id
WHERE
    YEAR(ord_order_date) = 2020
ORDER BY
    ode_ord_id


    /*Q14. Afficher les coordonnées des fournisseurs pour lesquels des commandes ont été passées.*/


SELECT
    IFNULL(pro_sup_id, sup_id),
    sup_name,
    sup_city,
    sup_contact,
    sup_address
FROM
    suppliers
JOIN products ON sup_id = pro_sup_id
GROUP BY
    pro_sup_id


    /*Q15. Quel est le chiffre d'affaires de 2020 ?*/
SELECT
    SUM(
        ode_unit_price -(
            ode_unit_price / 100 * ode_discount
        ) * ode_quantity
    )
FROM
    orders_details
JOIN orders ON ode_ord_id = ord_id
WHERE
    YEAR(ord_order_date) = 2020


/*Q16. Lister le total de chaque commande par total décroissant. Afficher le numéro de commande, la date, le total et le nom du client).*/
SELECT
    ord_id,
    cus_lastname,
    ord_order_date,
    ode_quantity,
    ANY_VALUE(
        (
            ode_unit_price -(
                ode_unit_price / 100 * ode_discount
            )
        ) * ode_quantity
    ) AS total
FROM
    orders
JOIN customers ON ord_cus_id = cus_id
JOIN orders_details ON ord_id = ode_ord_id
ORDER BY
    total
DESC

/*Q17. Quel est le montant du panier moyen ?*/


SELECT AVG( (ode_unit_price -( ode_unit_price / 100 * ode_discount ) )* ode_quantity ) AS paniermoy 
FROM orders_details 



/*Q18. La version 2020 du produit barb004 s'appelle désormais Camper et, bonne nouvelle, son prix subit une baisse de 10%. Mettre à jour la fiche de ce produit.*/

UPDATE  products
 set 
 pro_name = Camper,
 pro_price = pro_price / 1.10
 WHERE pro_id = 12


/*Q19. L'inflation en France l'année dernière a été de 1,1%. Appliquer cette augmentation à la gamme de parasols.*/

UPDATE products 
set pro_price = pro_price + (pro_price*1.1/100)

WHERE pro_id >= 25 
and pro_id <= 27

/*Q20. Supprimer les produits non vendus de la catégorie "Tondeuses électriques". Vous devez utiliser une sous-requête sans indiquer de valeurs de clés.*/

DELETE
FROM
    products
WHERE
    pro_id IN(
    SELECT
        pro_id
    FROM
        categories
    JOIN products ON pro_cat_id = cat_id
  
    where
        pro_cat_id = 9 AND cat_name LIKE "Tondeuses électriques"
)
