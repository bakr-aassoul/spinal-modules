import spinal.core._

class Comparator(width: Int) extends Component {
  noIoPrefix()
  setDefinitionName("Comparator")

  val io = new Bundle {
    val a       = in  UInt(width bits)
    val b       = in  UInt(width bits)
    val equal   = out Bool()
    val greater = out Bool()
    val less    = out Bool()
  }

  io.a.setName("a")
  io.b.setName("b")
  io.equal   := io.a === io.b
  io.greater := io.a > io.b
  io.less    := io.a < io.b

  io.equal.setName("eq")
  io.greater.setName("gt")
  io.less.setName("lt")
}
