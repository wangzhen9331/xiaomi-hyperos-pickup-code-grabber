.class public Lio/github/okaidev/pickupcode/TodoWriter;
.super Ljava/lang/Object;
.source "TodoWriter.java"


# static fields
.field private static final DEDUP_MAX:I = 0x1f4

.field private static final LIBS:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/lib"

.field public static final MODE_CUSTOM:I = 0x2

.field public static final MODE_FULL:I = 0x1

.field public static final MODE_MIN:I = 0x0

.field private static final PREFS:Ljava/lang/String; = "dedup"

.field private static final SQLITE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/sqlite3"

.field private static final SU_TIMEOUT_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static final WAIT_TIMEOUT:I = -0x3e7

.field private static volatile lastDedupHits:Ljava/lang/String; = ""

.field private static volatile lastWriteDiag:Ljava/lang/String; = "\u5c1a\u672a\u6267\u884c\u8fc7\u5199\u5e93\u64cd\u4f5c\uff08\u8fd8\u6ca1\u6709\u6536\u5230\u53d6\u4ef6\u77ed\u4fe1/\u8dd1\u8fc7\u4e00\u952e\u6d4b\u8bd5\uff09"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bracketBrand(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 2

    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 304
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-gt p2, p1, :cond_1

    return-object v0

    .line 306
    :cond_1
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xc

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "http"

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "www."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static buildContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\ud83d\udce6 \u53d6\u4ef6\u7801 "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\uff5c"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p1, "\ud83d\udce6 \u53d6\u4ef6\u7801 {code}\uff5c{source}\uff5c{place}\uff5c{time}"

    :cond_2
    const-string p0, "{code}"

    .line 130
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{source}"

    .line 131
    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{place}"

    .line 132
    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{time}"

    .line 133
    invoke-virtual {p0, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2
.end method

.method private static buildSuCmd(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->chmodCmd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LD_LIBRARY_PATH=/data/local/tmp/pickup_sqlite/lib /data/local/tmp/pickup_sqlite/sqlite3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->dbPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\ud83d\udce6 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0xff5c

    .line 295
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    .line 296
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x28

    if-le p0, v1, :cond_2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private static drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 388
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 389
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

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\'"

    const-string v2, "\'\'"

    .line 279
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u0000"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractPlace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-static {v0, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastDedupHits()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/TodoWriter;->lastDedupHits:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastWriteDiag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;

    return-object v0
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lio/github/okaidev/pickupcode/TodoWriter;->handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v8, p0

    .line 75
    invoke-static {v8, v7}, Lio/github/okaidev/pickupcode/TodoWriter;->isBlacklisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v9, "PICKUPDEBUG"

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "blacklist skip: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 79
    :cond_0
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->hasFeatureWords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static/range {p0 .. p2}, Lio/github/okaidev/pickupcode/MissedSmsStore;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 94
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bc6\u522b\u5230\u53d6\u4ef6\u7801 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2192 \u5199\u5165\u76ee\u6807=\u672c\u5730\u5e93\uff08v4 \u5355\u5305\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/TodoWriter;->noteDiag(Ljava/lang/String;)V

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/TodoWriter;->extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 98
    invoke-static/range {p1 .. p2}, Lio/github/okaidev/pickupcode/TodoWriter;->resolveSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v14

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v14

    move-object v1, v5

    move-object v2, v12

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v7, v5

    move-wide/from16 v5, p3

    .line 103
    invoke-virtual/range {v0 .. v6}, Lio/github/okaidev/pickupcode/PickupStore;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 105
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOCAL OK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff5c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "; "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dedup skip\uff08\u540c\u7801\u5df2\u5728\u5e93\u4e2d\uff09: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v7, p2

    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/TodoWriter;->lastDedupHits:Ljava/lang/String;

    .line 116
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    invoke-static {}, Lio/github/okaidev/pickupcode/MainActivity;->notifyDataChanged()V

    .line 118
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    :cond_6
    return-object v10
.end method

.method public static isBlacklisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "dedup"

    .line 143
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "blacklist"

    const-string v2, "12306,\u9a8c\u8bc1\u7801,\u4f59\u989d,\u5145\u503c,\u8d26\u5355,\u94f6\u884c,\u4f18\u60e0\u5238,\u9000\u8ba2"

    .line 144
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "[,\uff0c\u3001;\uff1b\\s]+"

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public static markDone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 162
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/github/okaidev/pickupcode/PickupStore;->setDone(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MARK_DONE(local): code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ok="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lio/github/okaidev/pickupcode/MainActivity;->notifyDataChanged()V

    .line 166
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    :cond_0
    return v0
.end method

.method public static markUndone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 173
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/okaidev/pickupcode/PickupStore;->setDone(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MARK_UNDONE(local): code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ok="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lio/github/okaidev/pickupcode/MainActivity;->notifyDataChanged()V

    .line 177
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    :cond_0
    return v0
.end method

.method public static noteDiag(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static resolveSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v0, 0x3010

    const/16 v1, 0x3011

    .line 320
    invoke-static {p1, v0, v1}, Lio/github/okaidev/pickupcode/TodoWriter;->bracketBrand(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x5b

    const/16 v1, 0x5d

    .line 323
    invoke-static {p1, v0, v1}, Lio/github/okaidev/pickupcode/TodoWriter;->bracketBrand(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "\u5988\u5988\u9a7f\u7ad9"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "\u5154\u559c"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\u5154\u559c\u751f\u6d3b"

    return-object p0

    :cond_4
    const-string v0, "\u7533\u901a"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\u7533\u901a\u5feb\u9012"

    return-object p0

    :cond_5
    const-string v0, "\u5706\u901a"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u5706\u901a\u901f\u9012"

    return-object p0

    :cond_6
    const-string v0, "\u4e2d\u901a"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\u4e2d\u901a\u5feb\u9012"

    return-object p0

    :cond_7
    const-string v0, "\u987a\u4e30"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    const-string v0, "\u4eac\u4e1c"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u4eac\u4e1c\u5feb\u9012"

    return-object p0

    :cond_9
    const-string v0, "\u6781\u5154"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "\u6781\u5154\u901f\u9012"

    return-object p0

    :cond_a
    const-string v0, "\u97f5\u8fbe"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u97f5\u8fbe\u5feb\u9012"

    return-object p0

    :cond_b
    const-string v0, "\u90ae\u653f"

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "EMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    const-string v0, "\u4e30\u5de2"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "\u67dc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    const-string v0, "\u83dc\u9e1f"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "\u9a7f\u7ad9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    :cond_e
    const-string p1, "\u2014"

    if-eqz p0, :cond_11

    const-string v0, "\u901a\u77e5:"

    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 344
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_11
    if-eqz p0, :cond_12

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    move-object p0, p1

    :cond_13
    return-object p0

    :cond_14
    :goto_1
    const-string p0, "\u83dc\u9e1f\u9a7f\u7ad9"

    return-object p0

    :cond_15
    :goto_2
    const-string p0, "\u4e30\u5de2\u5feb\u9012\u67dc"

    return-object p0

    :cond_16
    :goto_3
    const-string p0, "\u4e2d\u56fd\u90ae\u653f"

    return-object p0

    :cond_17
    :goto_4
    const-string p0, "\u987a\u4e30\u901f\u8fd0"

    return-object p0
.end method

.method public static runSql(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/TodoWriter;->runSqlForOutput(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static runSqlForOutput(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    const-string v0, " err="

    const-string v1, "PICKUPDEBUG"

    .line 191
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 192
    new-instance v4, Ljava/io/File;

    const-string v5, "todo_sql.sql"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v5, "UTF-8"

    move-object/from16 v6, p1

    .line 194
    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v6, ""

    move-object v12, v6

    move v11, v7

    :goto_0
    if-ge v11, v3, :cond_3

    .line 199
    :try_start_3
    aget-object v13, v5, v11

    .line 200
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -M -c \"id; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v15, p0

    invoke-static {v15, v4}, Lio/github/okaidev/pickupcode/TodoWriter;->buildSuCmd(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "\""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su attempt("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v14, v10, [Ljava/lang/String;

    const-string v16, "sh"

    aput-object v16, v14, v7

    const-string v16, "-c"

    aput-object v16, v14, v8

    aput-object v3, v14, v9

    invoke-virtual {v2, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v3}, Lio/github/okaidev/pickupcode/TodoWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 206
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v14}, Lio/github/okaidev/pickupcode/TodoWriter;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    const-wide/16 v8, 0x3a98

    .line 211
    invoke-static {v2, v8, v9}, Lio/github/okaidev/pickupcode/TodoWriter;->waitForWithTimeout(Ljava/lang/Process;J)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v9, -0x3e7

    const-string v7, "su="

    if-ne v8, v9, :cond_0

    .line 213
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    :catchall_0
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u7b49\u5f85\u8d85\u65f6\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\u79d2\uff09\u3002\u53ef\u80fd\u672a\u6388\u4e88 root \u6743\u9650\u6216\u6388\u6743\u5f39\u7a97\u672a\u5904\u7406 \u2192 \u5df2\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5 root \u6388\u6743"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "su timeout("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "), destroyed"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u8d85\u65f6("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s)\uff1b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v12, v2

    goto/16 :goto_2

    .line 221
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sqlite exit="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " out="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa0

    if-nez v8, :cond_2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK\uff08su="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff09"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " stderr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lio/github/okaidev/pickupcode/TodoWriter;->tail(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " exit="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lio/github/okaidev/pickupcode/TodoWriter;->tail(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5168\u90e8 su \u8def\u5f84\u5931\u8d25 \u2192 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 193
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runSqlForOutput \u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/github/okaidev/pickupcode/TodoWriter;->lastWriteDiag:Ljava/lang/String;

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runSqlForOutput err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static sqlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\'"

    const-string v2, "\'\'"

    .line 396
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u0000"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 351
    invoke-static {p0}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tail(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 272
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static waitForWithTimeout(Ljava/lang/Process;J)I
    .locals 4

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 255
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 257
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long p1, p1, v0

    const/16 p2, -0x3e7

    if-ltz p1, :cond_0

    return p2

    :cond_0
    const-wide/16 v2, 0x32

    .line 261
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 263
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return p2
.end method

.method private static declared-synchronized writeTodo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, ".timeout 5000\n"

    const-class v1, Lio/github/okaidev/pickupcode/TodoWriter;

    monitor-enter v1

    :try_start_0
    const-string v2, "pickup_todo"

    .line 362
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {p0, p2, p1, p3}, Lio/github/okaidev/pickupcode/PickupTodoBridge;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return p0

    :cond_0
    :try_start_1
    const-string p3, "r5"

    .line 367
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const-string p0, "PICKUPDEBUG"

    const-string p1, "writeTodo: R5 \u540e\u7aef\u5f02\u5e38\u5230\u8fbe\uff0c\u62d2\u7edd SQL \u76f4\u5199"

    .line 368
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "R5 \u540e\u7aef\u5185\u90e8\u8def\u5f84\u5f02\u5e38\uff08writeTodo\uff09\uff0c\u672c\u6b21\u672a\u5199\u5165"

    .line 369
    invoke-static {p0}, Lio/github/okaidev/pickupcode/TodoWriter;->noteDiag(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    monitor-exit v1

    return v2

    .line 372
    :cond_1
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/github/okaidev/pickupcode/NotesBackend;->insertSql(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/TodoWriter;->runSql(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
