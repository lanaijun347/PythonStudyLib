//第一步：
					this.m_ECU.DTCConfig.DTCStart = kdtccfg.ByteStart - 1;
					if (kdtccfg.KDTCLength == "2")
					{
						this.m_ECU.DTCConfig.HasFaultType = false;
						this.m_ECU.DTCConfig.HasDTCStatus = false;
					}
					else if (kdtccfg.KDTCLength == "3")
					{
						this.m_ECU.DTCConfig.HasFaultType = true;
						this.m_ECU.DTCConfig.HasDTCStatus = false;
					}
					else if (kdtccfg.KDTCLength == "2+1")
					{
						this.m_ECU.DTCConfig.HasFaultType = false;
						this.m_ECU.DTCConfig.HasDTCStatus = true;
					}
					else if (kdtccfg.KDTCLength == "3+1")
					{
						this.m_ECU.DTCConfig.HasFaultType = true;
						this.m_ECU.DTCConfig.HasDTCStatus = true;
					}
					
//第二步（K线）：
					int num = 2;
					if (base.DTCConfig.HasFaultType)
					{
						num++;
					}
					if (base.DTCConfig.HasDTCStatus)
					{
						num++;
					}
					int num2 = base.DTCConfig.DTCStart;
					while ((long)num2 < (long)((ulong)bservice.Response.MsgData.Length))
					{
						DTCItem dtcitem = new DTCItem();
						dtcitem.Code = (ushort)(((int)bservice.Response.Data[num2] << 8) + (int)bservice.Response.Data[num2 + 1]);//获取故障码
						if (base.DTCConfig.HasFaultType)
						{
							dtcitem.FaultType = bservice.Response.Data[num2 + 2];//获取故障类型
							if (base.DTCConfig.HasDTCStatus)
							{
								dtcitem.Status = bservice.Response.Data[num2 + 3];//获取故障状态
							}
						}
						else if (base.DTCConfig.HasDTCStatus)
						{
							dtcitem.Status = bservice.Response.Data[num2 + 2];//获取故障状态
						}
						dtcitem.DisplayedDTC = base.GetDisplayedDTC(dtcitem.Code, dtcitem.FaultType);//得到查MDB数据库的故障码号
						dtcs.Add(dtcitem);
						num2 += num;
					}
					
//第二步（CAN协议）：
						int num = 3;
						if (this.m_DTCConfig.HasFaultType)
						{
							num++;
						}
						int num2 = this.m_DTCConfig.DTCStart;
						while ((long)num2 < (long)((ulong)bservice2.Response.MsgData.Length))
						{
							DTCItem dtcitem = new DTCItem();
							dtcitem.Code = (ushort)(((int)bservice2.Response.Data[num2] << 8) + (int)bservice2.Response.Data[num2 + 1]);//获取故障码
							if (this.m_DTCConfig.HasFaultType)
							{
								dtcitem.FaultType = bservice2.Response.Data[num2 + 2];//获取故障类型
								dtcitem.Status = bservice2.Response.Data[num2 + 3];//获取故障状态
							}
							else
							{
								dtcitem.Status = bservice2.Response.Data[num2 + 2];//获取故障状态
							}
							dtcitem.DisplayedDTC = this.GetDisplayedDTC(dtcitem.Code, dtcitem.FaultType);//得到查MDB数据库的故障码号
							dtcs.Add(dtcitem);
							num2 += num;
						}
						
//第三步：
		public string GetDisplayedDTC(ushort Code, byte FaultType)
		{
			StringBuilder stringBuilder = new StringBuilder();
			switch ((ushort)((0xC000 & Code) >> 14))
			{
			case 0:
				stringBuilder.Append("P");
				break;
			case 1:
				stringBuilder.Append("C");
				break;
			case 2:
				stringBuilder.Append("B");
				break;
			case 3:
				stringBuilder.Append("U");
				break;
			}
			stringBuilder.Append(((int)(0x3FFF & Code)).ToString("X4"));//转换成4字节16进制字符串，并增加到stringBuilder字符串尾部
			if (this.m_DTCConfig.HasFaultType)
			{
				stringBuilder.Append(FaultType.ToString("X2"));//转换成4字节16进制字符串，并增加到stringBuilder字符串尾部
			}
			return stringBuilder.ToString();//返回字符串
		}
		
//第四步：MDB数据库查找（此处DTCCode = dtcitem.DisplayedDTC）
				if (Language == "en-US")
				{
					text = "DiscribeEN";
				}
				else if (Language == "zh-CN")
				{
					text = "DiscribeCN";
				}
				else if (Language == "es")
				{
					text = "MX";
				}
				else if (Language == "th-TH")
				{
					text = "TH";
				}
				string text2 = "[" + VehicleName + "DTCS]";
				string text3 = string.Concat(new string[]
				{
					"select ",
					text,
					" from ",
					text2,
					" where DTCCode = '",
					DTCCode,
					"'"
				});