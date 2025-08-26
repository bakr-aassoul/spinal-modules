import spinal.core._
object PwmVerilog {
  def main(args: Array[String]): Unit =
    SpinalConfig(targetDirectory="generated/verilog", oneFilePerComponent=true)
      .generateVerilog(new Pwm(8).setDefinitionName("Pwm"))
}
