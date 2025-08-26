import spinal.core._

object ClockDividerVhdl {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      targetDirectory = "generated/vhdl",
      oneFilePerComponent = true
    ).generateVhdl(new ClockDivider(8).setDefinitionName("ClockDivider"))
  }
}
