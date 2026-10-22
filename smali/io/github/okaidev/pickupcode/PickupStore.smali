.class public Lio/github/okaidev/pickupcode/PickupStore;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PickupStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/PickupStore$Item;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "pickup.db"

.field private static final DB_VER:I = 0x1

.field private static final TABLE:Ljava/lang/String; = "pickup"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile sInstance:Lio/github/okaidev/pickupcode/PickupStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "pickup.db"

    .line 51
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private count(Z)I
    .locals 6

    const-string v0, "PickupStore count err: "

    .line 149
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT COUNT(*) FROM pickup WHERE done=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    aput-object p1, v5, v2

    .line 152
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 154
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    if-eqz v3, :cond_2

    .line 160
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return v2

    :catchall_1
    move-exception p1

    :try_start_2
    const-string v1, "PICKUPDEBUG"

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_3

    .line 160
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_3
    return v2

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_4

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 162
    :catchall_4
    :cond_4
    throw p1
.end method

.method private static from(Landroid/database/Cursor;)Lio/github/okaidev/pickupcode/PickupStore$Item;
    .locals 3

    .line 177
    new-instance v0, Lio/github/okaidev/pickupcode/PickupStore$Item;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/PickupStore$Item;-><init>()V

    const-string v1, "_id"

    .line 178
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->id:J

    const-string v1, "code"

    .line 179
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    const-string v1, "carrier"

    .line 180
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    const-string v1, "place"

    .line 181
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    const-string v1, "body"

    .line 182
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->body:Ljava/lang/String;

    const-string v1, "ts"

    .line 183
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->ts:J

    const-string v1, "done"

    .line 184
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    const-string v1, "done_ts"

    .line 185
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->doneTs:J

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;
    .locals 2

    sget-object v0, Lio/github/okaidev/pickupcode/PickupStore;->sInstance:Lio/github/okaidev/pickupcode/PickupStore;

    if-nez v0, :cond_1

    const-class v0, Lio/github/okaidev/pickupcode/PickupStore;

    .line 41
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupStore;->sInstance:Lio/github/okaidev/pickupcode/PickupStore;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lio/github/okaidev/pickupcode/PickupStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/PickupStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/github/okaidev/pickupcode/PickupStore;->sInstance:Lio/github/okaidev/pickupcode/PickupStore;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lio/github/okaidev/pickupcode/PickupStore;->sInstance:Lio/github/okaidev/pickupcode/PickupStore;

    return-object p0
.end method


# virtual methods
.method public countPending()I
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/PickupStore;->count(Z)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    const-string v2, "pickup"

    const-string v3, "code=?"

    .line 169
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PickupStore delete err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 5

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_5

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "code"

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    const-string v4, "carrier"

    .line 96
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_2

    move-object p3, p1

    :cond_2
    const-string p2, "place"

    .line 97
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_3

    move-object p4, p1

    :cond_3
    const-string p1, "body"

    .line 98
    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p3, p5, p1

    if-lez p3, :cond_4

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    :goto_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "ts"

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x0

    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "done"

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "done_ts"

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string p1, "pickup"

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 103
    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PickupStore insert err: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PICKUPDEBUG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-wide v0
.end method

.method public list(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/PickupStore$Item;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x0

    :try_start_0
    const-string v2, "pickup"

    const/4 v3, 0x0

    const-string v4, "done=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v6, "1"

    goto :goto_0

    :cond_0
    const-string v6, "0"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "done_ts"

    goto :goto_1

    :cond_1
    const-string p1, "ts"

    .line 132
    :goto_1
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, " DESC"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "200"

    .line 131
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 133
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v10}, Lio/github/okaidev/pickupcode/PickupStore;->from(Landroid/database/Cursor;)Lio/github/okaidev/pickupcode/PickupStore$Item;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    .line 138
    :goto_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "PICKUPDEBUG"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PickupStore list err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_3

    goto :goto_3

    :catchall_1
    :cond_3
    :goto_4
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz v10, :cond_4

    .line 138
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 140
    :catchall_3
    :cond_4
    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS pickup (_id INTEGER PRIMARY KEY AUTOINCREMENT, code TEXT NOT NULL UNIQUE, carrier TEXT, place TEXT, body TEXT, ts INTEGER, done INTEGER NOT NULL DEFAULT 0, done_ts INTEGER)"

    .line 56
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS idx_pickup_done ON pickup (done)"

    .line 65
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS pickup"

    .line 70
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/PickupStore;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public setDone(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 114
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "done"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_1

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v3, "done_ts"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string p2, "pickup"

    const-string v3, "code=?"

    .line 118
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "PickupStore setDone err: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PICKUPDEBUG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method
