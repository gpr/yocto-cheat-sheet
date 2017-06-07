cheatsheet do
  title 'Yocto'
  docset_file_name 'yocto'
  keyword 'yocto'
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Yocto cheat sheet'

  category do
    id 'Tools'

    entry do
      command 'yocto-bsp create <bsp-name> <karch>'
      name 'Create a BSP layer for arch <karch>'
      notes 'recipe can be package, image or virtual'
    end
    entry do
      command 'yocto-kernel <cmd>'
      name 'Modify and list Yocto BSP kernel config items and patches.'
      notes <<-'END'
      Sub-commands:

       * `config list`       List the modifiable set of bare kernel config options for a BSP
       * `config add`        Add or modify bare kernel config options for a BSP
       * `config rm`         Remove bare kernel config options from a BSP
       * `patch list`        List the patches associated with a BSP
       * `patch add`         Patch the Yocto kernel for a BSP
       * `patch rm`          Remove patches from a BSP
       * `feature list`      List the features used by a BSP
       * `feature add`       Have a BSP use a feature
       * `feature rm`        Have a BSP stop using a feature
       * `features list`     List the features available to BSPs
       * `feature describe`  Describe a particular feature
       * `feature create`    Create a new BSP-local feature
       * `feature destroy`   Remove a BSP-local feature
      END
    end
  end

  notes 'Thanks to [Kapeli](https://github.com/Kapeli) for their so useful tools'
end
