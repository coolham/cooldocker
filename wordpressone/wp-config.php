<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');
/** MySQL database username */
define('DB_USER', 'root');
/** MySQL database password */
define('DB_PASSWORD', 'root');
/** MySQL hostname */
define('DB_HOST', 'localhost');
/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');
/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'R*0Ib!#E=)OuzZ%a(z.USuy$lAI*gGl4b+KOa&{miaWK3-`2/>_F-|h.R]M<1vI~');
define('SECURE_AUTH_KEY',  'v3-tCaxXAd}/y6*U-5:<,^avc%wvpIEfnZA3DP&/0_nc{TttRTvH8a`5e-q%4ODP');
define('LOGGED_IN_KEY',    'Za/sh5Doie`t2|!cI,|~cJbT+qEY//|F[-?K]<X~v=$+<KILu|f/s3f(Ng()QC@|');
define('NONCE_KEY',        'Yby0tG&CQx4=2k~m?*/wx>6VP1$EX*08)u7Aj`f7uU+3nGO=4M y>WoBIS+av2oq');
define('AUTH_SALT',        'E)Wz!Le$Q*$D+bh*:YaumznYB>><Je#uWYoEvgJk~Px4eW?nu1=#Zm_L@G=X:Q(<');
define('SECURE_AUTH_SALT', 'EXZ<%H/}Z7s?dn>s!jYkF/d-wg|EQ~ti^a>F0d?;&HUu&pOkd-_+}Gt?^$:kuQaC');
define('LOGGED_IN_SALT',   '[{ln5@[%=k|EOQL;$)mr?L-kh6h+s^)2@JQ}xx}B|J@DI,SG@nl2=&)-|GIceygo');
define('NONCE_SALT',       '?E74-lC+8CP&9){g{y<-GZ>9I)h4F[vl@gxBQ|ji[BfLt7-3!l;N-FHJR`hfU)ka');

/**#@-*/
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';
/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);
/* That's all, stop editing! Happy blogging. */
/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

