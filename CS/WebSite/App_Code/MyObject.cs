using System;
using DevExpress.Xpo;

public enum CommonMeals {
    Breakfast,
    Lunch,
    Dinner,
    Supper
}

public class MyObject : XPObject {
    public MyObject()
        : base() { }

    public MyObject(Session session)
        : base(session) { }

    public override void AfterConstruction() {
        base.AfterConstruction();
    }

    protected String _Title;
    public String Title {
        get { return _Title; }
        set { SetPropertyValue<String>("Title", ref _Title, value); }
    }

    private CommonMeals meal;
    public CommonMeals Meal {
        get { return meal; }
        set { SetPropertyValue("Meal", ref meal, value); }
    }
}

