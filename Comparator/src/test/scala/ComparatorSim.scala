import spinal.core._
import spinal.sim._
import spinal.core.sim._

object ComparatorSim {
  def main(args: Array[String]): Unit = {
    SimConfig
      .withVcdWave
      .compile(new Comparator(4))
      .doSim { dut =>
        dut.io.a #= 5; dut.io.b #= 5; sleep(1); assert(dut.io.equal.toBoolean)
        dut.io.a #= 7; dut.io.b #= 4; sleep(1); assert(dut.io.greater.toBoolean)
        dut.io.a #= 2; dut.io.b #= 8; sleep(1); assert(dut.io.less.toBoolean)
        simSuccess()
      }
  }
}
