.class Lio/github/okaidev/pickupcode/WidgetActionReceiver$1;
.super Ljava/lang/Object;
.source "WidgetActionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/WidgetActionReceiver;->playAck(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pr:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetActionReceiver$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/WidgetActionReceiver$1;->val$pr:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
