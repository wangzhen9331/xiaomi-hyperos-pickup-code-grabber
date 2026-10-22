.class public final synthetic Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lio/github/okaidev/pickupcode/UserRulesActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$3:Landroid/widget/TextView;

    iget-object v4, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;->f$4:Landroid/widget/EditText;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lio/github/okaidev/pickupcode/UserRulesActivity;->lambda$showEditor$12$io-github-okaidev-pickupcode-UserRulesActivity([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
