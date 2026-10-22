.class public Lio/github/okaidev/pickupcode/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/Diagnostics$Check;
    }
.end annotation


# static fields
.field private static final LIBS:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/lib"

.field private static final PHONE_MASK:Ljava/lang/String; = "138****8888"

.field private static final P_CODE:Ljava/util/regex/Pattern;

.field private static final P_PHONE:Ljava/util/regex/Pattern;

.field private static final SQLITE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/sqlite3"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile injectedLive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<!\\d)1[3-9]\\d{9}(?!\\d)"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/Diagnostics;->P_PHONE:Ljava/util/regex/Pattern;

    const-string v0, "\\b\\d{1,4}-\\d{1,2}-\\d{1,5}\\b"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/Diagnostics;->P_CODE:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-boolean v0, Lio/github/okaidev/pickupcode/Diagnostics;->injectedLive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LD()Ljava/lang/String;
    .locals 1

    const-string v0, "LD_LIBRARY_PATH=/data/local/tmp/pickup_sqlite/lib"

    return-object v0
.end method

.method private static checkLsposedInject(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 7

    sget-boolean v0, Lio/github/okaidev/pickupcode/Diagnostics;->injectedLive:Z

    const/4 v1, 0x1

    const-string v2, "LSPosed \u6ce8\u5165"

    if-eqz v0, :cond_0

    .line 107
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v0, "\u6a21\u5757\u5df2\u88ab LSPosed \u52a0\u8f7d\uff08\u5b9e\u65f6\u68c0\u6d4b\uff09"

    invoke-direct {p0, v2, v1, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 110
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "pickup_injected.flag"

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long p0, v3, v5

    if-gez p0, :cond_1

    const-string p0, "\u521a\u521a"

    goto :goto_0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5206\u949f\u524d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    :goto_0
    new-instance v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6a21\u5757\u5df2\u88ab LSPosed \u52a0\u8f7d\uff08\u6807\u8bb0\u4e8e "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\uff09"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 116
    :cond_2
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const/4 v0, 0x0

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u52a0\u8f7d\u75d5\u8ff9\u3002\u82e5\u53d6\u4ef6\u7801\u80fd\u6b63\u5e38\u6293\u53d6\u53ef\u5ffd\u7565\uff1b\u82e5\u6293\u4e0d\u5230\uff1a\u786e\u8ba4 LSPosed \u5df2\u52fe\u9009\u672c\u6a21\u5757\uff0c\u91cd\u542f\u624b\u673a\u540e\u6253\u5f00\u672c App \u590d\u68c0"

    invoke-direct {p0, v2, v0, v1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method

.method private static checkNotesDb(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 13

    const-string v0, "__probe__"

    const-string v1, "\u53d6\u4ef6\u7801\u672c\u5730\u5e93"

    const-string v2, "\u53ef\u8bfb\u5199 \u2713\uff1b\u5f53\u524d\u5f85\u53d6 "

    .line 208
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pickup_todo"

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 212
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupTodoBridge;->installed(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "\u53d6\u4ef6\u67dc App"

    if-nez p0, :cond_0

    .line 213
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v1, "\u672a\u5b89\u88c5\u300c\u53d6\u4ef6\u67dc\u300dApp \u2192 \u8bf7\u5148\u5b89\u88c5\u914d\u5957 App\uff08\u53d6\u4ef6\u67dc-v1.0.0.apk\uff09\uff0c\u518d\u9009\u672c\u540e\u7aef"

    invoke-direct {p0, v0, v5, v1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 216
    :cond_0
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v1, "\u5df2\u5b89\u88c5 \u2713\uff1b\u5199\u5165\u7ecf\u7b7e\u540d\u6743\u9650\u4fdd\u62a4\u7684 ContentProvider\uff0c\u65e0\u9700 root / LSPosed"

    invoke-direct {p0, v0, v4, v1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 223
    :cond_1
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupStore;->countPending()I

    move-result v3

    .line 225
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/PickupStore;->delete(Ljava/lang/String;)Z

    const-string v7, "__probe__"

    const-string v8, "\u81ea\u68c0"

    const-string v9, ""

    const-string v10, ""

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lio/github/okaidev/pickupcode/PickupStore;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 228
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/PickupStore;->delete(Ljava/lang/String;)Z

    .line 229
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u6761\uff08\u5199\u5165\u4e0e\u663e\u793a\u540c\u8fdb\u7a0b\uff0c\u65e0\u9700 root / LSPosed\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v4, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 232
    :cond_2
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v0, "\u672c\u5730\u5e93\u5199\u5165\u5931\u8d25 \u2192 \u68c0\u67e5\u5b58\u50a8\u7a7a\u95f4 / \u5e94\u7528\u6570\u636e\u6743\u9650"

    invoke-direct {p0, v1, v5, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 234
    new-instance v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672c\u5730\u5e93\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v5, p0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static checkNotification(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    const-string v3, "\u901a\u77e5\u6743\u9650"

    if-ge v0, v1, :cond_0

    .line 166
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v0, "Android 12 \u53ca\u4ee5\u4e0b\u9ed8\u8ba4\u5141\u8bb8"

    invoke-direct {p0, v3, v2, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 170
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v0, "\u5df2\u6388\u6743 \u2713"

    invoke-direct {p0, v3, v2, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 171
    :cond_1
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const/4 v0, 0x0

    const-string v1, "\u672a\u6388\u6743 \u2192 \u7cfb\u7edf\u8bbe\u7f6e \u2192 \u5e94\u7528 \u2192 \u53d6\u4ef6\u7801\u52a9\u624b \u2192 \u901a\u77e5\uff0c\u5141\u8bb8\uff08\u5426\u5219\u6536\u4e0d\u5230\u53d6\u4ef6\u7801\u5f39\u7a97\uff09"

    invoke-direct {p0, v3, v0, v1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method

.method private static checkRoot()Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 7

    const-string v0, "/sbin/su"

    const-string v1, "/su/bin/su"

    const-string v2, "su"

    const-string v3, "/product/bin/su"

    const-string v4, "/system/bin/su"

    .line 177
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 178
    aget-object v3, v0, v2

    const-string v4, "id"

    const/16 v5, 0x14

    .line 179
    invoke-static {v3, v4, v5}, Lio/github/okaidev/pickupcode/Diagnostics;->suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 180
    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    const-string v6, "uid=0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    aget-object v0, v4, v1

    const-string v2, "uid=0(root)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "root"

    goto :goto_1

    :cond_0
    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_1
    new-instance v1, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "root \u6388\u6743\uff08"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid=0 \u2713 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v2, "root \u6388\u6743"

    const-string v3, "\u6240\u6709 su \u8def\u5f84\u4e0d\u53ef\u7528\u6216\u88ab\u62d2\u7edd \u2192 \u786e\u8ba4 Magisk \u5df2\u5b89\u88c5\uff1b\u82e5\u5f39\u4e86\u6388\u6743\u6846\u8bf7\u9009\u3010\u5141\u8bb8\u3011\u5e76\u52fe\u9009\"\u4e0d\u518d\u8be2\u95ee\""

    invoke-direct {v0, v2, v1, v3}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static checkScope(Landroid/content/Context;Z)Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "LSPosed \u4f5c\u7528\u57df"

    if-nez p1, :cond_0

    .line 133
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string p1, "\u9700\u8981 root \u624d\u80fd\u81ea\u52a8\u6838\u5bf9\uff08\u89c1\u4e0a\u4e00\u9879\uff09"

    invoke-direct {p0, v1, v0, p1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 135
    :cond_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Repair;->lsposedStatus(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Repair$LsposedStatus;

    move-result-object p0

    .line 136
    iget-boolean p1, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->dbReadable:Z

    if-nez p1, :cond_1

    .line 137
    new-instance p1, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u6cd5\u8bfb\u53d6 LSPosed \u914d\u7f6e\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->detail:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\uff09\uff1b\u8bf7\u624b\u52a8\u5728 LSPosed \u2192 \u6a21\u5757 \u2192 \u53d6\u4ef6\u7801\u52a9\u624b \u52fe\u9009 5 \u9879\u4f5c\u7528\u57df\uff08\u26a0\ufe0f \u5fc5\u542b\u300cAndroid \u7cfb\u7edf/android\u300d\uff09"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p1

    .line 141
    :cond_1
    iget-boolean p1, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->moduleEnabled:Z

    if-nez p1, :cond_2

    .line 142
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string p1, "\u6a21\u5757\u5728 LSPosed \u4e2d\u672a\u542f\u7528 \u2192 LSPosed \u7ba1\u7406\u5668 \u2192 \u6a21\u5757 \u2192 \u52fe\u9009\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\uff0c\u7136\u540e\u91cd\u542f\u624b\u673a"

    invoke-direct {p0, v1, v0, p1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0

    .line 145
    :cond_2
    iget-object p1, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->missingScope:Ljava/lang/String;

    const-string v2, ""

    if-nez p1, :cond_4

    .line 146
    iget-boolean p1, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->hasStaleSystem:Z

    if-eqz p1, :cond_3

    const-string v2, "\uff08\u53d1\u73b0\u52fe\u4e86\u300c\u7cfb\u7edf\u6846\u67b6/system\u300d\u2014\u2014\u5b83\u65e0\u6548\uff0c\u8bf7\u76f4\u63a5\u5728 LSPosed \u4f5c\u7528\u57df\u91cc\u5220\u9664\u8fd9\u4e00\u9879\uff09"

    .line 149
    :cond_3
    new-instance p1, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5fc5\u9700\u76ee\u6807\u9f50\u5168 \u2713 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->scopeList:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0, p0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object p1

    .line 152
    :cond_4
    iget-object p1, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->missingScope:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 153
    new-instance v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f3a\u5c11\u5fc5\u9700\u4f5c\u7528\u57df\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->missingScope:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 LSPosed \u7ba1\u7406\u5668 \u2192 \u6a21\u5757 \u2192 \u53d6\u4ef6\u7801\u52a9\u624b \u2192 \u4f5c\u7528\u57df\u8865\u52fe\u540e\u3010\u91cd\u542f\u624b\u673a\u3011\uff1b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_5

    const-string v2, "\u26a0\ufe0f android \u5728\u5217\u8868\u5e95\u90e8\u300cAndroid \u7cfb\u7edf\u300d\u2014\u2014\u8be5\u6761\u76ee\u3010\u4e0d\u5e26\u63a8\u8350\u89d2\u6807\u3011\u4e5f\u5fc5\u987b\u52fe\u9009\uff1b\u5e26\u89d2\u6807\u7684 5 \u4e2a\u63a8\u8350\u5e94\u7528\u4e0d\u542b\u5b83\uff0c\u522b\u52fe\u6210\u4e2d\u90e8\u7684\u300c\u7cfb\u7edf\u6846\u67b6\uff08system\uff09\u300d\uff1b"

    .line 159
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\u5f53\u524d\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 160
    iget-object v2, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->scopeList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, "(\u7a7a)"

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lio/github/okaidev/pickupcode/Repair$LsposedStatus;->scopeList:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, v0, p0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v3
.end method

.method private static checkSqlite3()Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 6

    const-string v0, "ls -l /data/local/tmp/pickup_sqlite/sqlite3"

    const/16 v1, 0xf

    const-string v2, "su"

    .line 192
    invoke-static {v2, v0, v1}, Lio/github/okaidev/pickupcode/Diagnostics;->suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 193
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-static {v4}, Lio/github/okaidev/pickupcode/Diagnostics;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/github/okaidev/pickupcode/Diagnostics;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "No such file"

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "sqlite3 \u90e8\u7f72"

    if-eqz v3, :cond_1

    .line 195
    new-instance v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v1, "/data/local/tmp/pickup_sqlite/sqlite3 \u4e0d\u5b58\u5728 \u2192 \u70b9\u4e0b\u65b9\u300c\ud83d\ude80 \u4e00\u952e\u90e8\u7f72 sqlite3\u300d\u81ea\u52a8\u5b8c\u6210\uff08\u65e0\u9700 adb/Termux\uff09"

    invoke-direct {v0, v4, v2, v1}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    :cond_1
    const-string v3, "sqlite3"

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    new-instance v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v2, "/data/local/tmp/pickup_sqlite/sqlite3 \u5b58\u5728 \u2713"

    invoke-direct {v0, v4, v1, v2}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 201
    :cond_2
    new-instance v1, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u63a2\u6d4b\u5931\u8d25\uff1a"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x78

    invoke-static {v0, v5}, Lio/github/okaidev/pickupcode/Diagnostics;->tail(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public static collectReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, " (code "

    const/4 v1, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, "unknown"

    .line 251
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "===== \u53d6\u4ef6\u7801\u52a9\u624b \u8bca\u65ad\u62a5\u544a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " =====\n\u751f\u6210\u65f6\u95f4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n---- \u57fa\u672c\u4fe1\u606f ----\n\u8bbe\u5907: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff08"

    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\uff09\n\u7cfb\u7edf: Android "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (SDK "

    .line 259
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") / build "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.miui.ui.version.name"

    .line 260
    invoke-static {v2}, Lio/github/okaidev/pickupcode/Diagnostics;->prop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ro.mi.os.version.name"

    .line 261
    invoke-static {v6}, Lio/github/okaidev/pickupcode/Diagnostics;->prop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 262
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v2, "\u6f8e\u6e43OS: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "MIUI: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const-string v2, "ro.build.version.oplusRom"

    .line 265
    invoke-static {v2}, Lio/github/okaidev/pickupcode/Diagnostics;->prop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ColorOS: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "\u5199\u5165\u540e\u7aef: "

    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff09\nMagisk: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "magisk.version"

    .line 269
    invoke-static {v2}, Lio/github/okaidev/pickupcode/Diagnostics;->prop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v4, "\u6a21\u5757\u7248\u672c: "

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const-string v0, "\n---- \u90e8\u7f72\u4f53\u68c0 ----\n"

    .line 276
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :try_start_2
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->healthCheck(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    .line 281
    iget-boolean v2, v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-eqz v2, :cond_3

    const-string v2, "[\u2713] "

    goto :goto_3

    :cond_3
    const-string v2, "[\u2717] "

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    const-string v0, "\u4f53\u68c0\u5f02\u5e38: "

    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, "\n---- \u6700\u8fd1\u4e00\u6b21\u5199\u5e93\u7ed3\u679c ----\n"

    .line 286
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {}, Lio/github/okaidev/pickupcode/TodoWriter;->getLastWriteDiag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n\n---- PICKUPDEBUG \u65e5\u5fd7\uff08root \u63d0\u53d6\uff0c\u8fd1 400 \u884c\uff0c\u5df2\u8131\u654f\uff09----\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "logcat -d -s PICKUPDEBUG:* | tail -n 400"

    const/16 v0, 0x19

    const-string v2, "su"

    .line 292
    invoke-static {v2, p0, v0}, Lio/github/okaidev/pickupcode/Diagnostics;->suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "(\u63d0\u53d6\u5931\u8d25)"

    goto :goto_4

    .line 293
    :cond_5
    aget-object p0, p0, v1

    if-nez p0, :cond_6

    const-string p0, ""

    .line 294
    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "(\u65e0 PICKUPDEBUG \u65e5\u5fd7\u2014\u2014\u8bf4\u660e Hook \u4ece\u672a\u89e6\u53d1\uff0c\u5148\u68c0\u67e5\u4f5c\u7528\u57df)"

    goto :goto_5

    :cond_7
    move-object v0, p0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n---- \u88ab\u6ce8\u5165\u7684\u8fdb\u7a0b\uff08\u4ece\u65e5\u5fd7\u7edf\u8ba1\uff09----\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const-string v2, "handleLoadPackage: pkg=([\\w.]+)"

    .line 298
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 299
    :goto_6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 300
    :cond_8
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "(\u672a\u7edf\u8ba1\u5230\u2014\u2014\u65e5\u5fd7\u4e3a\u7a7a)"

    .line 301
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 303
    :cond_9
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    const-string p0, "io.github.okaidev.pickupcode"

    .line 304
    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "com.android.mms"

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.android.phone"

    .line 306
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.android.providers.telephony"

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "android"

    .line 308
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v1, v4

    :cond_c
    const-string v0, "\u65e5\u5fd7\u7ebf\u7d22\uff08\u4ec5\u4f9b\u53c2\u8003\uff0c\u6700\u7ec8\u4ee5\u4f53\u68c0\u9996\u9879\u7684\u5b9e\u65f6\u68c0\u6d4b\u4e3a\u51c6\uff09\uff1a\u6a21\u5757\u81ea\u8eab"

    .line 312
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_d

    const-string p0, "\u51fa\u73b0\u8fc7 \u2713"

    goto :goto_8

    :cond_d
    const-string p0, "\u672c\u6b21\u672a\u89c1 \u2717"

    .line 313
    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff1bHook \u76ee\u6807\u8fdb\u7a0b"

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v1, :cond_e

    const-string v0, "\u6709 \u2713"

    goto :goto_9

    :cond_e
    const-string v0, "\u672c\u6b21\u672a\u89c1 \u2717\uff08\u53ef\u80fd\u4f5c\u7528\u57df\u672a\u52fe\u9009\u6216\u8fdb\u7a0b\u5c1a\u672a\u91cd\u542f\uff09"

    :goto_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 315
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string p0, "\n---- LSPosed modules.log \u5c3e\u90e8\uff08\u5df2\u8131\u654f\uff09----\n"

    .line 317
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {}, Lio/github/okaidev/pickupcode/Diagnostics;->readModulesLog()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "(\u8bfb\u53d6\u5931\u8d25\u2014\u2014\u53ef\u624b\u52a8\u4ece LSPosed \u7ba1\u7406\u5668\u5bfc\u51fa\u6a21\u5757\u65e5\u5fd7)"

    :cond_f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n\n===== \u62a5\u544a\u7ed3\u675f\uff08\u5185\u5bb9\u5df2\u8131\u654f\uff1a\u624b\u673a\u53f7/\u53d6\u4ef6\u7801\uff09=====\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 392
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static exportAndShare(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "text/plain"

    const-string v1, "Download/"

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pickup_diag_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MMdd-HHmmss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x1d

    const-string v5, "UTF-8"

    if-lt v3, v4, :cond_0

    .line 333
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_display_name"

    .line 334
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime_type"

    .line 335
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "relative_path"

    .line 336
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 340
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 341
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 347
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 349
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 351
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(\u4fdd\u5b58\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v3, "\u53d6\u4ef6\u7801\u52a9\u624b\u8bca\u65ad\u62a5\u544a"

    .line 359
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 360
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 361
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "\u5206\u4eab\u8bca\u65ad\u62a5\u544a"

    .line 362
    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v1
.end method

.method public static healthCheck(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/Diagnostics$Check;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->checkLsposedInject(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Lio/github/okaidev/pickupcode/Diagnostics;->checkRoot()Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-boolean v2, v1, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    invoke-static {p0, v2}, Lio/github/okaidev/pickupcode/Diagnostics;->checkScope(Landroid/content/Context;Z)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->checkNotification(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-boolean v1, v1, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-static {}, Lio/github/okaidev/pickupcode/Diagnostics;->checkSqlite3()Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->checkNotesDb(Landroid/content/Context;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v1, "sqlite3 \u90e8\u7f72"

    const/4 v2, 0x0

    const-string v3, "\u9700\u8981\u5148\u6709 root \u624d\u80fd\u68c0\u6d4b\uff08\u89c1\u4e0a\u4e00\u9879\uff09"

    invoke-direct {p0, v1, v2, v3}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    const-string v1, "\u5f85\u529e\u5e93\u8bbf\u95ee"

    invoke-direct {p0, v1, v2, v3}, Lio/github/okaidev/pickupcode/Diagnostics$Check;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static markInjectedLive()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lio/github/okaidev/pickupcode/Diagnostics;->injectedLive:Z

    return-void
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static prop(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 401
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 402
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private static readModulesLog()Ljava/lang/String;
    .locals 7

    const-string v0, "/data/adb/lsposed/logs/modules.log"

    const-string v1, "/data/adb/lsposed/modules.log"

    const-string v2, "/data/adb/lspd/log/modules.log"

    .line 410
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 415
    aget-object v3, v0, v2

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tail -n 200 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    const-string v6, "su"

    invoke-static {v6, v4, v5}, Lio/github/okaidev/pickupcode/Diagnostics;->suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 417
    aget-object v5, v4, v1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v4, v1

    const-string v6, "No such file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lio/github/okaidev/pickupcode/Diagnostics;->P_PHONE:Ljava/util/regex/Pattern;

    .line 427
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "138****8888"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/github/okaidev/pickupcode/Diagnostics;->P_CODE:Ljava/util/regex/Pattern;

    .line 428
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 429
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 430
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "XX-X-XXXX"

    .line 431
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9

    const-string v0, "\""

    const-string v1, "(\u8d85\u65f6 "

    .line 374
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "sh"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "-c"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, " -M -c \""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "\'"

    .line 375
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v4, p1

    .line 374
    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v0}, Lio/github/okaidev/pickupcode/Diagnostics;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 379
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v2}, Lio/github/okaidev/pickupcode/Diagnostics;->drain(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    int-to-long v4, p2

    .line 380
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5, v8}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    new-array p0, v3, [Ljava/lang/String;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0

    :cond_0
    new-array p0, v3, [Ljava/lang/String;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 386
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    filled-new-array {p1, p1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    const-string v0, "/sbin/su"

    const-string v1, "/su/bin/su"

    const-string v2, "su"

    const-string v3, "/product/bin/su"

    const-string v4, "/system/bin/su"

    .line 79
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 81
    aget-object v4, v0, v3

    .line 82
    invoke-static {v4, p0, p1}, Lio/github/okaidev/pickupcode/Diagnostics;->suExec(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 83
    aget-object v5, v4, v2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    if-eqz v4, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static tail(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 439
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 440
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
