.class Lio/github/okaidev/pickupcode/UserRules$1;
.super Ljava/lang/Object;
.source "UserRules.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/UserRules;->sortedBySpecificity(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/github/okaidev/pickupcode/UserRules$Rule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/github/okaidev/pickupcode/UserRules$Rule;Lio/github/okaidev/pickupcode/UserRules$Rule;)I
    .locals 0

    .line 637
    invoke-static {p2}, Lio/github/okaidev/pickupcode/UserRules;->specificity(Lio/github/okaidev/pickupcode/UserRules$Rule;)I

    move-result p2

    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->specificity(Lio/github/okaidev/pickupcode/UserRules$Rule;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 635
    check-cast p1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    check-cast p2, Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-virtual {p0, p1, p2}, Lio/github/okaidev/pickupcode/UserRules$1;->compare(Lio/github/okaidev/pickupcode/UserRules$Rule;Lio/github/okaidev/pickupcode/UserRules$Rule;)I

    move-result p1

    return p1
.end method
