<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit677d4cefb09c1f8aee520b4cf3db42c4
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInit677d4cefb09c1f8aee520b4cf3db42c4', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit677d4cefb09c1f8aee520b4cf3db42c4', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit677d4cefb09c1f8aee520b4cf3db42c4::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
