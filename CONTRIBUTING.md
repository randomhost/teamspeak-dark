# Contributing

Thank you for willing to contribute to the "Dark" theme for TeamSpeak 3.

We wrote down some guidelines which should help you getting started.

## Table of Contents

* [Code of Conduct](#code-of-conduct)
* [How can I contribute?](#how-can-i-contribute)
  * [Reporting Bugs](#reporting-bugs)
  * [Suggesting Enhancements](#suggesting-enhancements)
* [Styleguides](#styleguides)
  * [Git Commit Messages](#git-commit-messages)


## Code of Conduct

Common sense dictates that "being nice" is a requirement for working together. But to be clear,
we wrote some guidelines in our [Code of Conduct](CODE_OF_CONDUCT.md).

## How can I contribute?

### Reporting Bugs

#### Before reporting an Issue

Before reporting an issue, please check the following list:

* **Check if the issue exists in the [latest version][1]**. It might have been fixed already and the
  versions obtained via TeamSpeak's built-in addon manager or the myTeamSpeak website are not always
  up-to-date.
* **Check the [previously reported issues][2].** If the issue is already known **and still open**,
  add a comment to the existing issue instead of opening a new one.

#### When reporting an Issue

When reporting an [issue on GitHub][2], explain the problem and include details to help people to
reproduce the problem:

* **Descriptive Title**  
    For example, *"Icons too small on 4k monitors"* is a better title than *"problem with icons"*.
* **Steps to reproduce**  
    Describe what you did and how you did it when the problem occurred. For example, it makes a
    difference whether you are referring to a *menu entry* or a *button on the toolbar* even though
    both trigger the same function.
* **Examples**  
    Screenshots are very helpful when dealing with design issues. If you know your way around source
    code, code samples may also prove to be helpful. When providing code samples, please use GitHub's
    [Markdown][3] syntax for formatting.
    
Include details about your configuration and environment:

* **Version Information**  
    You can get the addon version from TeamSpeak's option dialog under **Options** » **Addons** » **Themes**
    or **Options** » **Addons** » **Icon Packs** accordingly.
* **Operating System**  
    Some issues may only affect specific operating systems in specific versions. *Windows* would be
    a nice information but *Windows 10 with creator's update* would be even better.
* **Plugins**  
    Installed 3rd party plugins (i.e. not authored by *TeamSpeak Systems GmbH*) may cause side
    effects with themes so it would be helpful to know if any of those are installed. See
    **Options** » **Addons** » **Plugins** to see a list of enabled plugins.
    
    
### Suggesting Enhancements

#### Before suggesting an Enhancement

Before suggesting an enhancement, please check the following list:
 
* **Check if the enhancement is in the [latest version][1]**. It might have been added already and
  the versions obtained via TeamSpeak's built-in addon manager or the myTeamSpeak website are not
  always up-to-date.
* **Check the [previously suggested enhancements][2].** If the enhancement has already been suggested
  **and is still open**, add a comment to the existing issue instead of opening a new one.

#### When suggesting an Enhancement

When [suggesting an enhancement on GitHub][2], please provide the following details:

* **Descriptive Title**  
    For example, *"Add high resolution icons for 4k monitors"* is a better title than *"4k support"*.
* **Detailed Description**  
    Describe how you imagine the enhancement to look like in as many details as possible. When
    applicable, describe the current situation and why you think that your suggestion would work
    better than that.
* **Examples**  
    Graphical mock-ups are very helpful when dealing with design suggestions. It doesn't have to 
    look perfect. An image you threw together in PhotoShop or Gimp can help maintainers to
    understand what you are talking about. If you know your way around source code, code samples may
    also prove to be helpful. When providing code samples, please use GitHub's [Markdown][3] syntax
    for formatting.
* **Version Information**  
    You can get the addon version from TeamSpeak's option dialog under **Options** » **Addons** » **Themes**
    or **Options** » **Addons** » **Icon Packs** accordingly.

## Styleguides

### Git Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move image to..." not "Moves image to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line


[1]: https://github.com/randomhost/teamspeak-dark/releases/latest
[2]: https://github.com/randomhost/teamspeak-dark/issues
[3]: https://help.github.com/articles/basic-writing-and-formatting-syntax/#quoting-code
