INSERT INTO `SITE_DB`.`navigation_nodes` (node_name, node_link, navigation_id)
SELECT 'Posts', '/janitor/post/list', (SELECT id FROM `SITE_DB`.`navigation` WHERE handle = 'main-janitor')
WHERE '/janitor/post/list' NOT IN (
	SELECT node_link FROM `SITE_DB`.`navigation_nodes`
);