# Using Git
The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be
interpreted as described in [RFC 2119](http://www.ietf.org/rfc/rfc2119.txt).

-------------------------------------------------------------------------------

## Basics
Branching SHOULD follow [Vincent Driessen's model](http://nvie.com/posts/a-successful-git-branching-model/).

## Branches
### Main-stream branches
These are branches that are never deleted:

* `master`: represents a production ready version of the code base. Only
release branches SHOULD be merged into this branch and should always be
release ready.
* `development`: all new development should be done here. SHOULD only have
`feature` and `test` branches be merged into it.
    * The `development` branch can be created any time before the first
    release. Until then the `master` branch can be treated like the
    `development` branch would.

### Support branches
These are branches where actual work is done. They each have specific jobs:

* `test`: you're not working on a bug or a new feature, just playing or trying
something out. It may turn into a new feature, at which point it can be merged
into the `development` branch just like a feature branch (no need to rename
branch as a `feature` branch).
* `feature`: you're adding a new feature (adding a new page, updating
functionality, etc.)
* `hotfix`: you're fixing a bug on a `release` (alpha, beta bug) branch or the
`master` (production bug) branch.
* `release`: code updates for next release to production enviroment.

## Branch relationships
* `test` and `feature` branches are created from the `development` branch
since they're used for new code that's not part of production or a release.
They should always be merged back into the `development` branch.
* `hotfix` branches are used to fix bugs on any branch. Branch forked from
highest branch where containing the bug. For example, if it's a bug on
production, create the `hotfix` from the `master` branch. If it's just a bug
on the release branch, fork from there. Same for the `development` branch. It
is important to merge the `hotfix` branch back into child branches once merged
into parent. For example, you merge into `master`, now merge it into the
`release` and `development` branch. If you just merged into the `release`
branch you just have to merge into `development`.
* `release` branches are created when the `development` branch reaches a point
where it is almost ready for a release into production (you decide what this
means). At this point it is decided what version you're about to release (see
versioning.md for instructions on how to pick a version number). As soon as
the `release` branch is ready to be release it is merged into the `master`
branch and that merge commit (the commit created by the merge command) is
tagged with the version (same version from the branch name) with a "v" prefix.

## Naming conventions
* Branches:
    * Test branches: `test/what-are-you-testing`
    * Feature branches: `feature/feature-description`
    * Hotfix branches: `hotfix/bug-description`
    * Release branches: `release/version`

-------------------------------------------------------------------------------

## Releases
When a release branch is merged into master, that is the point when the master
branch should be tagged with the release. See [versioning.md](versioning.md)
for details on versioning. Version tags should be prefixed with a "v"
(v2.3.0, v4.1.4, etc.)

-------------------------------------------------------------------------------

## Examples
### Feature and Test branches
#### Creating a feature/test branch

```bash
git checkout development # or master if there have been no releases yet
git checkout -b feature/<DESCRIPTION> # or test/<DESCRIPTION>
```

#### Merging a feature/test branch into development
```bash
git merge --no-ff <FEATURE/TEST BRANCH>
git push origin development # or master if there have been no releases yet
```

### Hotfix branches
#### Creating a hotfix branch

```bash
git checkout master
git checkout -b hotfix/<DESCRIPTION>
```

#### Merging a hotfix branch into development and master
```bash
# start by going back into dev
git checkout development
git merge --no-ff <HOTFIX BRANCH>
git push origin development

# then into master
git checkout master
git merge --no-ff <HOTFIX BRANCH>
git tag <VERSION> # see versioning.md
git push origin master
git push origin master --tags
```

### Release branches
#### Creating a release branch
```bash
git checkout development # or master if there have been no releases yet
git checkout -b release/<VERSION> # see versioning.md
```

#### Merging and tagging a release branch into master
```bash
git merge --no-ff <RELEASE BRANCH>
git tag v<VERSION> # see versioning.md
git push origin master
git push origin master --tags
```

### Conflicts
#### Resolving merge conflicts
If there is a merge conflict when merging a support branch (test, feature,
hotfix, or release) into a mainstream branch (development and master), the
conflict should be resolved in the support branch by merging in the mainstream
branch into it first, and the merging the support branch back into the
mainstream one:

```bash
# let's say I have a feature/my-feature branch that conflict when merged into
# the development branch:
git checkout feature/my-feature
git merge development
# resolve conflicts here...
git add # the files you fixed
git commit
git push origin feature/my-feature
git checkout development
git merge feature/my-feature
git push origin development
```

-------------------------------------------------------------------------------

## Tips
* Merging support branch into master branch:
    1. Merge master branch into support branch: `git merge remotes/origin/master`
        * By merging `remotes/origin/master` you're always merging the most
            up-to-date master branch. Even if you're own master branch is
            behind.
    2. Merge support branch into master: `git merge --no-ff branch-name`

* Pulling down code from remote: `git pull --rebase`
    * Always include rebase flag.

