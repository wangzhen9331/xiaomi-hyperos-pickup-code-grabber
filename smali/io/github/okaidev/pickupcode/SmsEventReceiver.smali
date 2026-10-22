.class public Lio/github/okaidev/pickupcode/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsEventReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "io.github.okaidev.pickupcode.action.ON_SMS"

.field private static final STALE_SMS_MS:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "PICKUPDEBUG"

    if-eqz p2, :cond_7

    const-string v1, "io.github.okaidev.pickupcode.action.ON_SMS"

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receiver init rules skipped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "sender"

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 35
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "miss"

    const/4 v6, 0x0

    .line 37
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "EVENT: sender="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ts="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " body="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    if-nez v2, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x78

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 48
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v8, 0x927c0

    cmp-long v8, v5, v8

    if-lez v8, :cond_3

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EVENT: \u5386\u53f2\u77ed\u4fe1\uff0c\u4e22\u5f03\uff08age="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    div-long/2addr v5, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    move-object v1, v7

    .line 56
    :cond_4
    invoke-static {p1, v1, v2}, Lio/github/okaidev/pickupcode/MissedSmsStore;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EVENT: \u901a\u77e5\u6f0f\u6293\u6837\u672c\u5df2\u8bb0\u5f55\u9519\u9898\u672c"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_5
    invoke-static {v1, v2}, Lio/github/okaidev/pickupcode/PickupExtractor;->lookLikePickupSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p1, "EVENT: \u975e\u53d6\u4ef6\u77ed\u4fe1\uff0c\u8df3\u8fc7"

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_6
    invoke-static {p1, v1, v2, v3, v4}, Lio/github/okaidev/pickupcode/TodoWriter;->handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "EVENT: \u5df2\u5199\u5165\u5f85\u529e "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
