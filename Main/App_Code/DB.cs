﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
    public static DataClassesDataContext db;
    public static DB database;
    public DB()
    {
        db = new DataClassesDataContext();
    }

    public static DB GetInstance()
    {
        if(database == null)
        {
            database = new DB();
        }
        return database;
    }

    public bool CheckUserExist(string user)
    {
        var result = from r in db.Table where r.user.Equals(user) select r;
        return result.Any();
    }

    public void UpdatePasswd(string user,string passwd)
    {
        var result = from r in db.Table where r.user.Equals(user) select r;
        Table t = result.FirstOrDefault() as Table;
        t.passwd = passwd;
        db.SubmitChanges();
    }

    public bool CheckLogin(string user,string passwd)
    {
        var result = from r in db.Table where r.user.Equals(user) && r.passwd.Equals(passwd) select r;
        return result.Any();
    }

    public void InsertTable(string user,string passwd,string name)
    {
        Table table = new Table();
        table.user = user;
        table.passwd = passwd;
        table.name = name;
        db.Table.InsertOnSubmit(table);
        db.SubmitChanges();
    }

    public void UpdateTable()
    {

    }

    public Table GetUser(string user)
    {
        var result = from r in db.Table where r.user.Equals(user) select r;
        Table t = result.FirstOrDefault();
        return t;
    }

    public void GetAllUser()
    {
        var result = from r in db.Table group r by r.Id;
        foreach(var r in result)
        {
            foreach(Table u in r)
            {
                
            }
        }
    }
}