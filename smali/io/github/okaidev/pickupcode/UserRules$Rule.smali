.class public Lio/github/okaidev/pickupcode/UserRules$Rule;
.super Ljava/lang/Object;
.source "UserRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/UserRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field public codeGroup:I

.field public codeRegex:Ljava/lang/String;

.field transient compiledOk:Z

.field public enabled:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field transient pCode:Ljava/util/regex/Pattern;

.field transient pPlace:Ljava/util/regex/Pattern;

.field public place:Ljava/lang/String;

.field public placeGroup:I

.field public placeRegex:Ljava/lang/String;

.field public senderContains:Ljava/lang/String;

.field public senderMode:Ljava/lang/String;

.field public senderValue:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public testCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$TestCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ANY"

    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    iput v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    return-void
.end method
