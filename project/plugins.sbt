addSbtPlugin("org.xerial.sbt" % "sbt-pack" % "0.14")
addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.5.1")
addSbtPlugin("org.scalameta" % "sbt-scalafmt" % "2.4.0")
addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "1.2.0")
// addSbtPlugin("com.frugalmechanic" % "fm-sbt-s3-resolver" % "0.21.0")
resolvers += Resolver.jcenterRepo
addSbtPlugin("ohnosequences" % "sbt-s3-resolver" % "0.19.0")
