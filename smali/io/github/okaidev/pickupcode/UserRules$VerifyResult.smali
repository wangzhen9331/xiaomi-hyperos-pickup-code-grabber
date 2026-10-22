.class public Lio/github/okaidev/pickupcode/UserRules$VerifyResult;
.super Ljava/lang/Object;
.source "UserRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/UserRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyResult"
.end annotation


# instance fields
.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public ok:Z

.field public passed:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    return-void
.end method
