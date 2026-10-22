.class public Lio/github/okaidev/pickupcode/UserRules$TestCase;
.super Ljava/lang/Object;
.source "UserRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/UserRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestCase"
.end annotation


# instance fields
.field public expectCode:Ljava/lang/String;

.field public sms:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    return-void
.end method
