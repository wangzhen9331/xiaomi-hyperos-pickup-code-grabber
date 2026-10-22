.class public final synthetic Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    iput-boolean p3, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$0:Lio/github/okaidev/pickupcode/LauncherActivity;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    iget-boolean v2, p0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->lambda$toggleSysDirectWrite$31$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Z)V

    return-void
.end method
