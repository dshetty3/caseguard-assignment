<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         ':wB*dg&Q2/;MJS$VPxd=`W&jCD^|!!y52*Gdni qHJ=5]r;o.oxwO+Iw;i@kH9xF' );
define( 'SECURE_AUTH_KEY',  'n_3Qll O/jq)^x87e wl=K~,*z2<la1A*ha88(;sP_3{}en[8Z@VSa~vw4/vP)Z+' );
define( 'LOGGED_IN_KEY',    'ko%.2l?VS-(ey=QwYqF^aHJ3dVT27De^s|ye`G)waK9WDFN{GJCbAm%`=Q`Q)l%]' );
define( 'NONCE_KEY',        'P4&2PI$R%gfgxiq2Q`XHyr(6E*@R<WJhV)=My2:NPI3%ZIIT,yV=C%GMPVuji!-j' );
define( 'AUTH_SALT',        'KlS>/ouk(QjBu??S?nF1rhH(LKV)&|xsph6u<A?k-B#s:wAN+wr<0I+2`3)XST[6' );
define( 'SECURE_AUTH_SALT', '@4Dijw_>0s&+Nb9WZOZ|uj;[```h3.yF.o^uK9V3*f*S=@:]m 4]o,y_@@qkzsiK' );
define( 'LOGGED_IN_SALT',   '0(cV ;*DYeOS5`8s-m7u8d=xD:<zI2`3:ZQkI+rGVwL5-EG`m}qh:y@!k}fZ*<fq' );
define( 'NONCE_SALT',       'V?X9qF]H*STX,9o>O:;R{i7.=6dcRWQ,[UI -}*5&Q`4:2u|>QFT/5Q.;&uZqv>.' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
