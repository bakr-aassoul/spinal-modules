import spinal.core._

object ComparatorVhdl {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      targetDirectory = "generated/vhdl",
      oneFilePerComponent = true
    ).generateVhdl(new Comparator(4).setDefinitionName("Comparator"))
  }
}
