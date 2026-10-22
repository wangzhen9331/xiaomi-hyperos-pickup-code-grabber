.class public final Lio/github/okaidev/pickupcode/WidgetPrefs;
.super Ljava/lang/Object;
.source "WidgetPrefs.java"


# static fields
.field public static final DEFAULT_TPL:Ljava/lang/String; = "{carrier}\uff5c{place}"

.field public static final FONT_DEFAULT:I = 0x14

.field public static final FONT_MAX:I = 0x1e

.field public static final FONT_MIN:I = 0xa

.field private static final KEY_ALPHA_LEGACY:Ljava/lang/String; = "alpha_percent"

.field private static final KEY_FONT:Ljava/lang/String; = "font_sp"

.field private static final KEY_TPL:Ljava/lang/String; = "content_tpl"

.field private static final PREFS:Ljava/lang/String; = "widget"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fontSp(Landroid/content/Context;)I
    .locals 2

    .line 41
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "font_sp"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    .line 42
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0xa

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static render(Ljava/lang/String;Lio/github/okaidev/pickupcode/PickupStore$Item;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 81
    :cond_1
    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->carrier:Ljava/lang/String;

    .line 82
    :goto_0
    iget-object v2, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->place:Ljava/lang/String;

    .line 83
    :goto_1
    iget-object v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->body:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->body:Ljava/lang/String;

    .line 85
    :goto_2
    iget-object v4, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v4, v0

    goto :goto_3

    :cond_5
    iget-object v4, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->code:Ljava/lang/String;

    :goto_3
    const-string v5, "{code}"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "{carrier}"

    .line 86
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "{source}"

    .line 87
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "{place}"

    .line 88
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, p1, Lio/github/okaidev/pickupcode/PickupStore$Item;->ts:J

    .line 89
    invoke-static {v1, v2}, Lio/github/okaidev/pickupcode/WidgetPrefs;->timeText(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{time}"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{body}"

    .line 90
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^[\\s\uff5c|\u00b7:\uff1a]+"

    .line 92
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[\\s\uff5c|\u00b7:\uff1a]+$"

    .line 93
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[\\s]*[\uff5c|\u00b7][\\s]*[\uff5c|\u00b7][\\s]*"

    const-string v0, " \u00b7 "

    .line 94
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "font_sp"

    const/16 v1, 0x14

    .line 60
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "content_tpl"

    const-string v1, "{carrier}\uff5c{place}"

    .line 61
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "alpha_percent"

    .line 62
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static save(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/16 v0, 0x1e

    .line 52
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string v0, "font_sp"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p2, "{carrier}\uff5c{place}"

    :cond_0
    const-string p1, "content_tpl"

    .line 53
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "alpha_percent"

    .line 54
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "widget"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static template(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "content_tpl"

    const-string v1, "{carrier}\uff5c{place}"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static timeText(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
