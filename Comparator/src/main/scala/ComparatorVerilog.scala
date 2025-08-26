import spinal.core._

object ComparatorVerilog {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      targetDirectory = "generated/verilog",
      oneFilePerComponent = true
    ).generateVerilog(new Comparator(4).setDefinitionName("Comparator"))
  }
}
