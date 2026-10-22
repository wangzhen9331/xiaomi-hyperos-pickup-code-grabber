.class public Lio/github/okaidev/pickupcode/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;,
        Lio/github/okaidev/pickupcode/MainActivity$Holder;
    }
.end annotation


# static fields
.field private static volatile sAlive:Lio/github/okaidev/pickupcode/MainActivity;


# instance fields
.field private adapter:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

.field private btnClearDone:Landroid/widget/Button;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/PickupStore$Item;",
            ">;"
        }
    .end annotation
.end field

.field private empty:Landroid/widget/TextView;

.field private list:Landroid/widget/ListView;

.field private showingDone:Z

.field private tabDone:Landroid/widget/Button;

.field private tabPending:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lio/github/okaidev/pickupcode/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/github/okaidev/pickupcode/MainActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputshowingDone(Lio/github/okaidev/pickupcode/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyTabStyle(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->applyTabStyle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcopyToClipboard(Lio/github/okaidev/pickupcode/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteAllDone(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->deleteAllDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreload(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->reload()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDeleteAllDialog(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->showDeleteAllDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->data:Ljava/util/List;

    return-void
.end method

.method private applyImmersiveStatusBar()V
    .locals 5

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 144
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 146
    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020002

    .line 160
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    return-void

    .line 162
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 165
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 168
    new-instance v4, Lio/github/okaidev/pickupcode/MainActivity$6;

    invoke-direct {v4, p0, v1, v2, v3}, Lio/github/okaidev/pickupcode/MainActivity$6;-><init>(Lio/github/okaidev/pickupcode/MainActivity;III)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private applyTabStyle()V
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabPending:Landroid/widget/Button;

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v1, :cond_0

    .line 194
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_tab_off:I

    goto :goto_0

    :cond_0
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_tab_on:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabDone:Landroid/widget/Button;

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v1, :cond_1

    .line 195
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_tab_on:I

    goto :goto_1

    :cond_1
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_tab_off:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabPending:Landroid/widget/Button;

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v1, :cond_2

    .line 196
    sget v1, Lio/github/okaidev/pickupcode/R$color;->text_sub:I

    goto :goto_2

    :cond_2
    sget v1, Lio/github/okaidev/pickupcode/R$color;->card:I

    :goto_2
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/MainActivity;->getColorCompat(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabDone:Landroid/widget/Button;

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v1, :cond_3

    .line 197
    sget v1, Lio/github/okaidev/pickupcode/R$color;->card:I

    goto :goto_3

    :cond_3
    sget v1, Lio/github/okaidev/pickupcode/R$color;->text_sub:I

    :goto_3
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/MainActivity;->getColorCompat(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->btnClearDone:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u53d6\u4ef6\u7801\u5df2\u590d\u5236\uff1a"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "clipboard"

    .line 309
    invoke-virtual {p0, v2}, Lio/github/okaidev/pickupcode/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_0

    const-string v3, "pickup_code"

    .line 311
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u590d\u5236\u5931\u8d25"

    .line 315
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private deleteAllDone()V
    .locals 5

    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/okaidev/pickupcode/PickupStore;->list(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-object v3, v3, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/github/okaidev/pickupcode/PickupStore;->delete(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->reload()V

    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u6e05\u7a7a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6761\u5df2\u53d6\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getColorCompat(I)I
    .locals 1

    .line 201
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static notifyDataChanged()V
    .locals 2

    sget-object v0, Lio/github/okaidev/pickupcode/MainActivity;->sAlive:Lio/github/okaidev/pickupcode/MainActivity;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v1, Lio/github/okaidev/pickupcode/MainActivity$1;

    invoke-direct {v1, v0}, Lio/github/okaidev/pickupcode/MainActivity$1;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    invoke-virtual {v0, v1}, Lio/github/okaidev/pickupcode/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reload()V
    .locals 5

    .line 206
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    invoke-virtual {v0, v1}, Lio/github/okaidev/pickupcode/PickupStore;->list(Z)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->data:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->data:Ljava/util/List;

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->adapter:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    .line 209
    invoke-virtual {v0}, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->data:Ljava/util/List;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->empty:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 211
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    move v2, v3

    .line 212
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-boolean v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v0, :cond_2

    const-string v0, "\u53d6\u4ef6\u7801 \u00b7 \u5df2\u53d6"

    goto :goto_1

    :cond_2
    const-string v0, "\u53d6\u4ef6\u7801 \u00b7 \u5f85\u53d6"

    .line 213
    :goto_1
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity;->empty:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lio/github/okaidev/pickupcode/MainActivity;->showingDone:Z

    if-eqz v2, :cond_3

    const-string v2, "\u8fd8\u6ca1\u6709\u5df2\u53d6\u7684\u8bb0\u5f55\n\u53d6\u5b8c\u4ef6\u540e\u70b9\u300c\u6807\u8bb0\u5df2\u53d6\u300d\u5c31\u4f1a\u5f52\u6863\u5230\u8fd9\u91cc"

    goto :goto_2

    :cond_3
    const-string v2, "\u8fd8\u6ca1\u6709\u53d6\u4ef6\u7801\n\u6536\u5230\u5feb\u9012\u77ed\u4fe1\u65f6\u4f1a\u81ea\u52a8\u51fa\u73b0\u5728\u8fd9\u91cc"

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private showDeleteAllDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lio/github/okaidev/pickupcode/R$layout;->dialog_confirm_delete:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f51eb85    # 0.82f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    sget v3, Lio/github/okaidev/pickupcode/R$id;->dlg_cancel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lio/github/okaidev/pickupcode/MainActivity$Act;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v0}, Lio/github/okaidev/pickupcode/MainActivity$Act;-><init>(Lio/github/okaidev/pickupcode/MainActivity;ILandroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v3, Lio/github/okaidev/pickupcode/R$id;->dlg_confirm:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lio/github/okaidev/pickupcode/MainActivity$Act;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, v0}, Lio/github/okaidev/pickupcode/MainActivity$Act;-><init>(Lio/github/okaidev/pickupcode/MainActivity;ILandroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget p1, Lio/github/okaidev/pickupcode/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->applyImmersiveStatusBar()V

    .line 74
    sget p1, Lio/github/okaidev/pickupcode/R$id;->list:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->list:Landroid/widget/ListView;

    .line 75
    sget p1, Lio/github/okaidev/pickupcode/R$id;->txt_empty:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->empty:Landroid/widget/TextView;

    .line 76
    sget p1, Lio/github/okaidev/pickupcode/R$id;->tab_pending:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabPending:Landroid/widget/Button;

    .line 77
    sget p1, Lio/github/okaidev/pickupcode/R$id;->tab_done:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabDone:Landroid/widget/Button;

    .line 79
    new-instance p1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;-><init>(Lio/github/okaidev/pickupcode/MainActivity;Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter-IA;)V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->adapter:Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity;->list:Landroid/widget/ListView;

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabPending:Landroid/widget/Button;

    .line 82
    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$2;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/MainActivity$2;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->tabDone:Landroid/widget/Button;

    .line 90
    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$3;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/MainActivity$3;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget p1, Lio/github/okaidev/pickupcode/R$id;->btn_clear_done:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity;->btnClearDone:Landroid/widget/Button;

    .line 98
    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$Act;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/github/okaidev/pickupcode/MainActivity$Act;-><init>(Lio/github/okaidev/pickupcode/MainActivity;ILandroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget p1, Lio/github/okaidev/pickupcode/R$id;->btn_widget:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 100
    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$4;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/MainActivity$4;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p1, Lio/github/okaidev/pickupcode/R$id;->btn_settings:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 108
    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$5;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/MainActivity$5;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->applyTabStyle()V

    .line 116
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->reload()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lio/github/okaidev/pickupcode/MainActivity;->sAlive:Lio/github/okaidev/pickupcode/MainActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lio/github/okaidev/pickupcode/MainActivity;->sAlive:Lio/github/okaidev/pickupcode/MainActivity;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-object p0, Lio/github/okaidev/pickupcode/MainActivity;->sAlive:Lio/github/okaidev/pickupcode/MainActivity;

    .line 123
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/MainActivity;->reload()V

    return-void
.end method
