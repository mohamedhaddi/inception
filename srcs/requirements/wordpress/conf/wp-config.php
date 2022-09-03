<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('DB_NAME') );

/** Database username */
define( 'DB_USER', getenv('DB_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('DB_USER_PASSWORD') );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '*.ON-HxHibQZx,0ubi -LKY.Gwvndtv87jBw;c^CG#Y_EQZ&$n|8v4LSW& V5|G|');
define('SECURE_AUTH_KEY',  '7impiL_zox8@E>rt*TwV[G`+,bbCt0Hh#jMvZUt^EKLItOG2Hj3*3W, :sMtr-i.');
define('LOGGED_IN_KEY',    'zQT|g*[.|(hg<QvN?LS0kCw3.21i<[Q^.dw_GE|]F~P?3+E+it<Ulw0*MSTJzB!K');
define('NONCE_KEY',        'a$|{K4)&E_%$<(bJg:j#Wn81T KNEwh5@g5bao}V:#!|ML:[*ZpWosS`DaX)(*AA');
define('AUTH_SALT',        'Rd4l?&5Z9{HkZ3{Bb#a )c+OH^9%$IZ440/x$36:WFh*vrS<pn[E;Ocdh~u/d`qu');
define('SECURE_AUTH_SALT', '~k9`XUFP+:iPA7:<Y-0x;-%GIvB(,*r:]U,mY t6Q<EOZ hco|%m5;W]8H~-YYnM');
define('LOGGED_IN_SALT',   'f#fsZURx+>x`{e^*7BO-%R>)P-9dS{@M?TmT45`eWR;:)g>`Qaf{bb1+E-MBpmmF');
define('NONCE_SALT',       'Y?O1.J0_TrjA0b`/O?FO0ZuuoP[jk_;<*nYoa]7H*;onNW9-deW(Qx}]?t9$9q3 ');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
