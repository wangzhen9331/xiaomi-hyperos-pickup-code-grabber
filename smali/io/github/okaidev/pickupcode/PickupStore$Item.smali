.class public Lio/github/okaidev/pickupcode/PickupStore$Item;
.super Ljava/lang/Object;
.source "PickupStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/PickupStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public carrier:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public done:Z

.field public doneTs:J

.field public id:J

.field public place:Ljava/lang/String;

.field public ts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
