.class public Lio/github/okaidev/pickupcode/RulesUpdater;
.super Ljava/lang/Object;
.source "RulesUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "\u79bb\u7ebf\u7248\uff1a\u89c4\u5219\u56fa\u5b9a\u4f7f\u7528\u5b89\u88c5\u5305\u5185\u7f6e\u7248\u672c\uff0c\u4e0d\u8054\u7f51\u66f4\u65b0"

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    :try_start_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method

.method public static maybeCheck(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
