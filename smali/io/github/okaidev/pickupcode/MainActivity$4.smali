.class Lio/github/okaidev/pickupcode/MainActivity$4;
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

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$4;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$4;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity$4;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    const-class v2, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lio/github/okaidev/pickupcode/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
