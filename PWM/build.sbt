name := "pwm"
version := "0.1.0"
scalaVersion := "2.13.12"

libraryDependencies ++= Seq(
  "com.github.spinalhdl" %% "spinalhdl-core" % "1.9.1",
  "com.github.spinalhdl" %% "spinalhdl-sim"  % "1.9.1" % Test
)
