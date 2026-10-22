.class Lio/github/okaidev/pickupcode/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/MainActivity;->applyImmersiveStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/okaidev/pickupcode/MainActivity;

.field final synthetic val$padBottom:I

.field final synthetic val$padLeft:I

.field final synthetic val$padRight:I


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    iput p2, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padLeft:I

    iput p3, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padRight:I

    iput p4, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padBottom:I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 173
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    iget v1, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padLeft:I

    iget v2, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padRight:I

    iget v3, p0, Lio/github/okaidev/pickupcode/MainActivity$6;->val$padBottom:I

    .line 177
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
