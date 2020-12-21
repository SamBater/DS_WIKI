using System;
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


    public void DeleteComments(int id)
    {
        var result = from r in db.Comment where r.Id == id select r;
        db.Comment.DeleteAllOnSubmit(result);
        db.SubmitChanges();
    }

    public Object GetAllComment()
    {
        var result = from c in db.Comment
                     orderby c.time descending
                     select new
                     {
                         c.Id,
                         c.text,
                         c.time,
                         user = c.Table.name,
                         c.uid
                     };
        return result;
    }

    public void InsertComment(Comment comment)
    {
        db.Comment.InsertOnSubmit(comment);
        db.SubmitChanges();
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

    public Magic GetMagic(int id)
    {
        var result = from r in db.Magic where r.Id == id select r;
        return result.FirstOrDefault();
    }

    public Object GetMagicObject(int id)
    {
        var result = from r in db.Magic where r.Id == id select r;
        return result;
    }
}