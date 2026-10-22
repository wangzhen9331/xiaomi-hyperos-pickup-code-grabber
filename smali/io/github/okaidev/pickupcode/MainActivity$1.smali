.class Lio/github/okaidev/pickupcode/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/MainActivity;->notifyDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lio/github/okaidev/pickupcode/MainActivity;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$1;->val$a:Lio/github/okaidev/pickupcode/MainActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$1;->val$a:Lio/github/okaidev/pickupcode/MainActivity;

    .line 55
    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mreload(Lio/github/okaidev/pickupcode/MainActivity;)V

    return-void
.end method
