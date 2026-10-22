.class public Lio/github/okaidev/pickupcode/WidgetActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetActionReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static playAck(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 57
    new-instance v0, Lio/github/okaidev/pickupcode/WidgetActionReceiver$1;

    invoke-direct {v0, p1}, Lio/github/okaidev/pickupcode/WidgetActionReceiver$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/SoundPlayer;->play(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "io.github.okaidev.pickupcode.action.WIDGET_DONE"

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "code"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PICKUPDEBUG"

    if-eqz p2, :cond_3

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Lio/github/okaidev/pickupcode/TodoWriter;->markDone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "widget markDone err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 43
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "widget click \u2192 markDone code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " ok="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/WidgetActionReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goAsync failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 52
    :goto_1
    invoke-static {p1, p2}, Lio/github/okaidev/pickupcode/WidgetActionReceiver;->playAck(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void

    :cond_3
    :goto_2
    const-string p1, "widget click: \u7f3a\u5c11 code"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
