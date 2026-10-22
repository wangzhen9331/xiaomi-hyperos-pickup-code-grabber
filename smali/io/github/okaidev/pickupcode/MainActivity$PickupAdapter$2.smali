.class Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;
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

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    .line 282
    iget-boolean p1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 283
    iget-object p1, p1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-object v0, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/okaidev/pickupcode/TodoWriter;->markUndone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 284
    iget-object p1, p1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-object v0, v0, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/github/okaidev/pickupcode/TodoWriter;->markDone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 285
    iget-object v0, v0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->val$it:Lio/github/okaidev/pickupcode/PickupStore$Item;

    .line 286
    iget-boolean p1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz p1, :cond_1

    const-string p1, "\u5df2\u6062\u590d\u4e3a\u5f85\u53d6"

    goto :goto_1

    :cond_1
    const-string p1, "\u5df2\u6807\u8bb0\u53d6\u4ef6\u5b8c\u6210"

    goto :goto_1

    :cond_2
    const-string p1, "\u64cd\u4f5c\u5931\u8d25"

    :goto_1
    const/4 v1, 0x0

    .line 285
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;->this$1:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 288
    iget-object p1, p1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-static {p1}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mreload(Lio/github/okaidev/pickupcode/MainActivity;)V

    return-void
.end method
