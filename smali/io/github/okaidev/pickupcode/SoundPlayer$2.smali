.class Lio/github/okaidev/pickupcode/SoundPlayer$2;
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
.field final synthetic val$finishOnce:Ljava/lang/Runnable;

.field final synthetic val$rt:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/SoundPlayer$2;->val$rt:Landroid/media/Ringtone;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/SoundPlayer$2;->val$finishOnce:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/SoundPlayer$2;->val$rt:Landroid/media/Ringtone;

    .line 66
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    invoke-static {}, Lio/github/okaidev/pickupcode/SoundPlayer;->-$$Nest$sfgetsCurrent()Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/SoundPlayer$2;->val$rt:Landroid/media/Ringtone;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/SoundPlayer;->-$$Nest$sfputsCurrent(Landroid/media/Ringtone;)V

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/SoundPlayer$2;->val$finishOnce:Ljava/lang/Runnable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
