library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity traffiController is 
  port
  (
    clk: in std_logic;
    button: in std_logic;
    traffic_light: out std_logic_vector(2 downto 0);
    pedestrian_light: out std_logic_vector(1 downto 0)
  );
end traffiController;

architecture rtl of traffiController is
  type StateType is (S0, S1, S2,S3,S4,S5);
  
  signal state : StateType := S0;

  -- Adjust this constant based on your clock frequency
  constant counter_frequency : integer := 50000000; -- Assuming 50 MHz
  
	begin 

	process(clk , button)
	 variable timer: integer range 0 to 1500000000:=0; 
	begin 
	if rising_edge(clk) then
		case state is 
        when S0 => 
			if button = '0' then 
				state <= S1;
				timer:= 0;
			else
				state <= S0;
			end if;
			
			
			when S1 =>
				if(timer >= 3 * counter_frequency) then
					state <= S2;

					timer := timer + 1;

				else
					state <= S1;

					timer := timer +1;

				end if;
			
			when S2 =>
				if(timer >= 6 * counter_frequency) then
					state <= S3;
					timer := timer + 1;
				else
					state <= S2;
					timer := timer +1;
				end if;
			
			when S3 => 
				 if(timer >= 24 * counter_frequency) then
					state<=S4;
					timer:= timer+1;
				 else
					state <= S3;
					timer := timer +1;
				 end if;
 
			when S4 => 
				 if(timer >=29 * counter_frequency) then
					state<=S5;
					timer:= timer+1;
				 else
					state <= S4;
					timer := timer +1;
				 end if;
				 
			when S5 => 
				 if(timer >=40 * counter_frequency) then
					state<=S0;
					timer:= timer+1;
				 else
					state <= S5;
					timer := timer +1;
				 end if;
		 end case;				 
	 end if;		 
  end process;
  
  process(state)
	begin
	case state is
	
		when S0=>
			traffic_light <= "001";
			pedestrian_light <= "10";
			
		when S1=>
			traffic_light <= "010";
			pedestrian_light <= "10";
			
		when S2=>
			traffic_light <= "100";
			pedestrian_light <= "10";
			
		when S3=>
				traffic_light <= "100";
				pedestrian_light <= "01";
				
		when S4=>
				traffic_light <= "010";
				pedestrian_light <= "10";
				
		when S5=>
				traffic_light <= "001";
				pedestrian_light <= "10";
	end case;
end process;	

end rtl;
