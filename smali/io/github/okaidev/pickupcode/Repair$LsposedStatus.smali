.class public Lio/github/okaidev/pickupcode/Repair$LsposedStatus;
.super Ljava/lang/Object;
.source "Repair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/Repair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsposedStatus"
.end annotation


# instance fields
.field public dbReadable:Z

.field public detail:Ljava/lang/String;

.field public hasStaleSystem:Z

.field public missingScope:Ljava/lang/String;

.field public moduleEnabled:Z

.field public scopeList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
