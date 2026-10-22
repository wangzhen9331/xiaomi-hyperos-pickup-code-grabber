.class public Lio/github/okaidev/pickupcode/UserRulesActivity;
.super Landroid/app/Activity;
.source "UserRulesActivity.java"


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 4

    .line 630
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 632
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, -0x1

    .line 633
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 p1, 0x8

    .line 635
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result p2

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, p2, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x11

    .line 636
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 637
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p1, v3, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 639
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private confirmDelete(Lio/github/okaidev/pickupcode/UserRules$Rule;)V
    .locals 3

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u89c4\u5219"

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u786e\u5b9a\u5220\u9664\u300c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300d\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string p1, "\u5220\u9664"

    .line 265
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private countEnabled()I
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/okaidev/pickupcode/UserRules$Rule;

    iget-boolean v2, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private doExport()V
    .locals 4

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 564
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8fd8\u6ca1\u6709\u89c4\u5219\u53ef\u5bfc\u51fa"

    const/4 v1, 0x0

    .line 565
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 568
    invoke-static {v0}, Lio/github/okaidev/pickupcode/UserRules;->exportForShare(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\udce4 \u5bfc\u51fa\u89c4\u5219"

    .line 570
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u751f\u6210 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 571
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6761\u89c4\u5219\u7684\u5206\u4eab\u6587\u672c\u3002\n\n\u00b7 \u60f3\u5206\u4eab\u7ed9\u670b\u53cb\uff1a\u590d\u5236\u540e\u53d1 QQ \u7fa4\uff0c\u5bf9\u65b9\u5728\u300c\ud83d\udce5 \u5bfc\u5165\u300d\u7c98\u8d34\u5373\u53ef\n\u00b7 \u60f3\u8d21\u732e\u7ed9\u5b98\u65b9\uff1a\u590d\u5236\u540e\u53d1\u5230 GitHub Issue\uff08\u6807\u7b7e user-rule\uff09\n\u26a0\ufe0f \u53d1\u9001\u524d\u8bf7\u81ea\u884c\u786e\u8ba4\u77ed\u4fe1\u6837\u672c\u91cc\u6ca1\u6709\u59d3\u540d/\u624b\u673a\u53f7/\u4f4f\u5740\u7b49\u9690\u79c1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda13;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Ljava/lang/String;)V

    const-string v0, "\ud83d\udccb \u590d\u5236"

    .line 575
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    const/4 v2, 0x0

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private doImport()V
    .locals 3

    .line 585
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7c98\u8d34\u4ed6\u4eba\u5206\u4eab\u7684\u89c4\u5219\u6587\u672c"

    .line 586
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    .line 587
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 v1, 0x5

    .line 588
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 589
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\udce5 \u5bfc\u5165\u89c4\u5219"

    .line 590
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 591
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda1;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Landroid/widget/EditText;)V

    const-string v0, "\u5bfc\u5165\u5e76\u81ea\u6d4b"

    .line 592
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 657
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 656
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 4

    .line 512
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 514
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#1A1A1A"

    .line 515
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x8

    .line 516
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 517
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v0, p2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 522
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 523
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$showEditor$11([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p4, "PREFIX"

    const-string v0, "CONTAINS"

    const-string v1, "ANY"

    const-string v2, "EXACT"

    .line 357
    filled-new-array {v1, v2, p4, v0}, [Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p5

    const/4 p5, 0x0

    aput-object p4, p0, p5

    .line 359
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "\u2461 \u53d1\u9001\u65b9\u8303\u56f4\uff1a"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p0, p5

    invoke-static {v0}, Lio/github/okaidev/pickupcode/UserRules;->modeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    aget-object p1, p0, p5

    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->modeHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    aget-object p0, p0, p5

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p5, 0x8

    :cond_0
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 0

    .line 661
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method private persistAndRefresh()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 249
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/UserRules;->saveAll(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 255
    :cond_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRules(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    .line 256
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->renderList(Landroid/widget/LinearLayout;)V

    .line 257
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->refreshStatus()V

    const-string v0, "\u5df2\u4fdd\u5b58"

    const/4 v1, 0x0

    .line 258
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private refreshStatus()V
    .locals 4

    .line 176
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->countEnabled()I

    move-result v0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6761\u89c4\u5219\uff0c\u5df2\u542f\u7528 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u6761\uff08\u4e0a\u9650 20 \u6761\uff09\uff5c\u5f53\u524d\u5b98\u65b9\u89c4\u5219\u96c6 v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff5c\u7528\u6237\u89c4\u5219\u4f18\u5148\u7ea7\uff1a\u9ad8\u4e8e\u5b98\u65b9\u89c4\u5219"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private renderList(Landroid/widget/LinearLayout;)V
    .locals 10

    .line 184
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6682\u65e0\u81ea\u5b9a\u4e49\u89c4\u5219\u3002\n\u82e5\u67d0\u6761\u53d6\u4ef6\u77ed\u4fe1\u6ca1\u88ab\u8bc6\u522b\uff0c\u53ef\u70b9\u4e0b\u65b9\u300c\u2795 \u65b0\u5efa\u89c4\u5219\u300d\u4e3a\u5b83\u5355\u72ec\u5199\u4e00\u6761\u3002"

    .line 187
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 188
    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#999999"

    .line 189
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/okaidev/pickupcode/UserRules$Rule;

    .line 195
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 196
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v7

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v6, "#F5F6FA"

    .line 198
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 199
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x8

    .line 202
    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v7

    invoke-virtual {v6, v3, v3, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v8, :cond_1

    const-string v8, "\u2705 "

    goto :goto_1

    :cond_1
    const-string v8, "\u23f8 "

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 207
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "#1A1A1A"

    .line 208
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    iget-object v7, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ANY"

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    .line 213
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 215
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\ud83d\udcde "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-direct {p0, v8}, Lio/github/okaidev/pickupcode/UserRulesActivity;->shortMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    :goto_2
    const-string v7, "\ud83c\udf10 \u5168\u5c40\uff08\u4e0d\u9650\u53d1\u9001\u65b9\uff09"

    .line 216
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\u6b63\u5219\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\u81ea\u6d4b\u6837\u672c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    .line 217
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u6761\uff5c\u6765\u6e90\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 218
    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    const-string v9, "\u81ea\u52a8\u8bc6\u522b"

    if-eqz v8, :cond_5

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    goto :goto_5

    :cond_5
    :goto_4
    move-object v8, v9

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff5c\u5730\u70b9\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 219
    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    iget-object v9, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    :cond_7
    :goto_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41200000    # 10.0f

    .line 220
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "#666666"

    .line 221
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x4

    .line 222
    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v7

    invoke-virtual {v6, v3, v7, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, 0x6

    .line 227
    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v7

    invoke-virtual {v6, v3, v7, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 228
    new-instance v7, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda5;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string v8, "\ud83e\uddea \u6d4b\u8bd5"

    const-string v9, "#7A5AF8"

    invoke-direct {p0, v8, v9, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v7, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string v8, "\u270f\ufe0f \u7f16\u8f91"

    const-string v9, "#1E6FE8"

    invoke-direct {p0, v8, v9, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-boolean v7, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v7, :cond_8

    const-string v7, "\u23f8 \u505c\u7528"

    goto :goto_7

    :cond_8
    const-string v7, "\u25b6\ufe0f \u542f\u7528"

    :goto_7
    new-instance v8, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda7;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string v9, "#9AA4B2"

    invoke-direct {p0, v7, v9, v8}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v7, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda8;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string v4, "\ud83d\uddd1\ufe0f"

    const-string v8, "#D93025"

    invoke-direct {p0, v4, v8, v7}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 647
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 650
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xa

    .line 651
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private shortMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "EXACT"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u7cbe\u786e"

    return-object p1

    :cond_0
    const-string v0, "PREFIX"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u524d\u7f00"

    return-object p1

    :cond_1
    const-string v0, "CONTAINS"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u5305\u542b"

    return-object p1

    :cond_2
    const-string p1, "\u4e0d\u9650"

    return-object p1
.end method

.method private showEditor(Lio/github/okaidev/pickupcode/UserRules$Rule;)V
    .locals 24

    move-object/from16 v15, p0

    if-nez p1, :cond_0

    .line 308
    new-instance v0, Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/UserRules$Rule;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move/from16 v16, v7

    goto :goto_1

    :cond_1
    move/from16 v16, v8

    :goto_1
    const-string v0, ""

    if-eqz v16, :cond_2

    .line 311
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRules;->nextId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->id:Ljava/lang/String;

    .line 312
    iput-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    .line 313
    iput-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    .line 314
    iput-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    .line 315
    iput-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    .line 316
    iput-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    .line 318
    iput-boolean v8, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    .line 321
    :cond_2
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x6

    .line 323
    invoke-direct {v15, v10}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-direct {v15, v10}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-virtual {v9, v1, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 325
    iget-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    const-string v2, "\u4f8b\uff1a\u6211\u4eec\u5c0f\u533a\u83dc\u9e1f\u9a7f\u7ad9"

    const-string v3, "\u2460 \u89c4\u5219\u540d\u79f0 \u2605\u5fc5\u5907"

    invoke-direct {v15, v9, v3, v1, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/String;

    .line 328
    iget-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v2, "ANY"

    if-eqz v1, :cond_4

    iget-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 329
    :cond_3
    iget-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    move-object v1, v2

    :goto_3
    aput-object v1, v12, v8

    .line 331
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v1, v12, v8

    .line 332
    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->modeHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x2

    const/high16 v5, 0x41200000    # 10.0f

    .line 333
    invoke-virtual {v13, v14, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#2E7D32"

    .line 334
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x4

    .line 335
    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-virtual {v13, v1, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 337
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v15}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53d1\u9001\u65b9\u53f7\u7801\u6216\u6587\u5b57"

    .line 338
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 340
    invoke-virtual {v3, v14, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    aget-object v0, v12, v8

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v8

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 343
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u2461 \u53d1\u9001\u65b9\u8303\u56f4\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v12, v8

    invoke-static {v5}, Lio/github/okaidev/pickupcode/UserRules;->modeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v0, v14, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v18, "#1A1A1A"

    .line 346
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {v15, v5}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v5

    invoke-direct {v15, v10}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "#F0F4FF"

    .line 348
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 349
    new-instance v5, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;

    move-object v4, v0

    move-object v0, v5

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v1, p0

    move v10, v2

    move-object v2, v12

    move-object/from16 v21, v3

    move-object v3, v4

    move-object v10, v4

    const/4 v7, 0x4

    move-object v4, v13

    move-object v8, v5

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;[Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v8, v21

    .line 368
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u2139\ufe0f \u53f7\u7801\u4e13\u5c5e\u89c4\u5219\u4f1a\u81ea\u52a8\u4f18\u5148\u4e8e\u5168\u5c40\u89c4\u5219\u751f\u6548\uff08\u540c\u4e00\u6761\u77ed\u4fe1\u547d\u4e2d\u591a\u6761\u65f6\uff0c\u7cbe\u786e > \u524d\u7f00 > \u5305\u542b > \u5168\u5c40\uff09\u3002"

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v14, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#888888"

    .line 374
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x4

    .line 375
    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    const-string v1, "\u4f8b\uff1a\u53d6\u4ef6\u7801\\s*([A-Za-z0-9-]+)  \u2190 \u5c0f\u62ec\u53f7\u91cc\u7684\u5c31\u662f\u53d6\u4ef6\u7801"

    const-string v2, "\u2462 \u53d6\u4ef6\u7801\u6b63\u5219 \u2605\u5fc5\u5907"

    invoke-direct {v15, v9, v2, v0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v7

    .line 380
    iget v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    .line 381
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1=\u7b2c\u4e00\u4e2a\u5c0f\u62ec\u53f7\uff1b0=\u6574\u4e2a\u5339\u914d"

    const-string v2, "\u2463 \u53d6\u7b2c\u51e0\u4e2a\u6355\u83b7\u7ec4 \u2605\u5fc5\u5907"

    .line 380
    invoke-direct {v15, v9, v2, v0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    .line 382
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    const-string v1, "\u56fa\u5b9a\u6587\u672c\u6216 $1 \u5f15\u7528\u6b63\u5219\u6355\u83b7\u7ec4"

    const-string v2, "\u2464 \u6765\u6e90\uff08\u53ef\u9009\uff0c\u7559\u7a7a=\u81ea\u52a8\u8bc6\u522b\uff09"

    invoke-direct {v15, v9, v2, v0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v13

    .line 384
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    const-string v1, "\u56fa\u5b9a\u6587\u672c\u6216 $1 \u5f15\u7528"

    const-string v2, "\u2465 \u5730\u70b9\uff08\u53ef\u9009\uff0c\u7559\u7a7a=\u81ea\u52a8\u8bc6\u522b\uff09"

    invoke-direct {v15, v9, v2, v0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v17

    .line 386
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    const-string v1, "\u5730\u70b9\u683c\u5f0f\u7279\u6b8a\u65f6\u624d\u7528\uff0c\u4f8b\uff1a\u81f3(.+?\u53d6\u4ef6)"

    const-string v2, "\u2466 \u5730\u70b9\u6b63\u5219\uff08\u53ef\u9009\uff0c\u4e00\u822c\u4e0d\u7528\uff09"

    invoke-direct {v15, v9, v2, v0, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v20

    .line 391
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 393
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u6d4b\u8bd5\u6837\u672c \u2605\u5fc5\u586b\uff08\u5fc5\u987b\u81ea\u6d4b\u901a\u8fc7\u624d\u80fd\u4fdd\u5b58\uff09"

    .line 396
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 397
    invoke-virtual {v2, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 398
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .line 399
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0xc

    .line 400
    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    const/4 v4, 0x4

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v15}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7c98\u8d34\u4e00\u6761\u771f\u5b9e\u77ed\u4fe1\u539f\u6587"

    .line 404
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 405
    invoke-virtual {v5, v14, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 406
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setMinLines(I)V

    const/4 v1, 0x5

    .line 407
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    const v1, 0x800033

    .line 408
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v1, 0xa

    .line 409
    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    const/16 v4, 0x8

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v14

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v1

    invoke-virtual {v5, v2, v3, v14, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    const-string v1, "#FFFFFF"

    .line 410
    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    new-instance v14, Landroid/widget/EditText;

    invoke-direct {v14, v15}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8fd9\u6761\u77ed\u4fe1\u5e94\u8be5\u63d0\u53d6\u5230\u7684\u53d6\u4ef6\u7801\uff08\u591a\u4e2a\u7801\u7528 ; \u5206\u9694\uff09"

    .line 414
    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x2

    .line 415
    invoke-virtual {v14, v3, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 v2, 0x1

    .line 416
    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v2, 0xa

    .line 417
    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    move-object/from16 v21, v13

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v13

    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-direct {v15, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v4

    invoke-virtual {v14, v3, v13, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 418
    invoke-direct {v15, v1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    .line 421
    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 427
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    iget-object v0, v0, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    iget-object v0, v0, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_7
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 431
    iget-object v0, v6, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    move-object/from16 v19, v0

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    const/16 v19, 0x0

    .line 435
    :goto_6
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v15}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    .line 436
    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-direct {v15, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 437
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 442
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v16, :cond_9

    const-string v2, "\u2795 \u65b0\u5efa\u89c4\u5219"

    goto :goto_7

    :cond_9
    const-string v2, "\u270f\ufe0f \u7f16\u8f91\u89c4\u5219"

    .line 443
    :goto_7
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\ud83e\uddea \u81ea\u6d4b\u5e76\u4fdd\u5b58"

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v15}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    const-string v3, "\ud83c\udf93 \u53c2\u8003\u6848\u4f8b"

    .line 446
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 450
    new-instance v9, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda4;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move-object v4, v11

    move-object/from16 v18, v5

    move-object v5, v12

    move-object v6, v8

    move-object v8, v10

    move-object v12, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v17

    move-object/from16 v11, v20

    move-object/from16 v22, v12

    move-object/from16 v12, v18

    move-object/from16 v23, v13

    move-object v13, v14

    move-object/from16 v14, v19

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda4;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Landroid/app/AlertDialog;Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/github/okaidev/pickupcode/UserRules$TestCase;Z)V

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 508
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showExamples()V
    .locals 3

    .line 556
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83c\udf93 \u53c2\u8003\u6848\u4f8b"

    .line 557
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u3010\u7b2c 1 \u5c42\uff1a\u5168\u5c40\u89c4\u5219\u3011\u4e0d\u9650\u53d1\u9001\u65b9\uff0c\u5b98\u65b9\u89c4\u5219\u6ca1\u8986\u76d6\u5230\u7684\u90fd\u7528\u5b83\u515c\u5e95\n\u77ed\u4fe1\uff1a\u3010XX\u5c0f\u533a\u81ea\u63d0\u70b9\u3011\u7269\u54c1\u7f16\u53f7 XZ-77612 \u5df2\u653e A \u680b 3 \u697c\u53d6\u4ef6\u53e3\n\u53d1\u9001\u65b9\u8303\u56f4\uff1a\u4e0d\u9650\u6765\u6e90\n\u53d6\u4ef6\u7801\u6b63\u5219\uff1a\u7269\u54c1\u7f16\u53f7\\s*([A-Z]{1,3}-[0-9]{3,8})\n\u6355\u83b7\u7ec4\uff1a1\n\n\u3010\u7b2c 2 \u5c42\uff1a\u53f7\u7801\u4e13\u5c5e\u89c4\u5219\u3011\u2605\u63a8\u8350\uff0c\u7cbe\u51c6\u5ea6\u6700\u9ad8\n\u00b7 \u9a7f\u7ad9\u56fa\u5b9a\u53f7\u7801 \u2192 \u7cbe\u786e\u5339\u914d\uff1a1069888877\n\u00b7 \u865a\u62df\u53f7\u540e\u51e0\u4f4d\u968f\u673a \u2192 \u524d\u7f00\u5339\u914d\uff1a1069\uff08\u53ef\u540c\u65f6\u8986\u76d6\u8be5\u670d\u52a1\u5546\u6240\u6709\u53f7\uff09\n\u00b7 \u53f7\u7801\u91cc\u5e26\u6587\u5b57 \u2192 \u5305\u542b\u5339\u914d\uff1a\u83dc\u9e1f\u9a7f\u7ad9\n\u00b7 \u56fa\u5b9a\u5feb\u9012\u5458\u4e2a\u4eba\u53f7 \u2192 \u7cbe\u786e\u5339\u914d\uff1a13800138000\n\uff08\u53f7\u7801\u4e13\u5c5e\u89c4\u5219\u4f1a\u81ea\u52a8\u4f18\u5148\u4e8e\u5168\u5c40\u89c4\u5219\uff09\n\n\u3010\u6b63\u5219\u5e38\u7528\u5199\u6cd5\u3011\n\u00b7 \u5173\u952e\u8bcd\u578b\uff1a\u53d6\u8d27\u7801([A-Za-z0-9-]+)\u3000\u3000 \u2192 \u6355\u83b7\u7ec4 1\n\u00b7 \u51ed\u7801\u578b\uff1a\u51ed([A-Za-z0-9-]+)\u5230\u3000\u3000\u3000\u3000 \u2192 \u6355\u83b7\u7ec4 1\n\u00b7 \u5e26\u5f15\u53f7\uff1a\u51ed[\"\u201c]([0-9]+)[\"\u201d]\u3000\u3000\u3000 \u2192 \u6355\u83b7\u7ec4 1\n\u00b7 \u82f1\u6587\u6807\u8bc6\uff1acode[:\uff1a]\\s*([A-Z0-9-]+)\u3000\u2192 \u6355\u83b7\u7ec4 1\n\uff08\u6355\u83b7\u7ec4 = \u7b2c\u51e0\u4e2a\u5c0f\u62ec\u53f7 ()\uff1b0 = \u6574\u4e2a\u5339\u914d\uff09\n\n\u3010\u26a0\ufe0f \u4f1a\u51fa\u95ee\u9898\u7684\u5199\u6cd5\uff08\u4fdd\u5b58\u65f6\u4f1a\u88ab\u62e6\u622a\u6216\u81ea\u6d4b\u5931\u8d25\uff09\u3011\n\u00b7 (.*)+ \u6216 .*.*\u3000\u5d4c\u5957\u91cf\u8bcd \u2192 \u6307\u6570\u7ea7\u56de\u6eaf\uff0c\u4f1a\u5361\u4f4f\u77ed\u4fe1\u5904\u7406\uff08\u5df2\u88ab\u81ea\u52a8\u62e6\u622a\uff09\n\u00b7 \u53ea\u5199 [0-9]+ \u800c\u77ed\u4fe1\u91cc\u6709\u591a\u4e2a\u6570\u5b57 \u2192 \u4f1a\u6293\u5230\u5355\u53f7/\u91d1\u989d/\u65f6\u95f4\n  \u2713 \u6b63\u786e\u505a\u6cd5\uff1a\u7528\u4e0a\u4e0b\u6587\u8bcd\u628a\u6570\u5b57\u6846\u4f4f\uff0c\u5982 \u53d6\u4ef6\u7801([0-9-]+)\n\n\u3010\ud83d\udca1 \u8c03\u8bd5\u6280\u5de7\u3011\n\u00b7 \u300c\u6d4b\u8bd5\u6837\u672c\u300d\u5fc5\u586b\uff1a\u7c98\u8d34\u4e00\u6761\u771f\u5b9e\u77ed\u4fe1 + \u5199\u4e0b\u671f\u671b\u7684\u53d6\u4ef6\u7801\n  \uff08\u77ed\u4fe1\u91cc\u591a\u4e2a\u7801\u65f6\uff0c\u7528 ; \u5206\u9694\uff0c\u5982 16-4-9626;15-3-2194\uff09\n\u00b7 \u81ea\u6d4b\u4e0d\u901a\u8fc7\u65f6\u7f16\u8f91\u9875\u4f1a\u4fdd\u7559\uff0c\u76f4\u63a5\u6539\u6b63\u5219\u518d\u70b9\u4e00\u6b21\u300c\ud83e\uddea \u81ea\u6d4b\u5e76\u4fdd\u5b58\u300d\n\u00b7 \u300c\u6355\u83b7\u7ec4\u300d= \u7b2c\u51e0\u4e2a\u5c0f\u62ec\u53f7 () \u5305\u4f4f\u7684\u5185\u5bb9\n  \u4f8b\uff1a\u53d6\u8d27\u7801([A-Za-z0-9-]+) \u2192 \u53d6\u4ef6\u7801\u5c31\u662f\u7b2c 1 \u7ec4"

    .line 558
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showTestResult(Lio/github/okaidev/pickupcode/UserRules$Rule;)V
    .locals 6

    .line 277
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->verify(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lio/github/okaidev/pickupcode/UserRules$VerifyResult;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    iget-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    if-eqz v2, :cond_0

    const-string v2, "\u2705 \u81ea\u6d4b\u5168\u90e8\u901a\u8fc7\n\n"

    goto :goto_0

    :cond_0
    const-string v2, "\u274c \u81ea\u6d4b\u672a\u901a\u8fc7\n\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-boolean v0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "\n\n\u5b9e\u65f6\u5339\u914d\u9884\u89c8\uff1a"

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    const-string v4, "\n\u00b7 \u8f93\u5165\uff1a"

    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  \u2192 \u7801\uff1a"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-static {p1, v5}, Lio/github/okaidev/pickupcode/UserRules;->matchCode(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff08\u671f\u671b "

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ANY"

    iget-object v3, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 292
    :cond_2
    iget-object v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v2

    .line 293
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "\n\n\u5b8c\u6574\u94fe\u8def\u8bd5\u8dd1\uff08\u542b\u53d1\u9001\u65b9\u5339\u914d\uff09\uff1a\n"

    .line 295
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p1, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    const/4 v5, 0x0

    .line 296
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    iget-object p1, p1, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lio/github/okaidev/pickupcode/UserRules;->dryRun(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\ud83e\uddea \u89c4\u5219\u81ea\u6d4b"

    .line 300
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u77e5\u9053\u4e86"

    .line 302
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method synthetic lambda$confirmDelete$10$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 266
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 267
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 269
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->persistAndRefresh()V

    return-void
.end method

.method synthetic lambda$doExport$17$io-github-okaidev-pickupcode-UserRulesActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const-string p2, "clipboard"

    .line 576
    invoke-virtual {p0, p2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "user_rules"

    .line 577
    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u5df2\u590d\u5236\uff0c\u53ef\u76f4\u63a5\u7c98\u8d34\u5206\u4eab"

    const/4 p2, 0x1

    .line 578
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$doImport$18$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 5

    .line 593
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->importFromShare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 594
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const-string p1, "\u6ca1\u6709\u89e3\u6790\u5230\u89c4\u5219\uff0c\u8bf7\u68c0\u67e5\u683c\u5f0f"

    .line 595
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 598
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    .line 601
    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->verify(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lio/github/okaidev/pickupcode/UserRules$VerifyResult;

    move-result-object v2

    .line 602
    iget-boolean v3, v2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    if-eqz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "\u00b7 \u300c"

    .line 603
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u300d\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    const-string v3, "\n"

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 606
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 608
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->saveAll(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 610
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 611
    invoke-static {p0, p3}, Lio/github/okaidev/pickupcode/UserRules;->setEnabled(Landroid/content/Context;Z)V

    .line 613
    :cond_4
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRules(Landroid/content/Context;Ljava/util/List;)V

    .line 614
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->recreate()V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6210\u529f\u5bfc\u5165 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6761\u89c4\u5219\u5e76\u5df2\u542f\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_5

    const-string p1, " \u2713"

    goto :goto_2

    .line 616
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uff08\u90e8\u5206\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff09"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 616
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 618
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 619
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "\u90e8\u5206\u89c4\u5219\u672a\u901a\u8fc7\u81ea\u6d4b"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u4ee5\u4e0b\u89c4\u5219\u88ab\u62d2\u7edd\u5bfc\u5165\uff1a\n\n"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n\u539f\u56e0\u901a\u5e38\u662f\u5206\u4eab\u6587\u672c\u4e0d\u5b8c\u6574\u6216\u5bf9\u65b9\u89c4\u5219\u672c\u8eab\u6709\u95ee\u9898\u3002"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 620
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u77e5\u9053\u4e86"

    const/4 p3, 0x0

    .line 622
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_7
    return-void
.end method

.method synthetic lambda$onCreate$0$io-github-okaidev-pickupcode-UserRulesActivity([ZLandroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 0
    const/4 p3, 0x0

    .line 95
    aget-boolean v0, p1, p3

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    aput-boolean v0, p1, p3

    .line 96
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/UserRules;->setEnabled(Landroid/content/Context;Z)V

    .line 97
    aget-boolean v0, p1, p3

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    aget-boolean v0, p1, p3

    if-eqz v0, :cond_1

    const-string v0, "#0FA968"

    goto :goto_1

    :cond_1
    const-string v0, "#9AA4B2"

    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 99
    aget-boolean p1, p1, p3

    if-eqz p1, :cond_2

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5df2\u542f\u7528 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->countEnabled()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u6761\u7528\u6237\u89c4\u5219\uff08\u4f18\u5148\u7ea7\u9ad8\u4e8e\u5b98\u65b9\u89c4\u5219\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "\u5df2\u505c\u7528\u5168\u90e8\u7528\u6237\u89c4\u5219\uff0c\u56de\u5230\u5b98\u65b9\u89c4\u5219"

    .line 99
    :goto_2
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->refreshStatus()V

    return-void
.end method

.method synthetic lambda$onCreate$1$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showEditor(Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->doExport()V

    return-void
.end method

.method synthetic lambda$onCreate$3$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->doImport()V

    return-void
.end method

.method synthetic lambda$onCreate$4$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/view/View;)V
    .locals 2

    .line 0
    :try_start_0
    const-string p1, "clipboard"

    .line 145
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, "url"

    const-string v1, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/blob/main/docs/user-rules-guide.md"

    .line 146
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u624b\u518c\u94fe\u63a5\u5df2\u590d\u5236\uff0c\u7c98\u8d34\u5230\u6d4f\u89c8\u5668\u6253\u5f00"

    const/4 v0, 0x1

    .line 148
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u590d\u5236\u5931\u8d25"

    const/4 v0, 0x0

    .line 150
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$renderList$5$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/view/View;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showTestResult(Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    return-void
.end method

.method synthetic lambda$renderList$6$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/view/View;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showEditor(Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    return-void
.end method

.method synthetic lambda$renderList$7$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showEditor(Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    return-void
.end method

.method synthetic lambda$renderList$8$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/view/View;)V
    .locals 3

    .line 231
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->verify(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lio/github/okaidev/pickupcode/UserRules$VerifyResult;

    move-result-object p2

    .line 232
    iget-boolean v0, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u274c \u542f\u7528\u88ab\u62d2\u7edd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u81ea\u6d4b\u672a\u901a\u8fc7\uff0c\u4e0d\u80fd\u542f\u7528\uff1a\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda11;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    const-string p1, "\u53bb\u7f16\u8f91"

    .line 235
    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u77e5\u9053\u4e86"

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 239
    :cond_0
    iget-boolean p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    .line 240
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->persistAndRefresh()V

    return-void
.end method

.method synthetic lambda$renderList$9$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/UserRulesActivity;->confirmDelete(Lio/github/okaidev/pickupcode/UserRules$Rule;)V

    return-void
.end method

.method synthetic lambda$showEditor$12$io-github-okaidev-pickupcode-UserRulesActivity([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4

    .line 349
    new-instance p5, Landroid/app/AlertDialog$Builder;

    invoke-direct {p5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u2461 \u9009\u62e9\u53d1\u9001\u65b9\u5339\u914d\u65b9\u5f0f"

    .line 350
    invoke-virtual {p5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    const-string v0, "PREFIX\u3000\u524d\u7f00\u5339\u914d\uff08\u865a\u62df\u53f7\uff0c\u540e\u51e0\u4f4d\u968f\u673a\uff09"

    const-string v1, "CONTAINS\u3000\u5305\u542b\u5339\u914d\uff08\u53f7\u7801\u542b\u6587\u5b57\uff09"

    const-string v2, "ANY\u3000\u4e0d\u9650\u6765\u6e90\uff08\u5168\u5c40\u89c4\u5219\uff09"

    const-string v3, "EXACT\u3000\u7cbe\u786e\u5339\u914d\uff08\u56fa\u5b9a\u53f7\u7801\uff09"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda12;-><init>([Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V

    .line 351
    invoke-virtual {p5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    const/4 p3, 0x0

    .line 364
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$showEditor$13$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showExamples()V

    return-void
.end method

.method synthetic lambda$showEditor$14$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 487
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->showExamples()V

    return-void
.end method

.method synthetic lambda$showEditor$15$io-github-okaidev-pickupcode-UserRulesActivity(Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/github/okaidev/pickupcode/UserRules$TestCase;ZLandroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 452
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    const/4 p2, 0x0

    .line 453
    aget-object p15, p3, p2

    iput-object p15, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string p15, "ANY"

    .line 454
    aget-object p2, p3, p2

    invoke-virtual {p15, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, ""

    if-eqz p2, :cond_0

    move-object p2, p3

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    .line 456
    iput-object p3, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    .line 457
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    .line 458
    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    .line 459
    invoke-virtual {p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    .line 460
    invoke-virtual {p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    .line 461
    invoke-virtual {p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    .line 463
    invoke-virtual {p10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 464
    invoke-virtual {p11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 465
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    .line 466
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 467
    iget-object p5, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    new-instance p6, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    invoke-direct {p6, p2, p4}, Lio/github/okaidev/pickupcode/UserRules$TestCase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p12, :cond_2

    .line 469
    iget-object p2, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {p2, p12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    :goto_1
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->quickValidate(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    const-string p5, "\u7ee7\u7eed\u4fee\u6539"

    if-eqz p2, :cond_3

    .line 474
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "\u274c \u89c4\u5219\u4e0d\u5408\u89c4"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n\n\u8bf7\u6309\u63d0\u793a\u539f\u5730\u4fee\u6539\u540e\u518d\u70b9\u300c\u81ea\u6d4b\u5e76\u4fdd\u5b58\u300d\u3002"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 475
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1, p5, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 479
    :cond_3
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->verify(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lio/github/okaidev/pickupcode/UserRules$VerifyResult;

    move-result-object p2

    .line 480
    iget-boolean p6, p2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    if-nez p6, :cond_4

    .line 482
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "\u274c \u81ea\u6d4b\u672a\u901a\u8fc7"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\n\n\u8bf7\u5728\u4e0a\u65b9\u6309\u63d0\u793a\u4fee\u6b63\u6b63\u5219\u6216\u671f\u671b\u503c\uff0c\u7136\u540e\u518d\u6b21\u70b9\u300c\ud83e\uddea \u81ea\u6d4b\u5e76\u4fdd\u5b58\u300d\u3002\n\u6ca1\u601d\u8def\u53ef\u70b9\u300c\ud83c\udf93 \u53c2\u8003\u6848\u4f8b\u300d\u3002"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 483
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1, p5, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda9;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    const-string p3, "\u53c2\u8003\u6848\u4f8b"

    .line 487
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 491
    :cond_4
    iput-boolean p3, p1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz p13, :cond_5

    iget-object p4, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 492
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, p0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 493
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->saveAll(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 495
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 499
    :cond_6
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 500
    invoke-static {p0, p3}, Lio/github/okaidev/pickupcode/UserRules;->setEnabled(Landroid/content/Context;Z)V

    .line 502
    :cond_7
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRules(Landroid/content/Context;Ljava/util/List;)V

    .line 503
    invoke-virtual {p14}, Landroid/app/AlertDialog;->dismiss()V

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "\u89c4\u5219\u5df2\u4fdd\u5b58\u5e76\u542f\u7528 \u2713\n"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 505
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->recreate()V

    return-void
.end method

.method synthetic lambda$showEditor$16$io-github-okaidev-pickupcode-UserRulesActivity(Landroid/app/AlertDialog;Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/github/okaidev/pickupcode/UserRules$TestCase;ZLandroid/content/DialogInterface;)V
    .locals 18

    .line 0
    const/4 v0, -0x1

    move-object/from16 v15, p1

    .line 451
    invoke-virtual {v15, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v14, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda10;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v17, v14

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p1

    invoke-direct/range {v1 .. v16}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda10;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;Lio/github/okaidev/pickupcode/UserRules$Rule;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/github/okaidev/pickupcode/UserRules$TestCase;ZLandroid/app/AlertDialog;)V

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->init(Landroid/content/Context;)V

    .line 43
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/github/okaidev/pickupcode/UserRulesActivity;->rules:Ljava/util/List;

    .line 45
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x14

    .line 47
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v4

    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v3, -0x1

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\ud83e\udde9 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219\uff08\u9ad8\u7ea7\u529f\u80fd\uff09"

    .line 51
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x2

    .line 52
    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "#1A1A1A"

    .line 53
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x0

    .line 54
    invoke-virtual {v4, v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 55
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u26a0\ufe0f \u4f7f\u7528\u524d\u5fc5\u8bfb\n\u00b7 \u672c\u529f\u80fd\u53ea\u80fd\u5b9a\u4e49\u300c\u600e\u4e48\u4ece\u77ed\u4fe1\u91cc\u63d0\u53d6\u53d6\u4ef6\u7801/\u6765\u6e90/\u5730\u70b9\u300d\uff0c\u65e0\u6cd5\u4e5f\u65e0\u6cd5\u4fee\u6539\u4efb\u4f55\u6570\u636e\u5e93\u5199\u5165\u884c\u4e3a\uff08\u5b89\u5168\u8fb9\u754c\uff0c\u4e0d\u53ef\u914d\u7f6e\uff09\n\u00b7 \u89c4\u5219\u5e26\u3010\u5f3a\u5236\u81ea\u6d4b\u3011\uff1a\u5fc5\u987b\u7c98\u8d34\u771f\u5b9e\u77ed\u4fe1\u6837\u672c\u5e76\u586b\u5199\u671f\u671b\u53d6\u4ef6\u7801\uff0c\u81ea\u6d4b\u901a\u8fc7\u540e\u624d\u80fd\u542f\u7528\n\u00b7 \u5355\u6761\u6837\u672c\u6267\u884c\u8d85\u8fc7 50ms \u5c06\u88ab\u7194\u65ad\u62d2\u7edd\uff08\u9632\u6b62\u5371\u9669\u6b63\u5219\u5361\u4f4f\u77ed\u4fe1\u5904\u7406\uff09\n\u00b7 \u7981\u6b62\u5d4c\u5957\u91cf\u8bcd\u7b49\u53ef\u80fd\u5f15\u53d1\u6307\u6570\u7ea7\u56de\u6eaf\u7684\u5199\u6cd5\uff08\u4fdd\u5b58\u65f6\u4f1a\u81ea\u52a8\u626b\u63cf\u62e6\u622a\uff09\n\u00b7 \u89c4\u5219\u7531\u4f60\u81ea\u5df1\u7f16\u5199\u4e0e\u4f7f\u7528\uff0c\u5339\u914d\u7ed3\u679c\u81ea\u8d1f\uff1b\u4e0d\u786e\u5b9a\u8bf7\u5148\u7528\u300c\u6d4b\u8bd5\u300d\u9a8c\u8bc1"

    .line 59
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41300000    # 11.0f

    .line 68
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v8, "#B26500"

    .line 69
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x3

    .line 70
    invoke-direct {v0, v8}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v9, 0xa

    .line 71
    invoke-direct {v0, v9}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-direct {v0, v12}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v13

    invoke-direct {v0, v9}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v12}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v14

    invoke-virtual {v4, v11, v13, v9, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v9, "#FFF6E5"

    .line 72
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 77
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    .line 78
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v11, 0xc

    .line 79
    invoke-direct {v0, v11}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v13

    const/4 v14, 0x4

    invoke-direct {v0, v14}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v14

    invoke-virtual {v4, v9, v13, v9, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "\u542f\u7528\u6211\u7684\u89c4\u5219"

    .line 81
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 82
    invoke-virtual {v13, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-direct {v0, v12}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v5

    invoke-virtual {v13, v9, v9, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v5, v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-array v13, v2, [Z

    .line 88
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v14

    aput-boolean v14, v13, v9

    if-eqz v14, :cond_0

    const-string v14, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v14, "\u5df2\u5173\u95ed"

    .line 89
    :goto_0
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41400000    # 12.0f

    .line 90
    invoke-virtual {v5, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    aget-boolean v3, v13, v9

    const-string v15, "#0FA968"

    if-eqz v3, :cond_1

    move-object v3, v15

    goto :goto_1

    :cond_1
    const-string v3, "#9AA4B2"

    .line 92
    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v3, 0xe

    .line 93
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v14

    const/4 v11, 0x6

    invoke-direct {v0, v11}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v8

    invoke-direct {v0, v11}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v11

    invoke-virtual {v5, v14, v10, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    new-instance v8, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0, v13, v5}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda14;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;[ZLandroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    const-string v5, "#888888"

    .line 109
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    .line 110
    invoke-direct {v0, v6}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v5

    invoke-direct {v0, v12}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v8

    invoke-virtual {v4, v5, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lio/github/okaidev/pickupcode/UserRulesActivity;->statusLine:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {v0, v4}, Lio/github/okaidev/pickupcode/UserRulesActivity;->renderList(Landroid/widget/LinearLayout;)V

    .line 120
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 123
    new-instance v3, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda15;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    const-string v4, "\u2795 \u65b0\u5efa\u89c4\u5219"

    const-string v5, "#1E6FE8"

    invoke-direct {v0, v4, v5, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v3, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda16;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    const-string v4, "\ud83d\udce4 \u5bfc\u51fa\u5206\u4eab"

    invoke-direct {v0, v4, v15, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v3, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda17;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    const-string v4, "\ud83d\udce5 \u5bfc\u5165"

    const-string v8, "#F0A020"

    invoke-direct {v0, v4, v8, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->action(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\ud83d\udca1 \u4e0d\u4f1a\u5199\u6b63\u5219\uff1f\u70b9\u300c\u65b0\u5efa\u89c4\u5219\u300d\u540e\u7528\u300c\ud83c\udf93 \u53c2\u8003\u6848\u4f8b\u300d\u7167\u7740\u6539\uff1b\n\ud83d\udce4 \u5bfc\u51fa\u53ef\u628a\u89c4\u5219\u5206\u4eab\u5230 QQ \u7fa4\uff1b\u60f3\u8d21\u732e\u7ed9\u5b98\u65b9\u8bf7\u628a\u5bfc\u51fa\u6587\u672c\u53d1\u5230 GitHub Issue\uff08\u8bb0\u5f97\u81ea\u5df1\u5148\u8131\u654f\u77ed\u4fe1\u91cc\u7684\u59d3\u540d/\u624b\u673a\u53f7/\u4f4f\u5740\uff09"

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#999999"

    .line 133
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x3

    .line 134
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v3, 0xc

    .line 135
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v9, v4, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud83d\udcd6 \u67e5\u770b\u5b8c\u6574\u53c2\u8003\u624b\u518c\uff08GitHub\uff09"

    .line 139
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 140
    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-direct {v0, v3}, Lio/github/okaidev/pickupcode/UserRulesActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    new-instance v3, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lio/github/okaidev/pickupcode/UserRulesActivity$$ExternalSyntheticLambda18;-><init>(Lio/github/okaidev/pickupcode/UserRulesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v0, v2}, Lio/github/okaidev/pickupcode/UserRulesActivity;->setContentView(Landroid/view/View;)V

    .line 158
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRulesActivity;->refreshStatus()V

    return-void
.end method
