import spinal.core._

object ClockDividerVerilog {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      targetDirectory = "generated/verilog",
      oneFilePerComponent = true
    ).generateVerilog(new ClockDivider(8).setDefinitionName("ClockDivider"))
  }
}
