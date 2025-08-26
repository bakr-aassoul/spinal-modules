import spinal.core._

class ClockDivider(divisorWidth: Int) extends Component {
  noIoPrefix()
  setDefinitionName("ClockDivider")

  val io = new Bundle {
    val clkOut = out Bool()
  }

  // Zähler läuft kontinuierlich
  val counter = Reg(UInt(divisorWidth bits)) init(0)
  counter := counter + 1

  // höchstwertiges Bit als geteiltes Taktsignal
  io.clkOut := counter.msb

  io.clkOut.setName("clkOut")
}
