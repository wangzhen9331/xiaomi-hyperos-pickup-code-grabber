.class public Lio/github/okaidev/pickupcode/Repair;
.super Ljava/lang/Object;
.source "Repair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/Repair$LsposedStatus;
    }
.end annotation


# static fields
.field public static final LIBS:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/lib"

.field private static final LSP_DB:Ljava/lang/String; = "/data/adb/lspd/config/modules_config.db"

.field public static final SCOPE_OPTIONAL:Ljava/lang/String; = "com.android.providers.telephony"

.field private static final SELF:Ljava/lang/String; = "io.github.okaidev.pickupcode"

.field public static final SQLITE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/sqlite3"

.field public static final TARGET_DIR:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clip(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 198
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 102
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 p2, 0x2000

    :try_start_2
    new-array p2, p2, [B

    .line 105
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 107
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :catchall_0
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void

    :catchall_2
    move-exception p2

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object p1, v0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catchall_4
    move-exception p2

    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_2

    .line 107
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_2
    if-eqz p1, :cond_3

    .line 108
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 109
    :catchall_6
    :cond_3
    throw p2
.end method

.method public static deploySqlite3(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "sqlite3"

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    new-instance v2, Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "sqlite3/sqlite3"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lio/github/okaidev/pickupcode/Repair;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "sqlite3/lib"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 61
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 64
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sqlite3/lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Lio/github/okaidev/pickupcode/Repair;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkdir -p /data/local/tmp/pickup_sqlite/lib; cp -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sqlite3 /data/local/tmp/pickup_sqlite/sqlite3; cp -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/lib/* /data/local/tmp/pickup_sqlite/lib/; chmod 755 /data/local/tmp/pickup_sqlite/sqlite3; chmod 755 /data/local/tmp/pickup_sqlite/lib; chmod 644 /data/local/tmp/pickup_sqlite/lib/*; echo DEPLOY_DONE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1e

    .line 79
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_2

    .line 80
    :cond_2
    aget-object v1, p0, v3

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-nez p0, :cond_4

    :goto_3
    move-object p0, v0

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    .line 81
    aget-object p0, p0, v2

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    const-string v2, "DEPLOY_DONE"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0xa0

    const-string v5, " "

    if-nez v2, :cond_6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u90e8\u7f72\u5931\u8d25\uff08su \u6267\u884c\uff09\uff1aexit \u8f93\u51fa="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lio/github/okaidev/pickupcode/Repair;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u3002\u8bf7\u786e\u8ba4\u5df2\u5728 Magisk \u5f39\u7a97\u4e2d\u5141\u8bb8\u6388\u6743\u3002"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v1, "LD_LIBRARY_PATH=/data/local/tmp/pickup_sqlite/lib /data/local/tmp/pickup_sqlite/sqlite3 --version"

    const/16 v2, 0xf

    .line 88
    invoke-static {v1, v2}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 90
    :cond_7
    aget-object v1, v1, v3

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-string v1, "3."

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u90e8\u7f72\u6210\u529f \u2713 sqlite3 "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/Repair;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff08\u5df2\u653e\u5165 /data/local/tmp/pickup_sqlite\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u90e8\u7f72\u5b8c\u6210\u4f46\u9a8c\u8bc1\u672a\u901a\u8fc7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lio/github/okaidev/pickupcode/Repair;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_7
    :try_start_1
    const-string p0, "\u90e8\u7f72\u5931\u8d25\uff1aAPK \u5185\u672a\u627e\u5230 sqlite3 \u8d44\u4ea7\uff08\u5b89\u88c5\u5305\u4e0d\u5b8c\u6574\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\uff09"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u90e8\u7f72\u5931\u8d25\uff08\u91ca\u653e\u8d44\u4ea7\uff09\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lsposedStatus(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Repair$LsposedStatus;
    .locals 11

    .line 128
    new-instance v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;-><init>()V

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->dbReadable:Z

    .line 130
    iput-boolean v1, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->moduleEnabled:Z

    const/4 v2, 0x0

    .line 131
    iput-object v2, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->missingScope:Ljava/lang/String;

    const-string v3, ""

    .line 132
    iput-object v3, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->scopeList:Ljava/lang/String;

    .line 133
    iput-object v3, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->detail:Ljava/lang/String;

    .line 143
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "lsp_query.sql"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, ".mode list\nSELECT \'EN=\' || enabled FROM modules_state WHERE module_pkg_name=\'io.github.okaidev.pickupcode\' AND user_id=0;\nSELECT \'SC=\' || app_pkg_name FROM scope WHERE module_pkg_name=\'io.github.okaidev.pickupcode\';\n"

    const-string v6, "UTF-8"

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 146
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LD_LIBRARY_PATH=/data/local/tmp/pickup_sqlite/lib /data/local/tmp/pickup_sqlite/sqlite3 /data/adb/lspd/config/modules_config.db < "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    .line 152
    invoke-static {v3, v4}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 154
    aget-object v5, v3, v1

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 160
    :cond_0
    iput-boolean v4, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->dbReadable:Z

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    aget-object v3, v3, v1

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move v7, v1

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v9, v3, v7

    .line 165
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EN="

    .line 166
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "EN=1"

    .line 167
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->moduleEnabled:Z

    goto :goto_1

    :cond_1
    const-string v10, "SC="

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 170
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "system"

    .line 172
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v4

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const-string v3, ", "

    .line 175
    invoke-static {v5, v3}, Lio/github/okaidev/pickupcode/Repair;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->scopeList:Ljava/lang/String;

    .line 176
    iput-boolean v8, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->hasStaleSystem:Z

    .line 177
    iget-boolean v3, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->moduleEnabled:Z

    if-eqz v3, :cond_8

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Repair;->scopeRequired(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    :goto_2
    if-ge v1, v4, :cond_6

    aget-object v6, p0, v1

    .line 181
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    const-string p0, "\u3001"

    invoke-static {v3, p0}, Lio/github/okaidev/pickupcode/Repair;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->missingScope:Ljava/lang/String;

    :cond_8
    return-object v0

    .line 155
    :cond_9
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bfb\u53d6 /data/adb/lspd/config/modules_config.db \u5931\u8d25\uff08"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_a

    const-string v1, "null"

    goto :goto_5

    .line 156
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v3, v4

    invoke-static {v2}, Lio/github/okaidev/pickupcode/Repair;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-static {v2}, Lio/github/okaidev/pickupcode/Repair;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lio/github/okaidev/pickupcode/Repair;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\uff09\u2014\u2014LSPosed \u672a\u5b89\u88c5\u6216\u8def\u5f84\u4e0d\u540c\uff0c\u8bf7\u624b\u52a8\u6838\u5bf9"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->detail:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception p0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQL \u6587\u4ef6\u5199\u5165\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->detail:Ljava/lang/String;

    return-object v0
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static scopeRequired(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "xiaomi"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "com.android.mms"

    const-string v1, "com.android.phone"

    const-string v2, "android"

    if-eqz p0, :cond_0

    const-string p0, "com.miui.notes"

    .line 41
    filled-new-array {v2, v1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
