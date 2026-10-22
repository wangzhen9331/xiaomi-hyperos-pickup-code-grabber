.class public final Lio/github/okaidev/pickupcode/MainActivity$Act;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Act"
.end annotation


# instance fields
.field final act:Lio/github/okaidev/pickupcode/MainActivity;

.field final dlg:Landroid/app/AlertDialog;

.field final what:I


# direct methods
.method public constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;ILandroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->act:Lio/github/okaidev/pickupcode/MainActivity;

    iput p2, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->what:I

    iput-object p3, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->dlg:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->dlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget v0, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->act:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mshowDeleteAllDialog(Lio/github/okaidev/pickupcode/MainActivity;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$Act;->act:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$mdeleteAllDone(Lio/github/okaidev/pickupcode/MainActivity;)V

    :cond_2
    return-void
.end method
