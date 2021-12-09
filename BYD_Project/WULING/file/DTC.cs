//��һ����
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
					
//�ڶ�����K�ߣ���
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
						dtcitem.Code = (ushort)(((int)bservice.Response.Data[num2] << 8) + (int)bservice.Response.Data[num2 + 1]);//��ȡ������
						if (base.DTCConfig.HasFaultType)
						{
							dtcitem.FaultType = bservice.Response.Data[num2 + 2];//��ȡ��������
							if (base.DTCConfig.HasDTCStatus)
							{
								dtcitem.Status = bservice.Response.Data[num2 + 3];//��ȡ����״̬
							}
						}
						else if (base.DTCConfig.HasDTCStatus)
						{
							dtcitem.Status = bservice.Response.Data[num2 + 2];//��ȡ����״̬
						}
						dtcitem.DisplayedDTC = base.GetDisplayedDTC(dtcitem.Code, dtcitem.FaultType);//�õ���MDB���ݿ�Ĺ������
						dtcs.Add(dtcitem);
						num2 += num;
					}
					
//�ڶ�����CANЭ�飩��
						int num = 3;
						if (this.m_DTCConfig.HasFaultType)
						{
							num++;
						}
						int num2 = this.m_DTCConfig.DTCStart;
						while ((long)num2 < (long)((ulong)bservice2.Response.MsgData.Length))
						{
							DTCItem dtcitem = new DTCItem();
							dtcitem.Code = (ushort)(((int)bservice2.Response.Data[num2] << 8) + (int)bservice2.Response.Data[num2 + 1]);//��ȡ������
							if (this.m_DTCConfig.HasFaultType)
							{
								dtcitem.FaultType = bservice2.Response.Data[num2 + 2];//��ȡ��������
								dtcitem.Status = bservice2.Response.Data[num2 + 3];//��ȡ����״̬
							}
							else
							{
								dtcitem.Status = bservice2.Response.Data[num2 + 2];//��ȡ����״̬
							}
							dtcitem.DisplayedDTC = this.GetDisplayedDTC(dtcitem.Code, dtcitem.FaultType);//�õ���MDB���ݿ�Ĺ������
							dtcs.Add(dtcitem);
							num2 += num;
						}
						
//��������
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
			stringBuilder.Append(((int)(0x3FFF & Code)).ToString("X4"));//ת����4�ֽ�16�����ַ����������ӵ�stringBuilder�ַ���β��
			if (this.m_DTCConfig.HasFaultType)
			{
				stringBuilder.Append(FaultType.ToString("X2"));//ת����4�ֽ�16�����ַ����������ӵ�stringBuilder�ַ���β��
			}
			return stringBuilder.ToString();//�����ַ���
		}
		
//���Ĳ���MDB���ݿ���ң��˴�DTCCode = dtcitem.DisplayedDTC��
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