package com.rafo.weixin.Enum;

public enum TurnTableEnum {

	
	id("id",0), playerid("playerid" ,1), awardid("awardid" ,2),awardnum("awardnum" ,3)
	,taskdone("taskdone" ,4),receive("receive" ,5),drawtime("drawtime" ,6),receivetime("receivetime" ,7)
	;
	
	
	// 普通方法
		public static String getName(int vaule) {
			for (TurnTableEnum r : TurnTableEnum.values()) {
				if (r.getVaule() == vaule) {
					return r.name;
				}
			}
			return null;
		}
		// 成员变量
		private String name;
		private int vaule;
		private TurnTableEnum(String name, int vaule) {
			this.name = name;
			this.vaule = vaule;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getVaule() {
			return vaule;
		}
		public void setVaule(int vaule) {
			this.vaule = vaule;
		}
}
