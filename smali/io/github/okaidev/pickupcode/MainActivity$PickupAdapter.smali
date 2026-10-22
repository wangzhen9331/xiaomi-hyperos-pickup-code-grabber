.class Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/okaidev/pickupcode/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupAdapter"
.end annotation


# instance fields
.field private final fmt:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lio/github/okaidev/pickupcode/MainActivity;


# direct methods
.method private constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;)V
    .locals 2

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 216
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 218
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm"

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->fmt:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lio/github/okaidev/pickupcode/MainActivity;Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;-><init>(Lio/github/okaidev/pickupcode/MainActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 222
    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$fgetdata(Lio/github/okaidev/pickupcode/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 225
    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$fgetdata(Lio/github/okaidev/pickupcode/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 228
    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$fgetdata(Lio/github/okaidev/pickupcode/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/PickupStore$Item;

    iget-wide v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 232
    invoke-static {v0}, Lio/github/okaidev/pickupcode/MainActivity;->-$$Nest$fgetdata(Lio/github/okaidev/pickupcode/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/PickupStore$Item;

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    .line 236
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/github/okaidev/pickupcode/R$layout;->item_pickup:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 237
    new-instance p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lio/github/okaidev/pickupcode/MainActivity$Holder;-><init>(Lio/github/okaidev/pickupcode/MainActivity$Holder-IA;)V

    .line 238
    iput-object p2, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->root:Landroid/view/View;

    .line 239
    sget v0, Lio/github/okaidev/pickupcode/R$id;->txt_carrier:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->carrier:Landroid/widget/TextView;

    .line 240
    sget v0, Lio/github/okaidev/pickupcode/R$id;->txt_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->time:Landroid/widget/TextView;

    .line 241
    sget v0, Lio/github/okaidev/pickupcode/R$id;->box_code:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->boxCode:Landroid/view/View;

    .line 242
    sget v0, Lio/github/okaidev/pickupcode/R$id;->txt_code:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->code:Landroid/widget/TextView;

    .line 243
    sget v0, Lio/github/okaidev/pickupcode/R$id;->txt_code_hint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->codeHint:Landroid/widget/TextView;

    .line 244
    sget v0, Lio/github/okaidev/pickupcode/R$id;->btn_toggle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->toggle:Landroid/widget/Button;

    .line 245
    sget v0, Lio/github/okaidev/pickupcode/R$id;->txt_source:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->source:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;

    .line 251
    :goto_0
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->root:Landroid/view/View;

    iget-boolean v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v1, :cond_1

    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_card_done:I

    goto :goto_1

    :cond_1
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_card:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->boxCode:Landroid/view/View;

    iget-boolean v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v1, :cond_2

    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_code_done:I

    goto :goto_2

    :cond_2
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_code:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->carrier:Landroid/widget/TextView;

    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    goto :goto_4

    :cond_4
    :goto_3
    const-string v1, "\u2014"

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-boolean v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    iget-wide v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->doneTs:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    iget-wide v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->doneTs:J

    goto :goto_5

    :cond_5
    iget-wide v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->ts:J

    .line 256
    :goto_5
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->time:Landroid/widget/TextView;

    cmp-long v1, v3, v1

    const-string v2, ""

    if-lez v1, :cond_6

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->fmt:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->code:Landroid/widget/TextView;

    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->code:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-virtual {v1}, Lio/github/okaidev/pickupcode/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v3, :cond_7

    sget v3, Lio/github/okaidev/pickupcode/R$color;->code_text_done:I

    goto :goto_7

    :cond_7
    sget v3, Lio/github/okaidev/pickupcode/R$color;->code_text:I

    :goto_7
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->codeHint:Landroid/widget/TextView;

    iget-boolean v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v1, :cond_8

    const-string v1, "\u5df2\u5b8c\u6210\u53d6\u4ef6"

    goto :goto_8

    :cond_8
    const-string v1, "\u70b9\u4e00\u4e0b\u590d\u5236\u53d6\u4ef6\u7801"

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->codeHint:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-virtual {v1}, Lio/github/okaidev/pickupcode/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v3, :cond_9

    sget v3, Lio/github/okaidev/pickupcode/R$color;->text_hint:I

    goto :goto_9

    :cond_9
    sget v3, Lio/github/okaidev/pickupcode/R$color;->primary:I

    :goto_9
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_b
    :goto_a
    iget-object v0, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->body:Ljava/lang/String;

    .line 264
    :goto_b
    iget-object v1, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->source:Landroid/widget/TextView;

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    move-object v2, v0

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->toggle:Landroid/widget/Button;

    iget-boolean v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v1, :cond_d

    const-string v1, "\u6062\u590d\u5f85\u53d6"

    goto :goto_d

    :cond_d
    const-string v1, "\u6807\u8bb0\u5df2\u53d6"

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->toggle:Landroid/widget/Button;

    iget-boolean v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v1, :cond_e

    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_btn_outline_gray:I

    goto :goto_e

    :cond_e
    sget v1, Lio/github/okaidev/pickupcode/R$drawable;->bg_btn_outline:I

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->toggle:Landroid/widget/Button;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;->this$0:Lio/github/okaidev/pickupcode/MainActivity;

    invoke-virtual {v1}, Lio/github/okaidev/pickupcode/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->done:Z

    if-eqz v2, :cond_f

    sget v2, Lio/github/okaidev/pickupcode/R$color;->text_sub:I

    goto :goto_f

    :cond_f
    sget v2, Lio/github/okaidev/pickupcode/R$color;->primary:I

    :goto_f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    iget-object v0, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->boxCode:Landroid/view/View;

    new-instance v1, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;

    invoke-direct {v1, p0, p1}, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$1;-><init>(Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;Lio/github/okaidev/pickupcode/PickupStore$Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object p3, p3, Lio/github/okaidev/pickupcode/MainActivity$Holder;->toggle:Landroid/widget/Button;

    new-instance v0, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;

    invoke-direct {v0, p0, p1}, Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter$2;-><init>(Lio/github/okaidev/pickupcode/MainActivity$PickupAdapter;Lio/github/okaidev/pickupcode/PickupStore$Item;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
