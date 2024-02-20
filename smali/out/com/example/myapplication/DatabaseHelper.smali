.class public Lcom/example/myapplication/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final databaseName:Ljava/lang/String; = "SignLog.db"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SignLog.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public checkEmail(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "email"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/example/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    .local v0, "Database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Select * from users where email=?"

    move-object v2, v1

    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 53
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1c

    .line 54
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 56
    :cond_1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public checkEmailPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/example/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "Database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "Select* from users where email=? and password=?"

    invoke-virtual {v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 64
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1a

    .line 65
    return v3

    .line 67
    :cond_1a
    return v2
.end method

.method public insertData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/example/myapplication/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 37
    .local v0, "Database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v1, "ContentValues":Landroid/content/ContentValues;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "users"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 42
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_22

    .line 43
    const/4 v4, 0x0

    return v4

    .line 45
    :cond_22
    const/4 v4, 0x1

    return v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "MyDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    const-string v0, "create Table users(email TEXT primary key,password TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "MyDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 31
    const-string v0, "drop Table if exists users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method
