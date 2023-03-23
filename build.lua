#!/usr/bin/env lua

--------------
-- Settings --
--------------

-- Set this to true to use a better compression algorithm for the sound driver.
-- Having this set to false will use an inferior compression algorithm that
-- results in an accurate ROM being produced.
local improved_sound_driver_compression = false

---------------------
-- End of settings --
---------------------

local common = require "build_tools.lua.common"

-- Obtain the paths to the native build tools for the current platform.
local tools, platform_directory = common.find_tools("s1p2bin", "fixpointer", "saxman")

-- Present an error message to the user if the build tools for their platform do not exist.
if not tools then
	print(string.format("\z
		Sorry, the build tools for your platform are outdated and need recompiling.\n\z
		\n\z
		You can find the source code in 'build_tools/source_code'.\n\z
		Once compiled, copy the executables to '%s'.\n\z
		\n\z
		We'd appreciate it if you could send us your executables in a pull request at\n\z
		https://github.com/sonicretro/s2disasm, so that other users don't have this\n\z
		problem in the future.", platform_directory))

	os.exit(false)
end

-- Delete old ROM.
-- os.remove("s2built.prev.bin")

-- Backup the most recent ROM.
-- os.rename("s2built.bin", "s2built.prev.bin")

-- Assemble the ROM.
local assemble_result = common.assemble_file("s2.asm", "s2built.bin", tools.as, "", tools.s1p2bin, improved_sound_driver_compression and "" or "-a", true)

if assemble_result == "crash" then
	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*         The assembler crashed. See above for more details.         *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
elseif assemble_result == "error" then
	for line in io.lines("s2.log") do
		print(line)
	end

	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*        There were build errors. See s2.log for more details.       *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
end

-- Correct some pointers and other data that we couldn't until after the ROM had been assembled.
os.execute(tools.fixpointer .. " s2.h s2built.bin   off_3A294 MapRUnc_Sonic 0x2D 0 4   word_728C_user Obj5F_MapUnc_7240 2 2 1")

-- Remove the header file, since we no longer need it.
os.remove("s2.h")

-- Correct the ROM's header with a proper checksum and end-of-ROM value.
common.fix_header("s2built.bin")

if assemble_result == "warning" then
	for line in io.lines("s2.log") do
		print(line)
	end

	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*       There were build warnings. See s2.log for more details.      *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
end

-- A successful build; we can quit now.
