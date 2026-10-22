.class public Lio/github/okaidev/pickupcode/ChainTestActivity;
.super Landroid/app/Activity;
.source "ChainTestActivity.java"


# instance fields
.field private input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addResultRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 227
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x5

    .line 229
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 230
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    const/4 v3, 0x2

    .line 232
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p2, "#888888"

    .line 233
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xa

    .line 234
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result p2

    invoke-virtual {v2, v1, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 235
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    const/4 v4, -0x2

    invoke-direct {p2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x41500000    # 13.0f

    .line 239
    invoke-virtual {p2, v3, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p3, "#1A1A1A"

    .line 240
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 3

    .line 362
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 364
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, -0x1

    .line 365
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xa

    .line 367
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result p2

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x11

    .line 368
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doParse()V
    .locals 15

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 154
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u6216\u7c98\u8d34\u77ed\u4fe1\u5185\u5bb9"

    .line 156
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->clearLastHit()V

    .line 161
    invoke-static {v0}, Lio/github/okaidev/pickupcode/PickupExtractor;->extract(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-static {v0}, Lio/github/okaidev/pickupcode/TodoWriter;->extractPlace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "10086"

    .line 163
    invoke-static {v4, v0}, Lio/github/okaidev/pickupcode/TodoWriter;->resolveSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 166
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getLastHitUserRuleName()Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->pageBase()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 169
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u7b2c 2 \u6b65 / \u5171 3 \u6b65\uff1a\u89e3\u6790\u7ed3\u679c"

    .line 170
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41a00000    # 20.0f

    const/4 v11, 0x2

    .line 171
    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v10, "#0FA968"

    if-eqz v5, :cond_1

    move-object v12, v10

    goto :goto_0

    :cond_1
    const-string v12, "#D93025"

    .line 172
    :goto_0
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x0

    .line 173
    invoke-virtual {v9, v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v12, 0x6

    .line 174
    invoke-direct {p0, v12}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v12

    const/16 v13, 0xe

    invoke-direct {p0, v13}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v14

    invoke-virtual {v9, v2, v12, v2, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v5, :cond_2

    const-string v6, "#EEF9F1"

    goto :goto_1

    :cond_2
    const-string v6, "#FDF0EF"

    .line 180
    :goto_1
    invoke-direct {p0, v6}, Lio/github/okaidev/pickupcode/ChainTestActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-direct {p0, v13}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v13}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v12

    invoke-direct {p0, v13}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v14

    invoke-direct {p0, v13}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v13

    invoke-virtual {v9, v6, v12, v14, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 182
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v6, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xc

    .line 184
    invoke-direct {p0, v12}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v12

    invoke-virtual {v6, v2, v2, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 185
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v7, :cond_3

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "\ud83e\udde9 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219 \u00b7 "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 191
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "\ud83d\udcd8 \u5b98\u65b9\u89c4\u5219\u96c6 v"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string v12, "\u89c4\u5219\u6765\u6e90"

    .line 189
    invoke-direct {p0, v9, v12, v6}, Lio/github/okaidev/pickupcode/ChainTestActivity;->addResultRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    const-string v6, "\u3001"

    .line 192
    invoke-static {v6, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "\u672a\u8bc6\u522b\u5230"

    :goto_3
    const-string v6, "\u53d6\u4ef6\u7801"

    invoke-direct {p0, v9, v6, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->addResultRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u6765  \u6e90"

    .line 193
    invoke-static {v4}, Lio/github/okaidev/pickupcode/ChainTestActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v1, v4}, Lio/github/okaidev/pickupcode/ChainTestActivity;->addResultRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u5730  \u70b9"

    .line 194
    invoke-static {v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v9, v1, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->addResultRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_6

    if-eqz v7, :cond_5

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2705 \u8bc6\u522b\u6210\u529f\uff08\u7531\u4f60\u7684\u81ea\u5b9a\u4e49\u89c4\u5219\u300c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u300d\u5339\u914d\uff09\u3002\n\n\u4e0b\u4e00\u6b65\u53ef\u5199\u5165\u5f85\u529e\uff0c\u9a8c\u8bc1\u5b8c\u6574\u94fe\u8def\uff08\u53bb\u91cd + \u901a\u77e5\uff09\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v3, "\u2705 \u8bc6\u522b\u6210\u529f\uff08\u7531\u5b98\u65b9\u89c4\u5219\u96c6\u5339\u914d\uff09\u3002\n\n\u4e0b\u4e00\u6b65\u53ef\u5199\u5165\u5f85\u529e\uff0c\u9a8c\u8bc1\u5b8c\u6574\u94fe\u8def\uff08\u53bb\u91cd + \u901a\u77e5\uff09\u3002"

    goto :goto_4

    :cond_6
    const-string v3, "\u274c \u6ca1\u80fd\u8bc6\u522b\u5230\u53d6\u4ef6\u7801\u3002\n\n\u53ef\u80fd\u662f\u77ed\u4fe1\u6a21\u677f\u8f83\u7279\u6b8a\uff0c\u5b98\u65b9\u89c4\u5219\u6ca1\u8986\u76d6\u5230\u3002\n\u8fd9\u6b63\u662f\u300c\ud83e\udde9 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219\u300d\u8be5\u51fa\u624b\u7684\u573a\u666f\u3002\n\u4e5f\u53ef\u4ee5\u628a\u8fd9\u6761\u77ed\u4fe1\u4e0a\u62a5\u7ed9\u4f5c\u8005\uff0c\u4e0b\u4e00\u7248\u89c4\u5219\u5c31\u80fd\u9002\u914d\u3002"

    .line 197
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 207
    invoke-virtual {v1, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#666666"

    .line 208
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x3

    .line 209
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 210
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 212
    invoke-virtual {v8, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_7

    .line 216
    new-instance v1, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;Ljava/lang/String;)V

    const-string v2, "\u2462 \u5199\u5165\u5f85\u529e\uff08\u9a8c\u8bc1\u5b8c\u6574\u94fe\u8def\uff09"

    invoke-direct {p0, v2, v10, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->vlp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 218
    :cond_7
    new-instance v1, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    const-string v2, "\u270d\ufe0f \u4e0a\u62a5\u8fd9\u6761\u77ed\u4fe1\u7ed9\u4f5c\u8005"

    const-string v3, "#F0A020"

    invoke-direct {p0, v2, v3, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->vlp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :goto_5
    new-instance v1, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda4;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;Ljava/lang/String;)V

    const-string v0, "\u2190 \u8fd4\u56de\u4fee\u6539\u77ed\u4fe1"

    const-string v2, "#8A8A8A"

    invoke-direct {p0, v0, v2, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->vlp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {p0, v8}, Lio/github/okaidev/pickupcode/ChainTestActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private doWrite(Ljava/lang/String;)V
    .locals 9

    const-string v0, "\u89e3\u6790\u51fa\u4e86\u53d6\u4ef6\u7801\uff0c\u4f46\u5199\u5165\u5f85\u529e\u8fd9\u6b65\u6ca1\u901a\u8fc7\u3002\n\n\u53ef\u80fd\u539f\u56e0\uff1a\n"

    const-string v1, "\u89e3\u6790 \u2705\u3000\u8bc6\u522b \u2705\u3000\u5199\u5165 \u2705\u3000\u53bb\u91cd \u2705\u3000\u901a\u77e5 \u2705\n\n\u6574\u6761\u94fe\u8def\u5de5\u4f5c\u6b63\u5e38\u3002\u4ee5\u540e\u6536\u5230\u771f\u5b9e\u53d6\u4ef6\u77ed\u4fe1\u4f1a\u81ea\u52a8\u5199\u8fdb\u5f85\u529e\uff0c\n\u8fd9\u6761\u6d4b\u8bd5\u8bb0\u5f55\u53ef\u968f\u65f6\u5220\u9664\u3002\n\n\u5df2\u5199\u5165\uff1a"

    const/4 v2, 0x0

    .line 262
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sender"

    const-string v5, "chain-test"

    .line 263
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "body"

    .line 264
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "content://io.github.okaidev.pickupcode.provider"

    .line 267
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "onSms"

    .line 266
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "result"

    .line 269
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v5, "["

    .line 270
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 275
    :goto_1
    invoke-static {}, Lio/github/okaidev/pickupcode/TodoWriter;->getLastDedupHits()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-eqz v3, :cond_3

    const-string p1, "\u2705 \u5199\u5165\u6210\u529f\uff08\u547d\u4e2d\u53bb\u91cd\uff09"

    const-string v0, "\u89e3\u6790 \u2705\u3000\u8bc6\u522b \u2705\u3000\u53bb\u91cd \u2705\u3000\u901a\u77e5 \u2705\n\n\u8fd9\u6761\u53d6\u4ef6\u7801\u4e4b\u524d\u5df2\u5199\u5165\u8fc7\uff0c\u53bb\u91cd\u673a\u5236\u6b63\u5e38\u62e6\u622a\u2014\u2014\u8bf4\u660e\u6574\u6761\u94fe\u8def\u662f\u901a\u7684\uff0c\u4e14\u4e0d\u4f1a\u91cd\u590d\u6253\u6270\u4f60\u3002\n\n\u60f3\u770b\u5199\u5165\u6548\u679c\uff1f\u6362\u4e00\u6761\u6ca1\u6d4b\u8fc7\u7684\u77ed\u4fe1\u518d\u8bd5\u4e00\u6b21\u5373\u53ef\u3002"

    goto :goto_4

    .line 283
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez p1, :cond_4

    const-string p1, "\u94fe\u8def\u5728\u6a21\u5757\u5165\u53e3\u88ab\u62e6\u4e0b\uff08\u672a\u8fdb\u5165\u5199\u5165\u73af\u8282\uff09\uff1a\u7a7a\u6b63\u6587 / 10 \u5206\u949f\u5386\u53f2\u77ed\u4fe1\u95f8\u95e8 / \u975e\u53d6\u4ef6\u77ed\u4fe1\u3002\n\u8bf7\u786e\u8ba4\u8f93\u5165\u7684\u662f\u5b8c\u6574\u53d6\u4ef6\u77ed\u4fe1\u539f\u6587\uff1b\u82e5\u521a\u91cd\u542f\u8fc7\u624b\u673a\u6216\u521a\u88c5\u5b8c\u6a21\u5757\uff0c\u6a21\u5757\u8fdb\u7a0b\u53ef\u80fd\u5c1a\u672a\u5c31\u7eea\uff0c\u7a0d\u7b49\u51e0\u79d2\u518d\u8bd5\u4e00\u6b21\u3002"

    goto :goto_3

    .line 294
    :cond_4
    invoke-static {}, Lio/github/okaidev/pickupcode/TodoWriter;->getLastWriteDiag()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0xa0

    if-le v1, v7, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u2026"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_3
    const-string v1, "\u274c \u5199\u5165\u672a\u6210\u529f"

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\n\u53ef\u56de\u4e3b\u754c\u9762\u5c55\u5f00\u300c\u2699\ufe0f \u66f4\u591a\u8bbe\u7f6e\u300d\u70b9\u300c\ud83d\udd0d \u6392\u67e5\u95ee\u9898\u300d\u6309\u5411\u5bfc\u5b9a\u4f4d\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    goto :goto_4

    :cond_6
    const-string p1, "\ud83c\udf89 \u5168\u94fe\u8def\u5df2\u8dd1\u901a"

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_4
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->pageBase()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 308
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    const/4 v8, 0x2

    .line 310
    invoke-virtual {v7, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez v3, :cond_8

    .line 312
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    const-string p1, "#D93025"

    goto :goto_6

    :cond_8
    :goto_5
    const-string p1, "#0FA968"

    .line 311
    :goto_6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    invoke-virtual {v7, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 p1, 0x6

    .line 314
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result p1

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-virtual {v7, v6, p1, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41500000    # 13.0f

    .line 319
    invoke-virtual {p1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "#444444"

    .line 320
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x4

    .line 321
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 322
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "\u2705 \u5b8c\u6210"

    const-string v0, "#1E6FE8"

    .line 325
    new-instance v3, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    invoke-direct {p0, p1, v0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->vlp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "\u2190 \u518d\u6d4b\u4e00\u6761"

    const-string v0, "#8A8A8A"

    .line 326
    new-instance v3, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda1;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    invoke-direct {p0, p1, v0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->vlp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u274c \u5199\u5165\u5f02\u5e38"

    .line 330
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u77e5\u9053\u4e86"

    .line 332
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_7
    return-void
.end method

.method private dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 398
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 397
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private lp()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 374
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x3

    .line 376
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "\u2014"

    :cond_1
    return-object p0
.end method

.method private pageBase()Landroid/widget/LinearLayout;
    .locals 5

    .line 247
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x14

    .line 249
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private report()V
    .locals 6

    const-string v0, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/issues/new?title="

    const-string v1, "### 1. \u6536\u5230\u7684\u77ed\u4fe1\u539f\u6587\uff08\u8bf7\u81ea\u884c\u8131\u654f\uff09\n"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 340
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n### 2. \u671f\u671b\u7ed3\u679c\n\uff08\u5e94\u63d0\u53d6\u5230\u7684\u53d6\u4ef6\u7801 / \u6765\u6e90 / \u5730\u70b9\uff09\n\n### 3. \u5b9e\u9645\u8868\u73b0\n\u00b7 \u5728\u300c\ud83e\uddea \u4e00\u952e\u94fe\u8def\u6d4b\u8bd5\u300d\u4e2d\u89e3\u6790\u7ed3\u679c\uff1a\n\n### 4. \u8fd0\u884c\u73af\u5883\n- \u6a21\u5757\u7248\u672c\uff1av"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 346
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n- \u89c4\u5219\u7248\u672c\uff1av"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u3010\u77ed\u4fe1\u672a\u8bc6\u522b\u4e0a\u62a5\u3011"

    .line 350
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&body="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 352
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u6d4f\u89c8\u5668\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 381
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 384
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xc

    .line 385
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private sample()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "99-9-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%04d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010\u83dc\u9e1f\u9a7f\u7ad9\u3011\u6d4b\u8bd5\u5305\u88f9\uff1a\u53d6\u4ef6\u7801\u4e3a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u8bf7\u5230XX\u5c0f\u533a\u5feb\u9012\u9a7f\u7ad9\u53d6\u4ef6\uff08\u6d4b\u8bd5\u6761\u76ee\uff0c\u53ef\u5220\u9664\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showStep1(Ljava/lang/String;)V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->recreate()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private vlp()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 391
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 393
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$doParse$3$io-github-okaidev-pickupcode-ChainTestActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->doWrite(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$doParse$4$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->report()V

    return-void
.end method

.method synthetic lambda$doParse$5$io-github-okaidev-pickupcode-ChainTestActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->showStep1(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$doWrite$6$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->finish()V

    return-void
.end method

.method synthetic lambda$doWrite$7$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 326
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->showStep1(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 73
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->sample()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u5df2\u586b\u5165\u5b98\u65b9\u6848\u4f8b\uff0c\u70b9\u4e0b\u65b9\u300c\u2461 \u89e3\u6790\u300d\u7ee7\u7eed"

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$1$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 3

    .line 0
    const/4 p1, 0x0

    :try_start_0
    const-string v0, "clipboard"

    .line 78
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u5df2\u7c98\u8d34"

    .line 83
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v0, "\u526a\u8d34\u677f\u662f\u7a7a\u7684"

    .line 87
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "\u8bfb\u53d6\u526a\u8d34\u677f\u5931\u8d25"

    .line 89
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$2$io-github-okaidev-pickupcode-ChainTestActivity(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->doParse()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->init(Landroid/content/Context;)V

    .line 47
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x14

    .line 49
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 52
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\ud83e\uddea \u4e00\u952e\u94fe\u8def\u6d4b\u8bd5"

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 54
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#1A1A1A"

    .line 55
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u9a8c\u8bc1\u300c\u77ed\u4fe1\u8fdb\u6765 \u2192 \u8bc6\u522b \u2192 \u5199\u5165\u5f85\u529e\u300d\u6574\u6761\u94fe\u8def\u662f\u5426\u6b63\u5e38\n\u4e0d\u6d88\u8017\u77ed\u4fe1 \u00b7 \u4e0d\u4ea7\u751f\u8d39\u7528 \u00b7 \u6d4b\u8bd5\u8bb0\u5f55\u53ef\u968f\u65f6\u5220\u9664"

    .line 60
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 62
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "#888888"

    .line 63
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x3

    .line 64
    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v6, 0x6

    .line 65
    invoke-direct {p0, v6}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v8

    const/16 v9, 0xe

    invoke-direct {p0, v9}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    new-instance v8, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda5;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    const-string v9, "\ud83d\udccb \u586b\u5165\u5b98\u65b9\u6848\u4f8b"

    const-string v11, "#7A5AF8"

    invoke-direct {p0, v9, v11, v8}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v8

    .line 75
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->lp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 72
    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v8, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    const-string v9, "\ud83d\udce5 \u7c98\u8d34\u526a\u8d34\u677f"

    const-string v11, "#0FA968"

    invoke-direct {p0, v9, v11, v8}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v8

    .line 91
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->lp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 76
    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u7b2c 1 \u6b65 / \u5171 3 \u6b65\uff1a\u8f93\u5165\u8981\u6d4b\u8bd5\u7684\u77ed\u4fe1"

    .line 96
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41500000    # 13.0f

    .line 97
    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "#333333"

    .line 98
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v0, 0x10

    .line 100
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v6}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v10, v0, v10, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const-string v2, "\u5728\u6b64\u7c98\u8d34\u6216\u8f93\u5165\u77ed\u4fe1\u7684\u5b8c\u6574\u5185\u5bb9"

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 105
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const-string v2, "#AAAAAA"

    .line 106
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 107
    invoke-virtual {v0, v4, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const v2, 0x800033

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const/4 v2, 0x5

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const/16 v2, 0xa

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const/16 v3, 0xc

    .line 111
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v6, v8, v3, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    const-string v3, "#F7F8FA"

    .line 112
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 115
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ChainTestActivity;->input:Landroid/widget/EditText;

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83d\udca1 \u7b2c\u4e00\u6b21\u4f7f\u7528\u5efa\u8bae\u70b9\u300c\u586b\u5165\u5b98\u65b9\u6848\u4f8b\u300d\uff1b\n\u82e5\u67d0\u6761\u771f\u5b9e\u77ed\u4fe1\u6ca1\u88ab\u6293\u5230\uff0c\u7c98\u8d34\u8fdb\u6765\u70b9\u4e0b\u65b9\u6309\u94ae\u770b\u662f\u5426\u5339\u914d\uff0c\n\u8fd9\u6b63\u662f\u300c\ud83e\udde9 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219\u300d\u8be5\u51fa\u624b\u7684\u573a\u666f\u3002"

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 123
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#999999"

    .line 124
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 126
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/ChainTestActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v0, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/ChainTestActivity$$ExternalSyntheticLambda7;-><init>(Lio/github/okaidev/pickupcode/ChainTestActivity;)V

    const-string v1, "\u2461 \u89e3\u6790\uff08\u4e0d\u5199\u5e93\uff09"

    const-string v2, "#1E6FE8"

    invoke-direct {p0, v1, v2, v0}, Lio/github/okaidev/pickupcode/ChainTestActivity;->btn(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/ChainTestActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
