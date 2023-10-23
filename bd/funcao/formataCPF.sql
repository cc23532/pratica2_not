CREATE FUNCTION locbus.FormataCPF

(
    @CPF VARCHAR(11)
)
RETURNS VARCHAR(14)
AS
BEGIN
    RETURN SUBSTRING(@CPF, 1, 3) + '.' + SUBSTRING(@CPF, 4, 3) + '.' + SUBSTRING(@CPF, 7, 3) + '-' + SUBSTRING(@CPF, 10, 2);
END;
