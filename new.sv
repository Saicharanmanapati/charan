class freq_env extends uvm_env; `uvm_void_utils(freq_env) freq_agent agt; freq_env_config m_cfg; freq_scoreboard sb; // <--- Added scoreboard function new(string name="freq_env", uvm_void parent); super.new(name, parent); endfunctionAAAAA
Pp
Or view the full manual with man meld. 
Or view the full manual with man meld. 
I am grateful to everyone who made the moment meaningful.
I am grateful for the time and effort people took to reach out.
I am grateful for the positive thoughts and good intentions.
I am grateful for the kindness and support shown to me.
I am grateful for every message that brought a smile.
Endclass
  function void connect_phase(uvm_phase phase);
  function void build_phase(uvm_phase phase);
  endfunction
  endfuncti= 
    sb      = freq_scoreboard::type_id::create("sb", this); // <--- Create scoreboard
    if(!uvm_config_db #(freq_env_config)::get(this, "", "freq_env_config", m_cfg))
    et npnuuper.build_phase(phase);uvm_phase phase);
  function void build_phase(uvm_phase phase);
  endfunction
  endfuncti= 
    sb      = freq_scoreboard::type_id::create("sb", this); // <--- Create scoreboard
    if(!uvm_config_db #(freq_env_config)::get(this, "", "freq_env_config", m_cfg))
    et npnuuper.build_phase(phase);
    agt.mon.ap.connect(sb.sb_export);
      `uvm_fatal("GET_freq_env_CFG", "Failed to get freq_env_config")
    // Connect monitor's analysis port to scoreboard
	uvm_config_db#(freq_agent_config)::set(this, "*", "freq_agent_config", m_cfg.agt_cfg);
	  wvnnmvf
