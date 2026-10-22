.class public Lio/github/okaidev/pickupcode/PickupWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "PickupWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;
    }
.end annotation


# static fields
.field public static final EXTRA_COMPACT:Ljava/lang/String; = "compact"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "compact"

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 36
    :cond_0
    new-instance p1, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;

    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/PickupWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method
