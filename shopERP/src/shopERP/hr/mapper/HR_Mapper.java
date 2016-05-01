package shopERP.hr.mapper;

import java.util.List;

import shopERP.hr.model.deptList;
import shopERP.hr.model.hr_basic;

public interface HR_Mapper {
	int deptChecker(String b_id);

	int positionChecker(String b_id);

	int jobChecker(String b_id);

	int dutyChecker(String b_id);

	int deptInsert(hr_basic hrb);

	int positonInsert(hr_basic hrb);

	int jobInsert(hr_basic hrb);

	int dutyInsert(hr_basic hrb);

	List<deptList> deptList();
}
