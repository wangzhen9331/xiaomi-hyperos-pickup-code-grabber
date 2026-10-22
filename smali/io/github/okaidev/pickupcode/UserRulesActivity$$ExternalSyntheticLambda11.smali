.class public final synthetic Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

.field public final synthetic f$1:Lio/github/okaidev/pickupcode/UserRules$Rule;


# direct methods
.method public synthetic constructor <init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;->f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;->f$1:Lio/github/okaidev/pickupcode/UserRules$Rule;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;->f$0:Lio/github/okaidev/pickupcode/UserRulesActivity;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;->f$1:Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-virtual {v0, v1, p1, p2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->lambda$renderList$7$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/content/DialogInterface;I)V

    return-void
.end method
