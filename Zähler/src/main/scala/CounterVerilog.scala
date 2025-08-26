import spinal.core._
object CounterVerilog {
  def main(args: Array[String]): Unit =
    SpinalConfig(targetDirectory="generated/verilog", oneFilePerComponent=true)
      .generateVerilog(new Counter(4).setDefinitionName("Counter"))
}
