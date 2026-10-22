.class Lio/github/okaidev/pickupcode/SoundPlayer$3;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/SoundPlayer;->beep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tg:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Landroid/media/ToneGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/SoundPlayer$3;->val$tg:Landroid/media/ToneGenerator;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/SoundPlayer$3;->val$tg:Landroid/media/ToneGenerator;

    .line 99
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
