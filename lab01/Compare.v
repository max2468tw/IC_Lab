module Compare (
	in, 
	in_max_1,
	in_max_2,
	in_max_3,
	max_1,
	max_2,
	max_3
);

parameter width = 6;

input  signed[width-1:0] in;
input  signed[width-1:0] in_max_1;
input  signed[width-1:0] in_max_2;
input  signed[width-1:0] in_max_3;

output reg signed[width-1:0] max_1;
output reg signed[width-1:0] max_2;
output reg signed[width-1:0] max_3;


always@*
begin
	if (in > in_max_1)
	begin
		max_1 = in;
		max_2 = in_max_1;
		max_3 = in_max_2;
	end
	else if (in_max_1 >= in && in > in_max_2)
	begin
		max_1 = in_max_1;
		max_2 = in;
		max_3 = in_max_2;
	end
	else if (in_max_2 >= in && in > in_max_3)
	begin
		max_1 = in_max_1;
		max_2 = in_max_2;
		max_3 = in;
	end
	else
	begin
		max_1 = in_max_1;
		max_2 = in_max_2;
		max_3 = in_max_3;
	end
end

endmodule


