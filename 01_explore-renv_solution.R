# A little deja vú from one of our first tasks! --------------------------------
# Take some notes as you go along.
library(fs)
library(tidyverse)


# In which libraries does R search for packages? -------------------------------
# your personal computing environment may return one or more locations
.libPaths()


# What is your default library? ------------------------------------------------
.Library



# Confirm the library supplied is, in fact, the default library. ---------------
identical(.Library, .libPaths())
# if you have more than one result returned by .libPaths(), check one of them
# identical(.Library, .libPaths()[2])

# Huh? Maybe this is an symbolic link issue?
identical(path_real(.Library), path_real(.libPaths()))
# if more than one path
# identical(path_real(.Library), path_real(.libPaths()[2]))



# Create a tibble of all installed packages ------------------------------------
df_pkgs <- installed.packages() |>
  as_tibble()


# How many packages are installed? ---------------------------------------------
nrow(df_pkgs)


# Now lets do the same, after initiating renv! ------------------------
renv::init()

# After that finishes, go to the top of the document and got through it again. 
# What are the differences?


# If you have time to do more. -------------------------------------------------
# Try installing another package using renv::install.
# Can you tell how that is different from install.packages?

renv::install("psych")
