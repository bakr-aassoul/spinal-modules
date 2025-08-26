import spinal.core._

class Counter(width: Int) extends Component {
  noIoPrefix()
  setDefinitionName("Counter")

  val io = new Bundle {
    val enable = in Bool()
    val reset  = in Bool()
    val value  = out UInt(width bits)
  }

  val count = Reg(UInt(width bits)) init(0)
  when(io.reset) { count := 0 } .elsewhen(io.enable) { count := count + 1 }
  io.value := count

  io.enable.setName("enable"); io.reset.setName("reset"); io.value.setName("value")
}
