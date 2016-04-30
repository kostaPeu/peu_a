package shopERP.accounting.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class MoneyPlan implements Serializable {

	private String typelist;
	private String funds_id;
	private String repeat_unit;
	private Date start_date;
	private Date period;
	private String dept_id;
	private int proj_id;
	private String account_number;
	private String customer_id;
	private int sums;
	private String remarks;
	private int diagnosis_number;

	public MoneyPlan() {
	}

	public MoneyPlan(String typelist, String funds_id, String repeat_unit,
			Date start_date, Date period, String dept_id, int proj_id,
			String account_number, String customer_id, int sums,
			String remarks, int diagnosis_number) {
		super();
		this.typelist = typelist;
		this.funds_id = funds_id;
		this.repeat_unit = repeat_unit;
		this.start_date = start_date;
		this.period = period;
		this.dept_id = dept_id;
		this.proj_id = proj_id;
		this.account_number = account_number;
		this.customer_id = customer_id;
		this.sums = sums;
		this.remarks = remarks;
		this.diagnosis_number = diagnosis_number;
	}

	public String getTypelist() {
		return typelist;
	}

	public void setTypelist(String typelist) {
		this.typelist = typelist;
	}

	public String getFunds_id() {
		return funds_id;
	}

	public void setFunds_id(String funds_id) {
		this.funds_id = funds_id;
	}

	public String getRepeat_unit() {
		return repeat_unit;
	}

	public void setRepeat_unit(String repeat_unit) {
		this.repeat_unit = repeat_unit;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getPeriod() {
		return period;
	}

	public void setPeriod(Date period) {
		this.period = period;
	}

	public String getDept_id() {
		return dept_id;
	}

	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}

	public int getProj_id() {
		return proj_id;
	}

	public void setProj_id(int proj_id) {
		this.proj_id = proj_id;
	}

	public String getAccount_number() {
		return account_number;
	}

	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public int getSums() {
		return sums;
	}

	public void setSums(int sums) {
		this.sums = sums;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getDiagnosis_number() {
		return diagnosis_number;
	}

	public void setDiagnosis_number(int diagnosis_number) {
		this.diagnosis_number = diagnosis_number;
	}

}
