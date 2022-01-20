class Metric
    DIVISION_TO_M = {m: 1.00, cm: 100.00, km: 0.001, inch: 39.370, foot: 3.28084, yard: 1.09361, mile: 0.00062137}
    def initialize(value, unit)        
        raise "Value has to be numeric" unless value.is_a? Numeric
        @value = initial_value_to_meter(value, unit)
    end
 
    def to_m
        @value*DIVISION_TO_M[:m]
    end

    def to_cm
        @value*DIVISION_TO_M[:cm]
    end

    def to_km
        @value*DIVISION_TO_M[:km]
    end

    def to_inch
        @value*DIVISION_TO_M[:inch]
    end

    def to_foot
        @value*DIVISION_TO_M[:foot]
    end

    def to_yard
        @value*DIVISION_TO_M[:yard]
    end

    def to_mile
        @value*DIVISION_TO_M[:mile]
    end
    
    #converte o valor inicial para metro
    private
    def initial_value_to_meter(value, unit)

        if DIVISION_TO_M.key?(unit.to_sym)
            return value/DIVISION_TO_M[unit.to_sym]
        else
            raise "Object has invalid unit"
        end
        
    end
  end