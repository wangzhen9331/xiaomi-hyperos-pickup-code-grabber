.class Lio/github/okaidev/pickupcode/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/SoundPlayer;->play(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$done:[Z

.field final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method constructor <init>([ZLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/SoundPlayer$1;->val$done:[Z

    iput-object p2, p0, Lio/github/okaidev/pickupcode/SoundPlayer$1;->val$onFinish:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/SoundPlayer$1;->val$done:[Z

    const/4 v1, 0x0

    .line 46
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 47
    aput-boolean v2, v0, v1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/SoundPlayer$1;->val$onFinish:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 49
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
