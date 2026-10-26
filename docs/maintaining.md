# Maintaining the formula

1. Confirm that the upstream `lunar-phases` release tag exists.
2. Update `url` and `version` in `Formula/lunar-phases.rb`.
3. Run the formula checks from the repository root:

   ```sh
   brew style ./Formula/lunar-phases.rb
   brew audit --formula ./Formula/lunar-phases.rb
   brew install --build-from-source ./Formula/lunar-phases.rb
   brew test lunar-phases
   ```

4. Verify the installed CLI with `lunar_phases phases YEAR` and review the
   upstream changelog for any command or build changes.

The formula intentionally builds from source with CMake so the resulting
package uses the host compiler and Homebrew's standard installation prefix.
