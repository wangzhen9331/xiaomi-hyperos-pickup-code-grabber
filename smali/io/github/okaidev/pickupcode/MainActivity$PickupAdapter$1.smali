.class Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

.field final synthetic val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;Lio/github/okaidev/pickupcode/PickupStore$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 274
    iget-object p1, p1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-object v0, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mcopyToClipboard(Lio/github/okaidev/pickupcode/MainActivity;Ljava/lang/String;)V

    return-void
.end method
