.class public final synthetic Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/UserRules;->lambda$syncToSystemProcess$0(ZLjava/util/List;)V

    return-void
.end method
