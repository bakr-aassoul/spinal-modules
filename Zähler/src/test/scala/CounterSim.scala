import spinal.core._
import spinal.sim._
import spinal.core.sim._

object CounterSim {
  def main(args: Array[String]): Unit = {
    SimConfig.withVcdWave.compile(new Counter(4)).doSim { dut =>
      dut.clockDomain.forkStimulus(10)
      dut.io.reset #= true;  dut.io.enable #= false; dut.clockDomain.waitSampling()
      dut.io.reset #= false; dut.io.enable #= true
      for (_ <- 0 until 8) dut.clockDomain.waitSampling()
      simSuccess()
    }
  }
}
