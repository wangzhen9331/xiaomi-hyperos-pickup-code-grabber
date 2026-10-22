.class Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;
.super Ljava/lang/Object;
.source "SmsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/SmsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingPart"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field firstSeen:J

.field parts:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/okaidev/pickupcode/SmsBridge$PendingPart-IA;)V
    .locals 0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;-><init>()V

    return-void
.end method
