

module ProblemCO1 (

			output Z,
			input A,
			input B,
			input C

);
			wire z1,z2,z3,z4;
			
			and A1(z1, B, C); //z1 = BC
			
			not n1(z2,C); //z2 = C'
			or O1(z3, z2, B); //z3 = B + C'
			
			and A2(z4, z3, A); //Z4 = A(B + C')
			
			or O2(Z, z1, z4); //z = A(B + C') + BC
			
endmodule
