.class public Lio/github/okaidev/pickupcode/NotiHook;
.super Ljava/lang/Object;
.source "NotiHook.java"


# static fields
.field private static final FLAG_FILE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/enable_noti_hook"

.field private static final PKG_WHITELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"


# direct methods
.method static bridge synthetic -$$Nest$smhandleEnqueue(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotiHook;->handleEnqueue(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.cainiao.wireless"

    const-string v2, "com.cainiao.guoguo"

    const-string v3, "com.jingdong.app.mall"

    const-string v4, "com.taobao.taobao"

    const-string v5, "com.xunmeng.pinduoduo"

    const-string v6, "com.sf.cdsibm"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/github/okaidev/pickupcode/NotiHook;->PKG_WHITELIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildText(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "android.title"

    .line 143
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.text"

    .line 144
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android.bigText"

    .line 145
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " "

    if-eqz v1, :cond_1

    .line 146
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p0, :cond_3

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :catchall_0
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findNotification([Ljava/lang/Object;)Landroid/app/Notification;
    .locals 4

    .line 131
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 132
    instance-of v3, v2, Landroid/app/Notification;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/Notification;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleEnqueue(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    const-string v0, "\u901a\u77e5:"

    .line 81
    :try_start_0
    iget-object v1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 83
    array-length v2, v1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 84
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 85
    invoke-static {v2}, Lio/github/okaidev/pickupcode/NotiHook;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lio/github/okaidev/pickupcode/NotiHook;->isFlagOn()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 89
    :cond_2
    invoke-static {v1}, Lio/github/okaidev/pickupcode/NotiHook;->findNotification([Ljava/lang/Object;)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 92
    :cond_3
    invoke-static {v1}, Lio/github/okaidev/pickupcode/NotiHook;->buildText(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 97
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/PickupExtractor;->hasFeatureWords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/PickupExtractor;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    invoke-static {p0, v2, v1}, Lio/github/okaidev/pickupcode/NotiRelay;->relayMissed(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_6
    invoke-static {p0, v2, v1, v0}, Lio/github/okaidev/pickupcode/NotiRelay;->relayHit(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_7
    :goto_0
    return-void
.end method

.method public static install(Ljava/lang/ClassLoader;)V
    .locals 4

    const-string v0, "PICKUPDEBUG: user rules loaded: "

    const-string v1, "PICKUPDEBUG: load user rules skipped: "

    .line 53
    :try_start_0
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->loadForSystemProcess()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 52
    invoke-static {v3, v2}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRules(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :goto_0
    const-string v0, "com.android.server.notification.NotificationManagerService"

    .line 60
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "enqueueNotificationInternal"

    .line 62
    new-instance v1, Lio/github/okaidev/pickupcode/NotiHook$1;

    invoke-direct {v1}, Lio/github/okaidev/pickupcode/NotiHook$1;-><init>()V

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    const-string p0, "PICKUPDEBUG: NotiHook installed on NotificationManagerService"

    .line 72
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PICKUPDEBUG: NotiHook install FAILED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static isFlagOn()Z
    .locals 4

    const/4 v0, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/pickup_sqlite/enable_noti_hook"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 120
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static isWhitelisted(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/NotiHook;->PKG_WHITELIST:Ljava/util/List;

    .line 112
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
