cheatsheet do
  title 'Bitbake'
  docset_file_name 'bitbake'
  keyword 'bitbake'
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Bitbake cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Commands'

    entry do
      command 'bitbake <recipe>'
      name 'Build a recipe'
      notes 'Recipe can be a standard recipe or an image. This is equivalent to use `-c do_build`'
    end
    entry do
      command 'bitbake <recipe> -c listtasks' # Optional
      name 'List all recipe tasks' # A short name, can contain Markdown or HTML
    end
    entry do
      command 'bitbake <recipe> -c <task>'
      name 'Execute a recipe task'
      notes <<-'END'
      Example tasks:

        * `do_fetch`
        * `do_compile`
        * `do_install`
      END
    end
    entry do
      command 'bitbake -s'
      name 'Show current and preferred versions of all recipes'
    end
  end

  category do
    id 'Tasks'

    entry do
      name '`do_build`'
      notes 'Default task for a recipe - depends on all other normal tasks required to _build_ a recipe'
    end
    entry do
      name '`do_checkuri`'
      notes 'Validates the SRC_URI value'
    end
    entry do
      name '`do_checkuriall`'
      notes 'Validates the SRC_URI value for all recipes required to build a target'
    end
    entry do
      name '`do_clean`'
      notes 'Removes all output files for a target'
    end
    entry do
      name '`do_cleanall`'
      notes 'Removes all output files, shared state cache, and downloaded source files for a target'
    end
    entry do
      name '`do_cleansstate`'
      notes 'Removes all output files and shared state cache for a target'
    end
    entry do
      name '`do_compile`'
      notes 'Compiles the source in the compilation directory'
    end
    entry do
      name '`do_configure`'
      notes 'Configures the source by enabling and disabling any build-time and configuration options for the software being built'
    end
    entry do
      name '`do_devshell`'
      notes 'Starts a shell with the environment set up for development/debugging'
    end
    entry do
      name '`do_fetch`'
      notes 'Fetches the source code'
    end
    entry do
      name '`do_fetchall`'
      notes 'Fetches all remote sources required to build a target'
    end
    entry do
      name '`do_install`'
      notes 'Copies files from the compilation directory to a holding area'
    end
    entry do
      name '`do_listtasks`'
      notes 'Lists all defined tasks for a target'
    end
    entry do
      name '`do_package`'
      notes 'Analyzes the content of the holding area and splits it into subsets based on available packages and files'
    end
    entry do
      name '`do_package_qa`'
      notes 'Runs QA checks on packaged files'
    end
    entry do
      name '`do_package_qa_setscene`'
      notes 'Runs QA checks on packaged files (setscene version)'
    end
    entry do
      name '`do_package_setscene`'
      notes 'Analyzes the content of the holding area and splits it into subsets based on available packages and files (setscene version)'
    end
    entry do
      name '`do_package_write_rpm`'
      notes 'Creates the actual RPM packages and places them in the Package Feed area'
    end
    entry do
      name '`do_package_write_rpm_setscene`'
      notes 'Creates the actual RPM packages and places them in the Package Feed area (setscene version)'
    end
    entry do
      name '`do_packagedata`'
      notes 'Creates package metadata used by the build system to generate the final packages'
    end
    entry do
      name '`do_packagedata_setscene`'
      notes 'Creates package metadata used by the build system to generate the final packages (setscene version)'
    end
    entry do
      name '`do_patch`'
      notes 'Locates patch files and applies them to the source code'
    end
    entry do
      name '`do_populate_lic`'
      notes 'Writes license information for the recipe that is collected later when the image is constructed'
    end
    entry do
      name '`do_populate_lic_setscene`'
      notes 'Writes license information for the recipe that is collected later when the image is constructed (setscene version)'
    end
    entry do
      name '`do_populate_sysroot`'
      notes 'Copies a subset of files installed by `do_install` into the sysroot in order to make them available to other recipes'
    end
    entry do
      name '`do_populate_sysroot_setscene`'
      notes 'Copies a subset of files installed by `do_install` into the sysroot in order to make them available to other recipes (setscene version)'
    end
    entry do
      name '`do_unpack`'
      notes 'Unpacks the source code into a working directory'
    end
  end

  notes 'Thanks to [Kapeli](https://github.com/Kapeli) for their so useful tools'
end
