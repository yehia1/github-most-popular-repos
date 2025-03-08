use github_data;

CREATE TABLE programming_lang (
	language_id INT PRIMARY KEY AUTO_INCREMENT,
    language VARCHAR(255),
    num_repos INT
);

CREATE TABLE organizations_stars (
	organization_id INT PRIMARY KEY AUTO_INCREMENT,
    organization_name VARCHAR(255),
    total_stars INT
);

CREATE TABLE search_terms_relevance (
	search_term_id INT PRIMARY KEY AUTO_INCREMENT,
    search_term VARCHAR(255),
    relevance_score FLOAT
);

SELECT * FROM programming_lang LIMIT 5;
SELECT * FROM organizations_stars LIMIT 5;
SELECT * FROM search_terms_relevance LIMIT 5;

SELECT language, COUNT(*) FROM programming_lang GROUP BY language HAVING COUNT(*) > 1;
SELECT organization_name, COUNT(*) FROM organizations_stars GROUP BY organization_name HAVING COUNT(*) > 1;
SELECT search_term, COUNT(*) FROM search_terms_relevance GROUP BY search_term HAVING COUNT(*) > 1;

