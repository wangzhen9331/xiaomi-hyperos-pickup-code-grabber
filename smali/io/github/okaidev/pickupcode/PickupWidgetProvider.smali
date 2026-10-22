.class public Lio/github/okaidev/pickupcode/PickupWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PickupWidgetProvider.java"


# static fields
.field public static final ACTION_DONE:Ljava/lang/String; = "io.github.okaidev.pickupcode.action.WIDGET_DONE"

.field private static final MAIN:Landroid/os/Handler;

.field private static final SECOND_PASS:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile sApp:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsApp()Landroid/content/Context;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->sApp:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdoRefresh(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->doRefresh(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->MAIN:Landroid/os/Handler;

    .line 87
    new-instance v0, Lio/github/okaidev/pickupcode/PickupWidgetProvider$1;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider$1;-><init>()V

    sput-object v0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->SECOND_PASS:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static build(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 1

    .line 125
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->pendingCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->build(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static build(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 130
    :goto_0
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->isCompact(Landroid/content/Context;I)Z

    move-result v2

    .line 133
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 134
    sget v4, Lio/github/okaidev/pickupcode/R$layout;->widget_layout_empty:I

    goto :goto_2

    :goto_1
    sget v4, Lio/github/okaidev/pickupcode/R$layout;->widget_layout:I

    :goto_2
    invoke-direct {v9, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 137
    sget v3, Lio/github/okaidev/pickupcode/R$id;->widget_title:I

    const-string v4, "\u53d6\u4ef6\u7801"

    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    .line 142
    sget v3, Lio/github/okaidev/pickupcode/R$id;->widget_hint:I

    const/16 v4, 0x8

    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    invoke-static {p0, v4}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->dp(Landroid/content/Context;I)I

    move-result v7

    .line 144
    sget v4, Lio/github/okaidev/pickupcode/R$id;->widget_body:I

    const/4 v3, 0x6

    invoke-static {p0, v3}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->dp(Landroid/content/Context;I)I

    move-result v8

    move-object v3, v9

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_3

    .line 146
    :cond_1
    sget v3, Lio/github/okaidev/pickupcode/R$id;->widget_hint:I

    invoke-virtual {v9, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/github/okaidev/pickupcode/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x14000000

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0xc000000

    .line 152
    invoke-static {p0, v0, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 154
    sget v4, Lio/github/okaidev/pickupcode/R$id;->widget_header:I

    invoke-virtual {v9, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 162
    new-instance p2, Landroid/content/Intent;

    const-class v3, Lio/github/okaidev/pickupcode/PickupWidgetService;

    invoke-direct {p2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "appWidgetId"

    .line 163
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "compact"

    .line 164
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    sget p1, Lio/github/okaidev/pickupcode/R$id;->widget_list:I

    invoke-virtual {v9, p1, p2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 167
    sget p1, Lio/github/okaidev/pickupcode/R$id;->widget_list:I

    sget p2, Lio/github/okaidev/pickupcode/R$id;->widget_empty:I

    invoke-virtual {v9, p1, p2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 170
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lio/github/okaidev/pickupcode/WidgetActionReceiver;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "io.github.okaidev.pickupcode.action.WIDGET_DONE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0xa000000

    .line 171
    invoke-static {p0, v1, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 173
    sget p1, Lio/github/okaidev/pickupcode/R$id;->widget_list:I

    invoke-virtual {v9, p1, p0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    return-object v9
.end method

.method private static doRefresh(Landroid/content/Context;)V
    .locals 8

    const-string v0, "PICKUPDEBUG"

    .line 97
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/content/ComponentName;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/github/okaidev/pickupcode/PickupWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 100
    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->pendingCount(Landroid/content/Context;)I

    move-result v3

    .line 102
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v2, v5

    .line 103
    invoke-static {p0, v6, v3}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->build(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    :cond_1
    sget p0, Lio/github/okaidev/pickupcode/R$id;->widget_list:I

    invoke-virtual {v1, v2, p0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget refresh \u00d7"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " pending="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget refresh err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static isCompact(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 181
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "appWidgetMinHeight"

    .line 183
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    const/16 v1, 0x8c

    .line 184
    invoke-static {p0, v1}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->dp(Landroid/content/Context;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, p0, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static pendingCount(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupStore;->get(Landroid/content/Context;)Lio/github/okaidev/pickupcode/PickupStore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/PickupStore;->list(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pendingCount err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->sApp:Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->doRefresh(Landroid/content/Context;)V

    sget-object p0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->MAIN:Landroid/os/Handler;

    sget-object v0, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->SECOND_PASS:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x2bc

    .line 80
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 60
    :try_start_0
    invoke-static {p1, p3}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->build(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onOptionsChanged err: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PICKUPDEBUG"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6

    .line 46
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 48
    :try_start_0
    invoke-static {p1, v2}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->build(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onUpdate widget "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " err: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PICKUPDEBUG"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
