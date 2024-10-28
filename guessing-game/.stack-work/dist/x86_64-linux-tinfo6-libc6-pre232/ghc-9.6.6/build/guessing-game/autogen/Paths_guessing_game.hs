{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_guessing_game (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/bin"
libdir     = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/lib/x86_64-linux-ghc-9.6.6/guessing-game-0.1.0.0-5GfgrZgl4dkT15E3VpB5y-guessing-game"
dynlibdir  = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/lib/x86_64-linux-ghc-9.6.6"
datadir    = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/share/x86_64-linux-ghc-9.6.6/guessing-game-0.1.0.0"
libexecdir = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/libexec/x86_64-linux-ghc-9.6.6/guessing-game-0.1.0.0"
sysconfdir = "/workspaces/perso-2024b-EduardoPossani/guessing-game/.stack-work/install/x86_64-linux-tinfo6-libc6-pre232/76deedc6fbdc7ba2e13fa84b71ee91839a37f435d950e6a561723154e807aa1e/9.6.6/etc"

getBinDir     = catchIO (getEnv "guessing_game_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "guessing_game_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "guessing_game_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "guessing_game_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "guessing_game_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "guessing_game_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
