import spinal.core._
import spinal.sim._
import spinal.core.sim._

object ClockDividerSim {
  def main(args: Array[String]): Unit = {
    SimConfig.withVcdWave.compile(new ClockDivider(8)).doSim { dut =>
      dut.clockDomain.forkStimulus(10)

      for (i <- 0 until 300) {
        dut.clockDomain.waitSampling()
        if (i % 50 == 0)
          println(s"Takt $i: clkOut = ${dut.io.clkOut.toBoolean}")
      }

      simSuccess()
    }
  }
}
