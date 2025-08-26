import spinal.core._
object PwmVhdl {
  def main(args: Array[String]): Unit =
    SpinalConfig(targetDirectory="generated/vhdl", oneFilePerComponent=true)
      .generateVhdl(new Pwm(8).setDefinitionName("Pwm"))
}
