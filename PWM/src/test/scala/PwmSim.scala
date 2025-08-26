import spinal.core._
import spinal.sim._
import spinal.core.sim._

object PwmSim {
  def main(args: Array[String]): Unit = {
    SimConfig.withVcdWave.compile(new Pwm(8)).doSim { dut =>
      dut.clockDomain.forkStimulus(10)

      // enable PWM
      dut.io.enable #= true

      // 25% duty
      dut.io.duty #= 64
      for (_ <- 0 until 300) dut.clockDomain.waitSampling()

      // 50% duty
      dut.io.duty #= 128
      for (_ <- 0 until 300) dut.clockDomain.waitSampling()

      // 75% duty
      dut.io.duty #= 192
      for (_ <- 0 until 300) dut.clockDomain.waitSampling()

      // 0% duty
      dut.io.duty #= 0
      for (_ <- 0 until 150) dut.clockDomain.waitSampling()

      // 100% duty
      dut.io.duty #= 255
      for (_ <- 0 until 150) dut.clockDomain.waitSampling()

      simSuccess()
    }
  }
}
