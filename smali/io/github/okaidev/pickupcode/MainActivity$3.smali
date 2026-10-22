.class Lio/github/okaidev/pickupcode/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/okaidev/pickupcode/MainActivity;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$3;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$3;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$fputshowingDone(Lio/github/okaidev/pickupcode/MainActivity;Z)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$3;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-static {p1}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mapplyTabStyle(Lio/github/okaidev/pickupcode/MainActivity;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$3;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-static {p1}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mreload(Lio/github/okaidev/pickupcode/MainActivity;)V

    return-void
.end method
