import spinal.core._
object CounterVhdl {
  def main(args: Array[String]): Unit =
    SpinalConfig(targetDirectory="generated/vhdl", oneFilePerComponent=true)
      .generateVhdl(new Counter(4).setDefinitionName("Counter"))
}
