.class public Lio/github/okaidev/pickupcode/Diagnostics$Check;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/Diagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Check"
.end annotation


# instance fields
.field public final detail:Ljava/lang/String;

.field public final ok:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    iput-boolean p2, p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    iput-object p3, p0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    return-void
.end method
