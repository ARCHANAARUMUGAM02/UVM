`include "uvm_macros.svh"
import uvm_pkg::*;
typedef enum {RED,GREEN,BLUE}colour;
class my_object extends uvm_object;
  colour c;
  function new(string name="my_object");
    super.new(name);
    `uvm_info("NEW","creating my_object",UVM_LOW);
  endfunction
  function void display();
    for( int i=0;i<3;i++)begin
      `uvm_info("my_object created",$sformatf("colour:%s",c.name()),UVM_LOW);
      `uvm_info("ID",$sformatf("id:%0d",c),UVM_LOW);
      c=c.next();
    end
      endfunction
endclass
  module tb();
    my_object mb;
    initial begin
      mb=new();
      mb.display();
    end
  endmodule
      
      
    
    
  UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO testbench.sv(10) @ 0: reporter [NEW] creating my_object
# UVM_INFO testbench.sv(14) @ 0: reporter [my_object created] colour:RED
# UVM_INFO testbench.sv(15) @ 0: reporter [ID] id:0
# UVM_INFO testbench.sv(14) @ 0: reporter [my_object created] colour:GREEN
# UVM_INFO testbench.sv(15) @ 0: reporter [ID] id:1
# UVM_INFO testbench.sv(14) @ 0: reporter [my_object created] colour:BLUE
# UVM_INFO testbench.sv(15) @ 0: reporter [ID] id:2
