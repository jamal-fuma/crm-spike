         X   W       ����������C|�1���NK'�lS��3            uclass Admin < User
  has_many :companies, :finder_sql => 'SELECT * FROM companies'
end
