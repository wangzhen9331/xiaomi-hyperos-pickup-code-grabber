.class public Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;
.super Ljava/lang/Object;
.source "MissedSmsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/MissedSmsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public sender:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;->timestamp:J

    iput-object p3, p0, Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;->sender:Ljava/lang/String;

    iput-object p4, p0, Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;->body:Ljava/lang/String;

    return-void
.end method
