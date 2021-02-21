<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //^M      
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'snorthmo' );

/** MySQL database password */
define( 'DB_PASSWORD', 'snorthmo' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-svc:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I]P|z}[syfH-dwP9lbYI|}cHI)HbuGCPe>dosStyS_meQj~qUsv5DrB|}*kThp4)');
define('SECURE_AUTH_KEY',  ';~OTQev%2}>EG@8iAo-vS*-.+%+#z_QQAnn)TZ:?CUe7o<Iv`/1;RlqyN[E?YX4i');
define('LOGGED_IN_KEY',    'V#&$7DrsG#1P<*r0$Ruj<{A-?V){q_dYEr+ M?xLIc3^5n8yX+<b6EfMn893P>Mh');
define('NONCE_KEY',        'g!pnTZ#D;_ykjP.yRNViA~3,+g,`InPz/6,ER|[E }k$5H{SlGZC<[9$Rp:|K B!');
define('AUTH_SALT',        'c@0|bY-^(`l+aNVm4Ih0|OV@vM7#5QCJ]8w|+j{p4|jd`+l/{j_Tz$]8g(_|p!][');
define('SECURE_AUTH_SALT', 'N[iu&P]d_`V{|LB$-Uqh7WkS=7|mo|9c9x0ZZ^49(L@((j<+%Hl4yqf|h1(h xxh');
define('LOGGED_IN_SALT',   '^u-(/v6`oQ>l l<RQ((fc%r)ydb&FaOIp5lCCP^Qc(Ec?{f2|l~-C5c,I0|]~D1`');
define('NONCE_SALT',       '0-ZJEw<-+e(bGI#j$]]lD[]4w_p^*,yg4+`PlEmZ#u!k/|+vEMyZswft,YM)`5jl');

/**#@-*/

/**
 *  * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
