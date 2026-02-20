    freq_cg = new();
    sb_export = new("sb_export", this);
class freq_scoreboard extends uvm_component;

  `uvm_component_utils(freq_scoreboard)

  // Analysis export (to be connected from env or monitor)
  uvm_analysis_export#(freq_xtn) sb_export;

  // TLM FIFO to store transactions from monitor
  uvm_tlm_analysis_fifo#(freq_xtn) sb_fifo;

  // Coverage group (linked with transaction)
  covergroup freq_cg with function sample(freq_xtn xtn);
    coverpoint xtn.in {
      bins low  = {0};
      bins high = {1};
    }

    coverpoint xtn.out {
      bins low  = {0};
      bins high = {1};
    }

    // Cross coverage between input and output
    cross xtn.in, xtn.out;
  endgroup

  // Constructor
  function new(string name="freq_scoreboard", uvm_component parent=null);
    super.new(name, parent);
    freq_cg = new();
  endfunction

  // Build phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    sb_export = new("sb_export", this);
    sb_fifo   = new("sb_fifo", this);
  endfunction

  // Connect phase (correct connection here)
  function void connect_phase(uvm_phase phase);
  function void build_phase(uvm_phase phase);
  endfunction
  endfuncti= 
    sb      = freq_scoreboard::type_id::create("sb", this); // <--- Create scoreboard
    if(!uvm_config_db #(freq_env_config)::get(this, "", "freq_env_config", m_cfg))
    et npnuuper.build_phase(phase);
    agt.mon.ap.connect(sb.sb_export);
    `uvm_fatal("GET_freq_env_CFG", "Failed to get freq_env_config")
    // Connect monitor's analysis port to scoreboard
      
    
function void check_result(freq_xtn xtn);
  // Reference model (example: output should be inverted input)
  expected_out = ~xtn.in;

  if (xtn.out === expected_out)
    `uvm_info("SCOREBOARD", $sformatf("PASS: in=%0b, out=%0b", xtn.in, xtn.out), UVM_LOW)
  else
    `uvm_error("SCOREBOARD", $sformatf("FAIL: in=%0b, out=%0b (Expected=%0b)", xtn.in, xtn.out, expected_out));
   freq_cg.sample(xtn);
endfunction

  // Coverage sampling
  function void sample_coverage(freq_xtn xtn);
    freq_cg.sample(xtn); // Pass transaction object
  endfunction

endclass
