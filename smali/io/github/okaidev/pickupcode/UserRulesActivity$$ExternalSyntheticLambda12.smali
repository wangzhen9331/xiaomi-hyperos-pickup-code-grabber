.class public final synthetic Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;->f$3:Landroid/widget/EditText;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lio/github/okaidev/pickupcode/UserRulesActivity;->lambda$showEditor$11([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
