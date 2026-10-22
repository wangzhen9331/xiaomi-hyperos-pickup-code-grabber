.class public final synthetic Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lio/github/okaidev/pickupcode/LauncherActivity;ZLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

    iput-boolean p2, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$1:Z

    iput-object p3, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$1:Z

    iget-object v2, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->lambda$toggleSysDirectWrite$32$io-github-okaidev-pickupcode-LauncherActivity(ZLandroid/widget/TextView;)V

    return-void
.end method
