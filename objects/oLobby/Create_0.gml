

m_Test = ds_list_create();
m_Test[|0] = 1;
m_Test[|1] = 2;
m_Test[|2] = 3;

Test(m_Test);

assert_equal(m_Test[|1], 2);

ds_list_destroy(m_Test);