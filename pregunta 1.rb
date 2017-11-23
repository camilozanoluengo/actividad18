class Table 
	def initialize (nombre, dia1, dia2, dia3, dia4) 
		@name = nombre
		@dia1 = dia1
		@dia2 = dia2
		@dia3 = dia3
		@dia4 = dia4
	end
end 

def abrir_split
	File.open('casino.txt', 'r') do |file|
	data = file.readlines
	arreglo =[]
	    data.each do |line|
	        data_spliteada = line.split(', ')
	        arreglo << Table.new(*data_spliteada)
	    end	    
		arreglo
	end 
end

def mayor
	abrir_split
	max = arreglo(0..3).max
	puts max
end

mayor


