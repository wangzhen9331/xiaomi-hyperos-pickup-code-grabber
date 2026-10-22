.class Lio/github/okaidev/pickupcode/PickupWidgetProvider$1;
.super Ljava/lang/Object;
.source "PickupWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/PickupWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->-$$Nest$sfgetsApp()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->-$$Nest$smdoRefresh(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
