.class public Lio/github/okaidev/pickupcode/SystemDirectWriter;
.super Ljava/lang/Object;
.source "SystemDirectWriter.java"


# static fields
.field private static final DEFAULT_BLACKLIST:[Ljava/lang/String;

.field private static final FLAG_ASSET:Ljava/lang/String; = "enable_sys_direct_write"

.field private static final FLAG_TMP:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/enable_sys_direct_write"

.field private static final LIBS:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/lib"

.field private static final SQLITE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/sqlite3"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile enabledCache:Ljava/lang/Boolean;

.field private static volatile lastFingerprint:Ljava/lang/String;

.field private static volatile lastWriteAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "12306"

    const-string v1, "\u9a8c\u8bc1\u7801"

    const-string v2, "\u4f59\u989d"

    const-string v3, "\u5145\u503c"

    const-string v4, "\u8d26\u5355"

    const-string v5, "\u94f6\u884c"

    const-string v6, "\u4f18\u60e0\u5238"

    const-string v7, "\u9000\u8ba2"

    .line 49
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->DEFAULT_BLACKLIST:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastFingerprint:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastWriteAt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 220
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 221
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static enabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "SYS-WRITE enabled="

    sget-object v1, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-class v1, Lio/github/okaidev/pickupcode/SystemDirectWriter;

    .line 61
    monitor-enter v1

    :try_start_0
    sget-object v2, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    sget-object p0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    .line 63
    :cond_1
    invoke-static {p0}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->readFlag(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    const-string p0, "PICKUPDEBUG"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabledCache:Ljava/lang/Boolean;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static exists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 136
    invoke-static {p1, p3}, Lio/github/okaidev/pickupcode/NotesBackend;->existsSqlOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->runSqlForOutput(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static fallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 82
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->enabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 87
    :cond_1
    :try_start_1
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 88
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->loadForSystemProcess()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRules(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :try_start_2
    sget-object v2, Lio/github/okaidev/pickupcode/SystemDirectWriter;->DEFAULT_BLACKLIST:[Ljava/lang/String;

    .line 91
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 92
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :cond_4
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->lookLikePickupSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 95
    :cond_5
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 98
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastFingerprint:Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-wide v8, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastWriteAt:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYS-WRITE throttle skip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_7
    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->propsBackend()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v8}, Lio/github/okaidev/pickupcode/NotesBackend;->dbPathOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/TodoWriter;->resolveSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-static/range {p2 .. p2}, Lio/github/okaidev/pickupcode/TodoWriter;->extractPlace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm"

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 111
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, ".timeout 5000\n"

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v12, v14

    move-object v13, v5

    move-object/from16 v17, v14

    move-object v14, v1

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    .line 114
    invoke-static/range {v10 .. v15}, Lio/github/okaidev/pickupcode/TodoWriter;->buildContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v17

    .line 115
    invoke-static {v11, v10}, Lio/github/okaidev/pickupcode/TodoWriter;->buildTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    invoke-static {v0, v8, v9, v11}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->exists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SYS-WRITE dedup skip: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_8
    invoke-static {v8, v10, v12}, Lio/github/okaidev/pickupcode/NotesBackend;->insertSqlOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :goto_2
    move-object v15, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_9
    move-object v1, v15

    if-nez v4, :cond_a

    return-void

    :cond_a
    sput-object v3, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastFingerprint:Ljava/lang/String;

    sput-wide v6, Lio/github/okaidev/pickupcode/SystemDirectWriter;->lastWriteAt:J

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->runSqlFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYS-WRITE backend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " codes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :cond_b
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SYS-WRITE err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static readFlag(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cat /data/local/tmp/pickup_sqlite/enable_sys_direct_write"

    const/16 v2, 0x8

    .line 72
    invoke-static {p0, v1, v2}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->runShortCmd(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 74
    aget-object p0, p0, v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return v0
.end method

.method private static runShortCmd(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 10

    const/4 p0, 0x0

    const/4 p2, 0x5

    :try_start_0
    new-array v0, p2, [Ljava/lang/String;

    const-string v1, "su"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/product/bin/su"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/system/bin/su"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "/sbin/su"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "/su/bin/su"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_1

    .line 201
    aget-object v6, v0, v1

    .line 202
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "sh"

    aput-object v9, v8, v2

    const-string v9, "-c"

    aput-object v9, v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " -c \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v7}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 207
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v8}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 208
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-nez v6, :cond_0

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method private static runSqlFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 17

    const-string v0, " "

    const-string v1, "PICKUPDEBUG"

    const/4 v2, -0x1

    .line 143
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 144
    new-instance v4, Ljava/io/File;

    const-string v5, "sys_direct.sql"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v5, "UTF-8"

    move-object/from16 v6, p1

    .line 146
    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "su"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "/product/bin/su"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "/system/bin/su"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "/sbin/su"

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const-string v6, "/su/bin/su"

    const/4 v11, 0x4

    aput-object v6, v5, v11

    .line 149
    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->propsBackend()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/okaidev/pickupcode/NotesBackend;->dbPathOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v11, v7

    :goto_0
    if-ge v11, v3, :cond_1

    .line 150
    aget-object v12, v5, v11

    .line 151
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -M -c \"id; "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->propsBackend()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lio/github/okaidev/pickupcode/NotesBackend;->chmodCmdOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "LD_LIBRARY_PATH="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/data/local/tmp/pickup_sqlite/lib"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/data/local/tmp/pickup_sqlite/sqlite3"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " < "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    new-array v15, v10, [Ljava/lang/String;

    const-string v16, "sh"

    aput-object v16, v15, v7

    const-string v16, "-c"

    aput-object v16, v15, v8

    aput-object v13, v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 155
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v14}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 158
    invoke-virtual {v13}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v15}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 159
    invoke-virtual {v13}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-nez v3, :cond_0

    return v7

    .line 161
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SYS-WRITE su attempt("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") exit="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " err="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_1
    return v2

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 145
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SYS-WRITE runSql err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static runSqlForOutput(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, " "

    const-string v1, ".timeout 5000\n"

    const/4 v2, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 175
    new-instance v3, Ljava/io/File;

    const-string v4, "sys_probe.sql"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x5

    new-array p2, p0, [Ljava/lang/String;

    const-string v1, "su"

    const/4 v4, 0x0

    aput-object v1, p2, v4

    const-string v1, "/product/bin/su"

    const/4 v5, 0x1

    aput-object v1, p2, v5

    const-string v1, "/system/bin/su"

    const/4 v6, 0x2

    aput-object v1, p2, v6

    const-string v1, "/sbin/su"

    const/4 v7, 0x3

    aput-object v1, p2, v7

    const-string v1, "/su/bin/su"

    const/4 v8, 0x4

    aput-object v1, p2, v8

    move v1, v4

    :goto_0
    if-ge v1, p0, :cond_1

    .line 180
    aget-object v8, p2, v1

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -M -c \"LD_LIBRARY_PATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/data/local/tmp/pickup_sqlite/lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/data/local/tmp/pickup_sqlite/sqlite3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 182
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    const-string v11, "sh"

    aput-object v11, v10, v4

    const-string v11, "-c"

    aput-object v11, v10, v5

    aput-object v8, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v9}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 187
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v10}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 188
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    .line 176
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SYS-WRITE probe err: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PICKUPDEBUG"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
