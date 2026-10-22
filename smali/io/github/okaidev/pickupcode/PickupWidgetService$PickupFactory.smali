.class Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;
.super Ljava/lang/Object;
.source "PickupWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/PickupWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickupFactory"
.end annotation


# instance fields
.field private final compact:Z

.field private final ctx:Landroid/content/Context;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/PickupStore$Item;",
            ">;"
        }
    .end annotation
.end field

.field private pending:I


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->pending:I

    iput-object p1, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    iput-boolean p2, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->compact:Z

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-wide v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->id:J

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lio/github/okaidev/pickupcode/R$layout;->widget_item_header:I

    invoke-direct {p1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    .line 83
    invoke-static {v0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->fontSp(Landroid/content/Context;)I

    move-result v0

    .line 85
    sget v2, Lio/github/okaidev/pickupcode/R$id;->hdr_count:I

    const/16 v3, 0x10

    .line 86
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0xd

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 87
    sget v0, Lio/github/okaidev/pickupcode/R$id;->hdr_count:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f85\u53d6 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->pending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/PickupStore$Item;

    .line 95
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/github/okaidev/pickupcode/R$layout;->widget_item:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-boolean v2, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->compact:Z

    if-eqz v2, :cond_2

    .line 99
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->dp(I)I

    move-result v6

    .line 100
    sget v3, Lio/github/okaidev/pickupcode/R$id;->item_root:I

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->dp(I)I

    move-result v7

    move-object v2, v0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2
    iget-object v2, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    .line 104
    invoke-static {v2}, Lio/github/okaidev/pickupcode/WidgetPrefs;->fontSp(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    .line 105
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0x9

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 106
    sget v4, Lio/github/okaidev/pickupcode/R$id;->item_code:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 107
    sget v2, Lio/github/okaidev/pickupcode/R$id;->item_sub:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 109
    sget v1, Lio/github/okaidev/pickupcode/R$id;->item_code:I

    iget-object v2, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    .line 112
    invoke-static {v1}, Lio/github/okaidev/pickupcode/WidgetPrefs;->template(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lio/github/okaidev/pickupcode/WidgetPrefs;->render(Ljava/lang/String;Lio/github/okaidev/pickupcode/PickupStore$Item;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    sget v1, Lio/github/okaidev/pickupcode/R$id;->item_sub:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 116
    :cond_4
    sget v2, Lio/github/okaidev/pickupcode/R$id;->item_sub:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 117
    sget v2, Lio/github/okaidev/pickupcode/R$id;->item_sub:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "code"

    iget-object p1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 122
    sget v1, Lio/github/okaidev/pickupcode/R$id;->item_root:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->ctx:Landroid/content/Context;

    .line 60
    invoke-static {v1}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/github/okaidev/pickupcode/PickupStore;->list(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget factory load err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->pending:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/PickupWidgetService$PickupFactory;->items:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
