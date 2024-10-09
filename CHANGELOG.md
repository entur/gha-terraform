# Changelog

## [1.1.2](https://github.com/entur/gha-terraform/compare/v1.1.1...v1.1.2) (2024-10-09)


### Bug Fixes

* improve lint messages output ([#64](https://github.com/entur/gha-terraform/issues/64)) ([4b2a798](https://github.com/entur/gha-terraform/commit/4b2a798a1afa04a94f7655010f342539a6050f1d))


## [1.1.1](https://github.com/entur/gha-terraform/compare/v1.1.0...v1.1.1) (2024-10-08)


### Bug Fixes

* terraform fmt path ([#60](https://github.com/entur/gha-terraform/issues/60)) ([19ff31e](https://github.com/entur/gha-terraform/commit/19ff31e6be50126107961cc5cf5cc497ede240f8))

## [1.1.0](https://github.com/entur/gha-terraform/compare/v1.0.6...v1.1.0) (2024-09-03)


### Features

* new workflow apply ([#56](https://github.com/entur/gha-terraform/issues/56)) ([cace651](https://github.com/entur/gha-terraform/commit/cace651a2254bb072c53620a027ef005e521cec7))

## [1.0.6](https://github.com/entur/gha-terraform/compare/v1.0.5...v1.0.6) (2024-08-01)


### Bug Fixes

* make workflow run correct when triggered from merge ([4bfc4fb](https://github.com/entur/gha-terraform/commit/4bfc4fb69ae0d74cc32d39cf44e4bd4643282701))
* make workflow run correct when triggered from push event ([#52](https://github.com/entur/gha-terraform/issues/52)) ([16ebdbe](https://github.com/entur/gha-terraform/commit/16ebdbe8dca1a29fba56569397ee774499ce88f6))
* use correct name for output recerence ([b09789c](https://github.com/entur/gha-terraform/commit/b09789c10c61e2eebd5398a0c5945b1c1f4a2212))

## [1.0.5](https://github.com/entur/gha-terraform/compare/v1.0.4...v1.0.5) (2024-06-28)


### Bug Fixes

* make sure plan fail stops pipeline ([fe0c244](https://github.com/entur/gha-terraform/commit/fe0c2449c9f1f18814e8c391f5f4ede9f2f205d1))


## [1.0.4](https://github.com/entur/gha-terraform/compare/v1.0.3...v1.0.4) (2024-06-17)


### Bug Fixes

* input/output namings ([c6ea7c0](https://github.com/entur/gha-terraform/commit/c6ea7c0b1a82688619ba2bf3edbe4795a80c4f78))
* missing new required env ([4b32dae](https://github.com/entur/gha-terraform/commit/4b32dae2b55bf611e6978cb487217e68673dcac4))
* naming, prevent injection ++ ([#42](https://github.com/entur/gha-terraform/issues/42)) ([8194bbd](https://github.com/entur/gha-terraform/commit/8194bbd8cee7ec0003d3f8808a500ed23b159560))
* prd to dev env ([dae78bf](https://github.com/entur/gha-terraform/commit/dae78bfa281eb6278255b2679e4a4a27d303d81e))
* printout terraform version for easier debugging ([bb87dd1](https://github.com/entur/gha-terraform/commit/bb87dd1db04a35d609dbd849f4ccc77c7f167267))


## [1.0.3](https://github.com/entur/gha-terraform/compare/v1.0.2...v1.0.3) (2024-05-27)


### Bug Fixes

* add detailed error codes ([db0078d](https://github.com/entur/gha-terraform/commit/db0078de28646a55c2aa88b83970b93a6ef70a70))
* add environment name to comments ([a0838f0](https://github.com/entur/gha-terraform/commit/a0838f0afb2ebf1d4d2bc8ed9e4aae5ad3d0d421))
* add proper naming ([0ceb5ea](https://github.com/entur/gha-terraform/commit/0ceb5ea42405a54c4365d02d17befc506b303cc7))
* allow exit code &gt; 0 ([3c1ad2b](https://github.com/entur/gha-terraform/commit/3c1ad2bf9df8957d84ef6a162c4ea09284ac4b7b))
* apply step output ([60d2a17](https://github.com/entur/gha-terraform/commit/60d2a177e3298a88cc890017e419a1822d84b2bb))
* better plan + timeout ([#36](https://github.com/entur/gha-terraform/issues/36)) ([1139459](https://github.com/entur/gha-terraform/commit/11394598b2034ba1f31313a868d45add793fe41f))
* body ([fbf1ff8](https://github.com/entur/gha-terraform/commit/fbf1ff83f09580a9732ea79007b23c8541a9a19c))
* comment design changes ([d1968ab](https://github.com/entur/gha-terraform/commit/d1968ab5e51528fd5ebe1d76818d64d678d090c1))
* design changes ([766cc30](https://github.com/entur/gha-terraform/commit/766cc309554b2b36ad2ba1b8ec7878254528a903))
* elif :D ([58ff225](https://github.com/entur/gha-terraform/commit/58ff225707856ded190dd50df0d27482928cc63f))
* getting late :D ([20c7ce2](https://github.com/entur/gha-terraform/commit/20c7ce2d6aefd2b12b9aaca297dbb3f1a908dcd4))
* include .tfvars files for tests ([2a08b6e](https://github.com/entur/gha-terraform/commit/2a08b6ee94439bbfd6f747afab276d0edb5df3ed))
* last try tonight ([a18a258](https://github.com/entur/gha-terraform/commit/a18a258746807ec419488ec854e507d15d444c42))
* linebreak issue ([1d662c3](https://github.com/entur/gha-terraform/commit/1d662c33d1a501458f783ef734e2378a8f3e98c4))
* lock file, added needs: ([4e0556d](https://github.com/entur/gha-terraform/commit/4e0556dd974477bca9e4ac8b1f0cf06ae52a8956))
* merge ++ ([6899e79](https://github.com/entur/gha-terraform/commit/6899e7935c9dd2d61607c6210e593c90758b6929))
* plan output test ([f04134c](https://github.com/entur/gha-terraform/commit/f04134cde8b19d20af3db0bdae2008096301ad50))
* quotes ([faa1e19](https://github.com/entur/gha-terraform/commit/faa1e19b8fab4c61602425b9c1e80bac975b4fc1))
* remove eof ([221bfcf](https://github.com/entur/gha-terraform/commit/221bfcfad32af2acb0bd45e2aac8d1b68875b348))
* remove tfmask for now ([d0803e0](https://github.com/entur/gha-terraform/commit/d0803e09c912cba73afe261acccc546562694db2))
* tfplan.txt ([1a7da0b](https://github.com/entur/gha-terraform/commit/1a7da0bdc37fac3a13a5253c351f85d1a34797a0))
* try echo ([5a5f4c8](https://github.com/entur/gha-terraform/commit/5a5f4c87b582fcbb1c026577187b1a28fca86fd3))

## [1.0.2](https://github.com/entur/gha-terraform/compare/v1.0.1...v1.0.2) (2024-05-10)


### Bug Fixes

* comment on PR and print apply log to console ([#27](https://github.com/entur/gha-terraform/issues/27)) ([8fbe594](https://github.com/entur/gha-terraform/commit/8fbe594a08aa6b9a40c9a6473123c76c000042e6))


### Miscellaneous Chores

* create dependabot.yml ([38af994](https://github.com/entur/gha-terraform/commit/38af994f0d3a562e5abbe7d2f6954150018583fc))

## [1.0.1](https://github.com/entur/gha-terraform/compare/v1.0.0...v1.0.1) (2024-05-07)


### Bug Fixes

* allow custom cluster and project ([f4908de](https://github.com/entur/gha-terraform/commit/f4908deb1b1756637bf88f11692f0eca1d50f1bc))
* allow custom cluster and project ([#19](https://github.com/entur/gha-terraform/issues/19)) ([60881a7](https://github.com/entur/gha-terraform/commit/60881a731e3bd90bd4d7346a7973ee3a6662a8fc))
* pin version ([6251c76](https://github.com/entur/gha-terraform/commit/6251c76b3e67de269af298d8fc7396bd68828e70))
* use allow-custom-proj-and-cluster ([456dbca](https://github.com/entur/gha-terraform/commit/456dbcada973bab3a12384cdbe7935ed032165f5))

## 1.0.0 (2024-05-06)


### Features

* public API RC1 ([1ff0231](https://github.com/entur/gha-terraform/commit/1ff0231bc7bd08058ee7e126a03965fdec3e12cf))


### Bug Fixes

* cleanup close [#1](https://github.com/entur/gha-terraform/issues/1) close [#4](https://github.com/entur/gha-terraform/issues/4) close [#2](https://github.com/entur/gha-terraform/issues/2) ([383f6ef](https://github.com/entur/gha-terraform/commit/383f6efdbe0307dade995aa32e11bf89698d32fe))
* default workspace to env close [#12](https://github.com/entur/gha-terraform/issues/12) ([32c5a88](https://github.com/entur/gha-terraform/commit/32c5a88173ad85f94c71ec891ea9c7d36f548d22))
* flag before arg for ws select ([6e35b9a](https://github.com/entur/gha-terraform/commit/6e35b9aa8819f53b840b176361688e6f6e945825))
* no tf_ prefix, styleguide env, syntax hl ([d57434e](https://github.com/entur/gha-terraform/commit/d57434e2ad0c5cf508b1166ce269eeae665e918c)), closes [#13](https://github.com/entur/gha-terraform/issues/13) [#11](https://github.com/entur/gha-terraform/issues/11) [#10](https://github.com/entur/gha-terraform/issues/10) [#8](https://github.com/entur/gha-terraform/issues/8) [#6](https://github.com/entur/gha-terraform/issues/6)
* simplify fixture close [#2](https://github.com/entur/gha-terraform/issues/2) ([9a48f5c](https://github.com/entur/gha-terraform/commit/9a48f5c49b8cbf6d154507ef4db7f47c583c832d))
* use meta auth close [#7](https://github.com/entur/gha-terraform/issues/7) ([6d5430b](https://github.com/entur/gha-terraform/commit/6d5430bc310d991a9d08f97f6ed133fc940670d3))
* use meta auth close [#7](https://github.com/entur/gha-terraform/issues/7) ([#18](https://github.com/entur/gha-terraform/issues/18)) ([74f2776](https://github.com/entur/gha-terraform/commit/74f2776f1651acd7c3bea7d19175adbf69b2cfc9))
* verify cloud provider close [#9](https://github.com/entur/gha-terraform/issues/9) ([2daeecf](https://github.com/entur/gha-terraform/commit/2daeecfcf71fb5948be3d924bb39974431773353))
