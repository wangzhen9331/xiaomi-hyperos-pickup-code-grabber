.class public Lio/github/okaidev/pickupcode/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static explainOffline(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "\u5f53\u524d\u4e3a\u79bb\u7ebf\u7248\uff08\u65e0\u8054\u7f51\u6743\u9650\uff09\uff0c\u4e0d\u68c0\u67e5\u66f4\u65b0"

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static isOfflineBuild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static maybeCheck(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method
