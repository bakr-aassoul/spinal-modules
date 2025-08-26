import spinal.core._

class Pwm(width: Int) extends Component {
  noIoPrefix()
  setDefinitionName("Pwm")

  val io = new Bundle {
    val enable  = in  Bool()
    val duty    = in  UInt(width bits)   // 0 .. 2^width-1
    val pwmOut  = out Bool()
    val dutyPct = out UInt(7 bits)       // <-- expose percentage as OUTPUT
  }

  val counter = Reg(UInt(width bits)) init(0)
  counter := counter + 1
  io.pwmOut := io.enable && (counter < io.duty)

  // Percentage 0..100 using exact divide (2^width - 1), rounded
  val numWidth = width + 7
  val num      = io.duty.resize(numWidth) * U(100)
  val den      = U((1 << width) - 1, numWidth bits)
  val pctWide  = (num + (den >> 1)) / den
  io.dutyPct   := pctWide.resized          // drive the output

  // nicer labels in waves
  io.enable.setName("enable")
  io.duty.setName("duty")
  io.pwmOut.setName("pwmOut")
  io.dutyPct.setName("dutyPct")
}
