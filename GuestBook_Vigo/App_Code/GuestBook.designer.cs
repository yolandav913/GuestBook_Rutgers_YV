﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="GuestBook")]
public partial class GuestBookDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertMessage(Message instance);
  partial void UpdateMessage(Message instance);
  partial void DeleteMessage(Message instance);
  #endregion
	
	public GuestBookDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["GuestBookConnectionString1"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public GuestBookDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public GuestBookDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public GuestBookDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public GuestBookDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Message> Messages
	{
		get
		{
			return this.GetTable<Message>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Messages")]
public partial class Message : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _MessageID;
	
	private string _Date;
	
	private string _Name;
	
	private string _Email;
	
	private string _Message1;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMessageIDChanging(int value);
    partial void OnMessageIDChanged();
    partial void OnDateChanging(string value);
    partial void OnDateChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnMessage1Changing(string value);
    partial void OnMessage1Changed();
    #endregion
	
	public Message()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MessageID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int MessageID
	{
		get
		{
			return this._MessageID;
		}
		set
		{
			if ((this._MessageID != value))
			{
				this.OnMessageIDChanging(value);
				this.SendPropertyChanging();
				this._MessageID = value;
				this.SendPropertyChanged("MessageID");
				this.OnMessageIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Date", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string Date
	{
		get
		{
			return this._Date;
		}
		set
		{
			if ((this._Date != value))
			{
				this.OnDateChanging(value);
				this.SendPropertyChanging();
				this._Date = value;
				this.SendPropertyChanged("Date");
				this.OnDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string Email
	{
		get
		{
			return this._Email;
		}
		set
		{
			if ((this._Email != value))
			{
				this.OnEmailChanging(value);
				this.SendPropertyChanging();
				this._Email = value;
				this.SendPropertyChanged("Email");
				this.OnEmailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="Message", Storage="_Message1", DbType="Text NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
	public string Message1
	{
		get
		{
			return this._Message1;
		}
		set
		{
			if ((this._Message1 != value))
			{
				this.OnMessage1Changing(value);
				this.SendPropertyChanging();
				this._Message1 = value;
				this.SendPropertyChanged("Message1");
				this.OnMessage1Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
