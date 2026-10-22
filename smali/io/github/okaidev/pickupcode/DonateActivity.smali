.class public Lio/github/okaidev/pickupcode/DonateActivity;
.super Landroid/app/Activity;
.source "DonateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 222
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private errorLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 161
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u26a0\ufe0f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    .line 163
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "#CC3300"

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    .line 165
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private qCardLp()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 144
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x4

    .line 146
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private qrCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 7

    const-string v0, "#E0E0E0"

    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x6

    .line 110
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v3, "#F5F6FA"

    .line 111
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    const/4 v4, 0x2

    .line 115
    invoke-virtual {v3, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "#1A1A1A"

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x8

    .line 118
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v2, 0x78

    .line 124
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x60

    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 125
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 128
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 138
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 152
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xe

    .line 156
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private saveOne(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 186
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/16 v3, 0x64

    if-lt p1, v2, :cond_2

    .line 190
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    .line 191
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v2, "image/png"

    .line 192
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "relative_path"

    .line 193
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v2, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 199
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 202
    :cond_2
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 205
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 207
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method

.method private saveQrToDownload()V
    .locals 3

    const-string v0, "donate_wechat.png"

    const-string v1, "\u53d6\u4ef6\u7801\u52a9\u624b_\u5fae\u4fe1\u6536\u6b3e\u7801.png"

    .line 171
    invoke-direct {p0, v0, v1}, Lio/github/okaidev/pickupcode/DonateActivity;->saveOne(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "donate_alipay.jpg"

    const-string v2, "\u53d6\u4ef6\u7801\u52a9\u624b_\u652f\u4ed8\u5b9d\u6536\u6b3e\u7801.jpg"

    .line 172
    invoke-direct {p0, v1, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->saveOne(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const-string v0, "\u5df2\u4fdd\u5b58\u5230 Download \u76ee\u5f55\n\uff08\u6253\u8d4f\u968f\u610f\uff0c\u5fc3\u610f\u6700\u91cd\u8981 \u2615\uff09"

    .line 174
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/DonateActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    if-lez v0, :cond_1

    const-string v0, "\u5df2\u4fdd\u5b58 1 \u5f20\u5230 Download \u76ee\u5f55"

    .line 176
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/DonateActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5b58\u50a8\u6743\u9650"

    .line 178
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/DonateActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 217
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$io-github-okaidev-pickupcode-DonateActivity(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->saveQrToDownload()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    .line 41
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x1c

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v1

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v5

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 44
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\ud83d\udcb0 \u6253\u8d4f\u4f5c\u8005"

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41b00000    # 22.0f

    const/4 v5, 0x2

    .line 46
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#1A1A1A"

    .line 47
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5982\u679c\u8fd9\u4e2a\u6a21\u5757\u5e2e\u4f60\u7701\u53bb\u4e86\u5230\u5904\u627e\u53d6\u4ef6\u7801\u7684\u9ebb\u70e6\uff0c\u53ef\u4ee5\u8003\u8651\u8bf7\u4f5c\u8005\u559d\u676f\u5976\u8336\uff5e\n\u652f\u4ed8\u5b9d / \u5fae\u4fe1\u626b\u7801\u7686\u53ef\uff0c\u91d1\u989d\u968f\u610f\uff0c\u5fc3\u610f\u6700\u91cd\u8981\u3002\n\u6253\u8d4f\u7eaf\u5c5e\u81ea\u613f\uff0c\u4e0d\u5f71\u54cd\u4efb\u4f55\u529f\u80fd\u3002"

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 55
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#666666"

    .line 56
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x3

    .line 57
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v3, 0xa

    .line 58
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-direct {p0, v8}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v7, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, 0x4

    .line 65
    invoke-direct {p0, v7}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v7

    invoke-virtual {v2, v9, v7, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v7, "\u5fae\u4fe1"

    const-string v8, "donate_wechat.png"

    .line 66
    invoke-direct {p0, v7, v8}, Lio/github/okaidev/pickupcode/DonateActivity;->qrCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->qCardLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u652f\u4ed8\u5b9d"

    const-string v8, "donate_alipay.jpg"

    .line 67
    invoke-direct {p0, v7, v8}, Lio/github/okaidev/pickupcode/DonateActivity;->qrCard(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/DonateActivity;->qCardLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u957f\u6309\u4e8c\u7ef4\u7801\u53ef\u4fdd\u5b58\u5230\u76f8\u518c\uff0c\u6216\u70b9\u4e0b\u65b9\u6309\u94ae\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    .line 71
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41300000    # 11.0f

    .line 72
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "#999999"

    .line 73
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    .line 74
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 81
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\ud83d\udcbe \u4fdd\u5b58\u4e24\u4e2a\u6536\u6b3e\u7801\u5230\u672c\u5730\uff08Download \u76ee\u5f55\uff09"

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 90
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "#0FA968"

    .line 92
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v2, 0x10

    .line 93
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v3

    const/16 v5, 0xe

    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v6, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    new-instance v3, Lio/github/okaidev/pickupcode/DonateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/github/okaidev/pickupcode/DonateActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/okaidev/pickupcode/DonateActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v4}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/DonateActivity;->dp(I)I

    move-result v2

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/DonateActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
