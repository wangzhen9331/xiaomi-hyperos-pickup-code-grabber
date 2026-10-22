.class public Lio/github/okaidev/pickupcode/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field private static final BLACKLIST_DEFAULT:Ljava/lang/String; = "12306,\u9a8c\u8bc1\u7801,\u4f59\u989d,\u5145\u503c,\u8d26\u5355,\u94f6\u884c,\u4f18\u60e0\u5238,\u9000\u8ba2"

.field private static final COOLAPK_URL:Ljava/lang/String; = "https://www.coolapk.com/feed/73558591"

.field private static final C_ACCENT:Ljava/lang/String; = "#7A5AF8"

.field private static final C_CARD:Ljava/lang/String; = "#F7F8FA"

.field private static final C_DANGER:Ljava/lang/String; = "#D93025"

.field private static final C_OK:Ljava/lang/String; = "#0FA968"

.field private static final C_PRIMARY:Ljava/lang/String; = "#1E6FE8"

.field private static final C_SUB:Ljava/lang/String; = "#888888"

.field private static final C_TEXT:Ljava/lang/String; = "#1A1A1A"

.field private static final C_TRACK:Ljava/lang/String; = "#9AA4B2"

.field private static final C_WARN:Ljava/lang/String; = "#F0A020"

.field private static final ISSUES_URL:Ljava/lang/String; = "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/issues"

.field private static final KEY_BACKEND:Ljava/lang/String; = "backend_override"

.field private static final KEY_SYS_DIRECT:Ljava/lang/String; = "sys_direct_write"

.field private static final PREFS:Ljava/lang/String; = "dedup"

.field private static final REPO_URL:Ljava/lang/String; = "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber"

.field private static final SELF_TEST_SMS_TEMPLATE:Ljava/lang/String; = "\u3010\u83dc\u9e1f\u9a7f\u7ad9\u3011\u6d4b\u8bd5\u5305\u88f9\uff1a\u53d6\u4ef6\u7801\u4e3a%s\uff0c\u8bf7\u5230XX\u5c0f\u533a\u5feb\u9012\u9a7f\u7ad9\u53d6\u4ef6\uff08\u6d4b\u8bd5\u6761\u76ee\uff0c\u53ef\u5220\u9664\uff09"


# instance fields
.field private backendLabelView:Landroid/widget/TextView;

.field private currentMode:I

.field private deployBtn:Landroid/widget/TextView;

.field private healthExpanded:Ljava/lang/Boolean;

.field private lastHealthText:Ljava/lang/String;

.field private final modeBtns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final modeIds:[I

.field private refreshSdwUi:Ljava/lang/Runnable;

.field private refreshTplPreview:Ljava/lang/Runnable;

.field private restyleModes:Ljava/lang/Runnable;

.field private statusCard:Landroid/widget/TextView;

.field private subTitleView:Landroid/widget/TextView;

.field private tplEditor:Landroid/widget/EditText;

.field private tplEditorBtnRow:Landroid/widget/LinearLayout;

.field private tplPreviewCard:Landroid/widget/TextView;

.field private troubleshootBtn:Landroid/widget/TextView;

.field private urBadgeView:Landroid/widget/TextView;

.field private urSubView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    iput-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->lastHealthText:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeBtns:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeIds:[I

    return-void
.end method

.method private appVersionLabel()Ljava/lang/String;
    .locals 4

    const-string v0, "v"

    .line 823
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 824
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "v?"

    return-object v0
.end method

.method private applyBackend(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 967
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backend_override"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->invalidateCache()V

    const-string v0, "xiaomi"

    .line 971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5c0f\u7c73\u7b14\u8bb0\u5f85\u529e"

    goto :goto_0

    :cond_0
    const-string v0, "coloros_todo"

    .line 972
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ColorOS \u65e5\u5386\u5f85\u529e"

    goto :goto_0

    :cond_1
    const-string v0, "coloros_note"

    .line 973
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ColorOS \u4fbf\u7b7e\u7f6e\u9876\u7b14\u8bb0"

    goto :goto_0

    :cond_2
    const-string v0, "pickup_todo"

    .line 974
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "\u53d6\u4ef6\u67dc\uff08\u914d\u5957 App\uff09"

    goto :goto_0

    :cond_3
    const-string v0, "r5"

    .line 975
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u53d6\u4ef6\u7801\u52a9\u624b R5"

    goto :goto_0

    :cond_4
    const-string p1, "\u81ea\u52a8\u8bc6\u522b"

    .line 977
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5199\u5165\u76ee\u6807\u5df2\u5207\u6362\uff1a\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\uff08\u4e0b\u6b21\u6536\u5230\u53d6\u4ef6\u77ed\u4fe1\u5373\u5199\u5165\u65b0\u76ee\u6807\uff1b\u53ef\u70b9\u300c\ud83e\uddea \u4e00\u952e\u6d4b\u8bd5\u300d\u7acb\u5373\u9a8c\u8bc1\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 979
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->subTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->appVersionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 LSPosed \u6a21\u5757 \u00b7 \u81ea\u52a8\u63d0\u53d6\u53d6\u4ef6\u7801\u5199\u5165 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabelView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83c\udfaf \u5199\u5165\u76ee\u6807\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshSdwUi:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 985
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 986
    :cond_7
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    return-void
.end method

.method private applyHealthCollapse()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->lastHealthText:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1503
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->lastHealthText:Ljava/lang/String;

    .line 1504
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const v1, 0x7fffffff

    .line 1505
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u2705 \u4e00\u5207\u6b63\u5e38 \u00b7 \u516d\u9879\u4f53\u68c0\u5168\u90e8\u901a\u8fc7\uff08\u89c4\u5219\u96c6: v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u70b9\u5f00\u770b\u8be6\u60c5\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 1508
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private backendLabel()Ljava/lang/String;
    .locals 2

    .line 927
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    .line 928
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u5c0f\u7c73\u7b14\u8bb0\u5f85\u529e"

    return-object v0

    :cond_0
    const-string v1, "coloros_note"

    .line 929
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ColorOS \u4fbf\u7b7e\u7f6e\u9876\u7b14\u8bb0"

    return-object v0

    :cond_1
    const-string v1, "pickup_todo"

    .line 930
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u53d6\u4ef6\u67dc\uff08\u914d\u5957 App\uff09"

    return-object v0

    :cond_2
    const-string v1, "r5"

    .line 931
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u53d6\u4ef6\u7801\u52a9\u624b R5"

    return-object v0

    :cond_3
    const-string v0, "ColorOS \u65e5\u5386\u5f85\u529e"

    return-object v0
.end method

.method private card()Landroid/widget/LinearLayout;
    .locals 5

    .line 1656
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1657
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "#F7F8FA"

    .line 1658
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xe

    .line 1659
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1660
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    .line 1662
    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1663
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private cardTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1697
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1698
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    const/4 v1, 0x2

    .line 1699
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "#1A1A1A"

    .line 1700
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 1701
    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1702
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private copyQqGroup()V
    .locals 3

    :try_start_0
    const-string v0, "clipboard"

    .line 1228
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "qq_group"

    const-string v2, "901543676"

    .line 1229
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u7fa4\u53f7\u5df2\u590d\u5236\uff1a901543676\n\u8fdb\u7fa4\u8bf7\u5907\u6ce8\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d"

    const/4 v1, 0x1

    .line 1230
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "\u590d\u5236\u5931\u8d25\uff0c\u7fa4\u53f7\uff1a901543676"

    const/4 v1, 0x0

    .line 1232
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 1708
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 1707
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private exitTplEdit(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x8

    .line 1594
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1595
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 1596
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p2, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 1597
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz p5, :cond_1

    .line 1598
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private exportDiag()V
    .locals 2

    const-string v0, "\u6b63\u5728\u751f\u6210\u8bca\u65ad\u62a5\u544a\u2026\uff08\u542b\u65e5\u5fd7\u63d0\u53d6\uff0c\u7ea6 5-10 \u79d2\uff09"

    const/4 v1, 0x0

    .line 1259
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda14;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/Diagnostics$Check;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/github/okaidev/pickupcode/Diagnostics$Check;"
        }
    .end annotation

    .line 1285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v1, v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private groupDesc(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1681
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1682
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41300000    # 11.0f

    const/4 v1, 0x2

    .line 1683
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p2, "#888888"

    .line 1684
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1685
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1686
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p2

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1687
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private groupTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1669
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1670
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v1, 0x2

    .line 1671
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p2, "#1A1A1A"

    .line 1672
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 1673
    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1674
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p2

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1675
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private handleCopy(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "\u5df2\u590d\u5236\u53d6\u4ef6\u7801\uff1a"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "copy"

    .line 1548
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1549
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v3, "clipboard"

    .line 1551
    invoke-virtual {p0, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    const-string v4, "pickupcode"

    .line 1552
    invoke-static {v4, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u590d\u5236\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1558
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1559
    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1561
    :catchall_1
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleDone(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "done"

    .line 1567
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1568
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1569
    :cond_1
    invoke-static {p0, v1}, Lio/github/okaidev/pickupcode/TodoWriter;->markDone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1570
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u6807\u8bb0\u5df2\u53d6\u4ef6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "\u6807\u8bb0\u5931\u8d25\uff08\u8be6\u89c1\u65e5\u5fd7 PICKUPDEBUG\uff09"

    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1571
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1572
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 1575
    :try_start_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1576
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :catchall_0
    :cond_3
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method private isBlockingCheck(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1426
    :cond_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pickup_todo"

    .line 1427
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u53d6\u4ef6\u67dc"

    .line 1428
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    const-string v2, "r5"

    .line 1430
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u53d6\u4ef6\u7801\u52a9\u624b"

    .line 1431
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    const-string v1, "root"

    .line 1433
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Root"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sqlite3"

    .line 1434
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u7b14\u8bb0\u5e93"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private isNotiHookFlagOn()Z
    .locals 4

    const/4 v0, 0x0

    .line 1027
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/pickup_sqlite/enable_noti_hook"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 1029
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1030
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz v1, :cond_1

    .line 1032
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method static synthetic lambda$onCreate$19(Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 659
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 660
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p0, 0x8

    .line 661
    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onCreate$22(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    const/16 p4, 0x8

    .line 688
    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 689
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 690
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$toggleNotiHookFlag$33(Z)V
    .locals 3

    const-string v0, " > /data/local/tmp/pickup_sqlite/enable_noti_hook; chmod 644 /data/local/tmp/pickup_sqlite/enable_noti_hook"

    const-string v1, "mkdir -p /data/local/tmp/pickup_sqlite; echo "

    .line 1044
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 1045
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xf

    .line 1044
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic lambda$updateSdwDisplay$34()V
    .locals 2

    :try_start_0
    const-string v0, "mkdir -p /data/local/tmp/pickup_sqlite; echo 1 > /data/local/tmp/pickup_sqlite/enable_sys_direct_write; chmod 644 /data/local/tmp/pickup_sqlite/enable_sys_direct_write"

    const/16 v1, 0xf

    .line 1079
    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private modeButton(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 5

    .line 1602
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1603
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 1604
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    if-ne p2, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "#333333"

    .line 1605
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    if-ne p2, v1, :cond_1

    const-string v1, "#1E6FE8"

    goto :goto_1

    :cond_1
    const-string v1, "#EDF1F7"

    .line 1606
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0xc

    .line 1607
    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    .line 1608
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1609
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0, p2, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda57;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private openChainTest()V
    .locals 3

    .line 1439
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/okaidev/pickupcode/ChainTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private openGithubIssueManual()V
    .locals 6

    const-string v0, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/issues/new?title="

    const-string v1, "### 1. \u6536\u5230\u600e\u6837\u7684\u77ed\u4fe1\uff08\u8bf7\u81ea\u884c\u5c06\u59d3\u540d\u3001\u624b\u673a\u53f7\u7b49\u9690\u79c1\u8131\u654f\uff09\n\u3010\u793a\u4f8b\u9a7f\u7ad9\u3011\u60a8\u7684\u5305\u88f9\u5df2\u5230\u7ad9\uff0c\u53d6\u4ef6\u7801\u4e3a...\n\n### 2. \u5b9e\u9645\u5f97\u5230\u4e86\u600e\u6837\u7684\u53cd\u9988\uff1f\n- [ ] \u6beb\u65e0\u53cd\u5e94\uff08\u672a\u5199\u5165\u5f85\u529e\uff09\n- [ ] \u9519\u8bef\u63d0\u53d6\uff08\u5982\u5c06\u5c0f\u65f6\u3001\u5355\u53f7\u8bef\u8ba4\u4e3a\u53d6\u4ef6\u7801\uff09\n- [ ] \u5730\u70b9\u6216\u6765\u6e90\u8bc6\u522b\u9519\u8bef\n\n\u5177\u4f53\u60c5\u51b5\u8bf4\u660e\uff1a\n\n### 3. \u8fd0\u884c\u73af\u5883\n- \u6a21\u5757\u7248\u672c\uff1av"

    :try_start_0
    const-string v2, "\u3010\u77ed\u4fe1\u6837\u672c\u4e0a\u62a5\u3011\u672a\u8bc6\u522b\u6216\u8bef\u8bc6\u522b\u53d6\u4ef6\u7801"

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n- \u89c4\u5219\u7248\u672c\uff1av"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 914
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n- \u5f53\u524d\u7cfb\u7edf\uff1aAndroid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&body="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/issues"

    .line 919
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 2

    .line 1278
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u672a\u627e\u5230\u53ef\u7528\u7684\u6d4f\u89c8\u5668"

    const/4 v0, 0x0

    .line 1280
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private precheckThenOpenChainTest()V
    .locals 2

    .line 1366
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda50;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1383
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshHealth()V
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const-string v1, "\u23f3 \u6b63\u5728\u4f53\u68c0\u2026"

    .line 1447
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 1448
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda7;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1497
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshUserRuleCard()V
    .locals 3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1535
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1536
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v2, "\u5df2\u542f\u7528"

    goto :goto_0

    :cond_1
    const-string v2, "\u672a\u542f\u7528"

    .line 1537
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, "#0FA968"

    goto :goto_1

    :cond_2
    const-string v0, "#9AA4B2"

    .line 1538
    :goto_1
    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1540
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->userRuleSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private static renderTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1584
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "{code}"

    .line 1585
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{source}"

    .line 1586
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{place}"

    .line 1587
    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{time}"

    .line 1588
    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "\uff08\u7a7a\u6a21\u677f\uff09"

    return-object p0
.end method

.method private roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 808
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 810
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 811
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xe

    .line 812
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private runTroubleshoot()V
    .locals 2

    const-string v0, "\u6b63\u5728\u6392\u67e5\u2026\uff08\u7ea6 2-5 \u79d2\uff09"

    const/4 v1, 0x0

    .line 1096
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1097
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda10;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showBackendPicker(Landroid/widget/TextView;)V
    .locals 7

    const-string p1, "dedup"

    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0, p1, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "backend_override"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const-string v2, "xiaomi"

    const-string v3, "coloros_todo"

    const-string v4, "coloros_note"

    const-string v5, "pickup_todo"

    const-string v6, "r5"

    .line 938
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "\u81ea\u52a8\u8bc6\u522b\uff08\u63a8\u8350\uff09"

    .line 943
    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string v5, "\u5c0f\u7c73\u7b14\u8bb0 \u5f85\u529e\uff08HyperOS/MIUI\uff09"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "ColorOS \u65e5\u5386 \u5f85\u529e\uff08ColorOS 16 \u9ed8\u8ba4\uff09"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "ColorOS \u4fbf\u7b7e \u7f6e\u9876\u7b14\u8bb0\uff08\u5907\u7528\uff09"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u53d6\u4ef6\u67dc App\uff08\u914d\u5957\u00b7\u5df2\u5b89\u88c5\u5219\u81ea\u52a8\u9009\u4e2d\uff0c\u6700\u7a33\uff09"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "\u53d6\u4ef6\u7801\u52a9\u624b R5\uff08com.pickup.assistant\u00b7\u63a2\u9488\u671f\u76ee\u6807\uff0c\u65e0\u9700 root\uff09"

    aput-object v5, v3, v4

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 953
    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 955
    :cond_1
    :goto_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u9009\u62e9\u5199\u5165\u76ee\u6807"

    .line 956
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda33;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;[Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1, v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 961
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 962
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showFeedbackChannels()V
    .locals 4

    .line 1238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u62e9\u53cd\u9988\u6e20\u9053"

    .line 1239
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\ud83d\udcac QQ \u7fa4\uff1a901543676\uff08\u590d\u5236\u7fa4\u53f7\uff09"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\ud83d\udc1b GitHub Issues"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\ud83d\udcf1 \u9177\u5b89\u53d1\u5e03\u5e16"

    aput-object v3, v1, v2

    new-instance v2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda18;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    .line 1240
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 1253
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMainMenu(Landroid/view/View;)V
    .locals 5

    .line 833
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 834
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "\ud83c\udfe0 \u9879\u76ee\u4ed3\u5e93\uff08GitHub\uff09"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 838
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "\ud83d\udd12 \u79bb\u7ebf\u7248\u8bf4\u660e"

    const/4 v4, 0x3

    invoke-interface {p1, v2, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 839
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x5

    const-string v3, "\ud83d\udccb \u7591\u4f3c\u6f0f\u6293\u9519\u9898\u672c"

    invoke-interface {p1, v2, v1, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 840
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x4

    const-string v3, "\ud83d\udcb0 \u6253\u8d4f\u4f5c\u8005"

    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 841
    new-instance p1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda13;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 861
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private showMissedSmsDialog()V
    .locals 8

    .line 866
    invoke-static {p0}, Lio/github/okaidev/pickupcode/MissedSmsStore;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 867
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "\u270d\ufe0f \u624b\u52a8\u4e0a\u62a5"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 868
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83d\udccb \u7591\u4f3c\u6f0f\u6293\u9519\u9898\u672c"

    .line 869
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u9519\u9898\u672c\u4e3a\u7a7a \u2713\n\n\u5f53\u7cfb\u7edf\u6536\u5230\u542b\u6709\u5feb\u9012\u7279\u5f81\u8bcd\u4f46\u672a\u80fd\u63d0\u53d6\u51fa\u53d6\u4ef6\u7801\u7684\u77ed\u4fe1\u65f6\uff0c\u4f1a\u81ea\u52a8\u8bb0\u5f55\u5728\u6b64\u5904\uff0c\u4f9b\u60a8\u4e00\u952e\u8131\u654f\u4e0a\u62a5\u6392\u67e5\u3002"

    .line 870
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    .line 871
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    .line 872
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 877
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u5171\u6355\u83b7 "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6761\u7591\u4f3c\u6f0f\u6293\u77ed\u4fe1\uff1a\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 879
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 880
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;

    iget-object v4, v4, Lio/github/okaidev/pickupcode/MissedSmsStore$Sample;->body:Ljava/lang/String;

    invoke-static {v4}, Lio/github/okaidev/pickupcode/MissedSmsStore;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_0

    .line 883
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\ud83d\udccb \u7591\u4f3c\u6f0f\u6293\u9519\u9898\u672c ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u6761)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 885
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda11;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/util/List;)V

    const-string v0, "\ud83d\udccb \u590d\u5236\u5168\u90e8\u4e0a\u62a5\u6587\u672c"

    .line 886
    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda22;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    .line 896
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    .line 897
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showParseResult(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1301
    invoke-direct {p0, p1, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showParseResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showParseResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1305
    invoke-static {p2, p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1306
    invoke-static {p2, p1}, Lio/github/okaidev/pickupcode/TodoWriter;->extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 1307
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "10086"

    :goto_1
    invoke-static {v2, p1}, Lio/github/okaidev/pickupcode/TodoWriter;->resolveSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1310
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u89c4\u5219\u7248\u672c\uff1av"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1311
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 1312
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\u53d1\u9001\u65b9\uff1a"

    .line 1313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, "\n\u53d6\u4ef6\u7801\uff1a"

    .line 1315
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz v3, :cond_3

    const-string v5, "\u3001"

    invoke-static {v5, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "\u672a\u8bc6\u522b\u5230"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\u6765  \u6e90\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-static {v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\u5730  \u70b9\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-static {v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    const-string p2, "\u2705 \u8bc6\u522b\u6210\u529f\u3002\n\n\u82e5\u8981\u9a8c\u8bc1\u5b8c\u6574\u5199\u5165\u94fe\u8def\uff08\u4f1a\u771f\u5b9e\u5199\u5165\u5f85\u529e\uff09\uff0c\u53ef\u70b9\u4e0b\u65b9\u300c\u786e\u5b9e\u5199\u5165\u8fd9\u6761\u300d\u3002"

    .line 1319
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string p2, "\u274c \u672a\u80fd\u8bc6\u522b\u5230\u53d6\u4ef6\u7801\u3002\n\n\u5e38\u89c1\u539f\u56e0\uff1a\n\u00b7 \u77ed\u4fe1\u6a21\u677f\u8f83\u7279\u6b8a\uff08\u5c5e\u6b63\u5e38\u60c5\u51b5\uff0c\u89c4\u5219\u65e0\u6cd5\u8986\u76d6\u6240\u6709\u5730\u65b9\u9a7f\u7ad9\u6587\u6848\uff09\n\u00b7 \u4f60\u914d\u4e86\u300c\u53d1\u9001\u65b9\u8303\u56f4\u300d\u4f46\u8fd9\u91cc\u6ca1\u586b\u53d1\u9001\u65b9 \u2192 \u53f7\u7801\u89c4\u5219\u65e0\u6cd5\u547d\u4e2d\n\n\u6b22\u8fce\u70b9\u300c\u270d\ufe0f \u624b\u52a8\u4e0a\u62a5\u300d\u628a\u8fd9\u6761\u77ed\u4fe1\u53cd\u9988\u7ed9\u4f5c\u8005\uff0c\u4e0b\u4e00\u7248\u5373\u53ef\u9488\u5bf9\u6027\u9002\u914d\uff01"

    .line 1322
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :goto_3
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_5

    const-string v0, "\u2705 \u89e3\u6790\u7ed3\u679c"

    goto :goto_4

    :cond_5
    const-string v0, "\u274c \u89e3\u6790\u7ed3\u679c"

    .line 1330
    :goto_4
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "\u77e5\u9053\u4e86"

    const/4 v1, 0x0

    .line 1332
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    if-eqz v3, :cond_6

    .line 1334
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda8;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;)V

    const-string p1, "\u786e\u5b9e\u5199\u5165\u8fd9\u6761"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 1350
    :cond_6
    new-instance p1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda9;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v0, "\u270d\ufe0f \u624b\u52a8\u4e0a\u62a5"

    invoke-virtual {p2, v0, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1352
    :goto_5
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showPrecheckResult(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1388
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openChainTest()V

    return-void

    .line 1392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "\n"

    if-nez v1, :cond_1

    const-string v1, "\u4ee5\u4e0b\u95ee\u9898\u53ef\u80fd\u5f71\u54cd\u5199\u5165\u73af\u8282\uff1a\n\n"

    .line 1394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1397
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\u4ee5\u4e0b\u63d0\u793a\u4e0d\u5f71\u54cd\u6d4b\u8bd5\uff1a\n\n"

    goto :goto_1

    :cond_2
    const-string v3, "\u5176\u4ed6\u63d0\u793a\uff08\u4e0d\u5f71\u54cd\u6d4b\u8bd5\uff09\uff1a\n\n"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string p2, "\n\n\u4ecd\u60f3\u5148\u8bd5\u8bd5\u5b8c\u6574\u6d41\u7a0b\uff1f\u70b9\u300c\u7ee7\u7eed\u6d4b\u8bd5\u300d\u3002"

    .line 1402
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "\n\u82e5\u786e\u8ba4\u662f\u73af\u5883\u95ee\u9898\uff0c\u70b9\u300c\u53bb\u6392\u67e5\u300d\u6309\u5411\u5bfc\u9010\u9879\u5904\u7406\u3002"

    .line 1404
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    :cond_4
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1408
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u2705 \u53ef\u4ee5\u6d4b\u8bd5"

    goto :goto_3

    :cond_5
    const-string v1, "\ud83e\ude7a \u4f53\u68c0\u672a\u5168\u901a\u8fc7"

    :goto_3
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v1, "\u7ee7\u7eed\u6d4b\u8bd5"

    .line 1410
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1411
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u53d6\u6d88"

    goto :goto_4

    :cond_6
    const-string v0, "\u77e5\u9053\u4e86"

    :goto_4
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1412
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1413
    new-instance p1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda4;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v0, "\u53bb\u6392\u67e5"

    invoke-virtual {p2, v0, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1415
    :cond_7
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1200
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p3, p2}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda16;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1628
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1629
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    .line 1630
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, -0x1

    .line 1631
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1632
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xa

    .line 1633
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p2

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x11

    .line 1634
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method private spacer(I)Landroid/view/View;
    .locals 3

    .line 1712
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1713
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 1714
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1713
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private toggleNotiHookFlag(Z)V
    .locals 2

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 1040
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "noti_hook"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1041
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private toggleSysDirectWrite(Landroid/widget/TextView;)V
    .locals 4

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 997
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sys_direct_write"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 999
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1002
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v2, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda17;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;ZLandroid/widget/TextView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateSdwDisplay(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 5

    .line 1057
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coloros_todo"

    .line 1058
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "dedup"

    const-string v3, "sys_direct_write"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    const-string v1, "coloros_note"

    .line 1059
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1063
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1064
    invoke-virtual {p0, v2, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 1069
    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1070
    invoke-virtual {p0, v2, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1072
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1075
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1076
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1082
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1084
    :cond_2
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    const-string p1, "\u5df2\u5f00\u542f"

    goto :goto_2

    :cond_3
    const-string p1, "\u5df2\u5173\u95ed"

    .line 1087
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4

    const-string p1, "#0FA968"

    goto :goto_3

    :cond_4
    const-string p1, "#9AA4B2"

    .line 1088
    :goto_3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method private userRuleSummary()Ljava/lang/String;
    .locals 5

    .line 792
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 793
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 795
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/okaidev/pickupcode/UserRules$Rule;

    iget-boolean v4, v4, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "\u5b98\u65b9\u89c4\u5219\u6ca1\u8986\u76d6\u5230\u7684\u77ed\u4fe1\uff1f\u53ef\u4e3a\u81ea\u5bb6\u9a7f\u7ad9\u5355\u72ec\u5199\u4e00\u6761\uff08\u5f53\u524d 0 \u6761\uff09"

    return-object v0

    .line 799
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5171 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\uff0c\u5df2\u542f\u7528 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\uff5c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_1

    :cond_3
    const-string v0, "\u5df2\u5173\u95ed"

    .line 800
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "\u4e3a\u81ea\u5bb6\u9a7f\u7ad9 / \u5b66\u6821\u81ea\u63d0\u67dc\u5199\u4e13\u5c5e\u63d0\u53d6\u89c4\u5219"

    return-object v0
.end method


# virtual methods
.method synthetic lambda$exportDiag$48$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;)V
    .locals 2

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u62a5\u544a\u5df2\u751f\u6210\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff08\u5df2\u81ea\u52a8\u8131\u654f\uff09\n\u53cd\u9988\u6e20\u9053\uff1aQQ \u7fa4 901543676\uff08\u5907\u6ce8\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\uff09/ GitHub Issues / \u9177\u5b89\u5e16\u5b50\u7559\u8a00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1268
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$exportDiag$49$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/Throwable;)V
    .locals 2

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u62a5\u544a\u751f\u6210\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1270
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1271
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$exportDiag$50$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 2

    .line 1262
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->collectReport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/Diagnostics;->exportAndShare(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda51;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1270
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda52;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$modeButton$59$io-github-okaidev-pickupcode-LauncherActivity(ILjava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 0
    iget p3, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    const-string p3, "dedup"

    const/4 v0, 0x0

    .line 1613
    invoke-virtual {p0, p3, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "todo_mode"

    invoke-interface {p3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->restyleModes:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1614
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshTplPreview:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 1615
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->tplEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 1617
    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->tplEditor:Landroid/widget/EditText;

    const/16 p3, 0x8

    .line 1618
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->tplEditorBtnRow:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 1619
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->tplPreviewCard:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 1620
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1622
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5f85\u529e\u6a21\u677f\u5df2\u5207\u6362\u4e3a\u300c"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u300d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$0$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->showMainMenu(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const-string p1, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber"

    .line 145
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$10$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const-string v1, "\u23f3 \u90e8\u7f72\u4e2d\u2026\uff08\u5982\u5f39\u51fa Magisk \u6388\u6743\u8bf7\u5141\u8bb8\uff09"

    .line 336
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u6b63\u5728\u90e8\u7f72 sqlite3\u2026"

    .line 337
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 338
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda53;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$11$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 5

    .line 0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeBtns:Ljava/util/List;

    .line 397
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeIds:[I

    .line 398
    aget v2, v2, v1

    iget v3, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    iget-object v3, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeBtns:Ljava/util/List;

    .line 399
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->modeBtns:Ljava/util/List;

    .line 400
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const-string v2, "#1E6FE8"

    goto :goto_3

    :cond_2
    const-string v2, "#EDF1F7"

    .line 401
    :goto_3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 400
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method synthetic lambda$onCreate$12$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7

    .line 0
    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "todo_custom"

    const-string v3, "\ud83d\udce6 \u53d6\u4ef6\u7801 {code}\uff5c{source}\uff5c{place}\uff5c{time}"

    .line 453
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6548\u679c\u9884\u89c8\uff1a\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "XX\u5c0f\u533a"

    const-string v4, "09-06 18:00"

    const-string v5, "99-9-8888"

    const-string v6, "\u83dc\u9e1f\u9a7f\u7ad9"

    .line 456
    invoke-static {v0, v5, v6, v3, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->renderTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-nez v2, :cond_1

    const-string v1, "\u6548\u679c\u9884\u89c8\uff1a\n99-9-8888"

    .line 459
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v1, "\u6548\u679c\u9884\u89c8\uff1a\n\ud83d\udce6 \u53d6\u4ef6\u7801 99-9-8888\uff5c\u83dc\u9e1f\u9a7f\u7ad9\uff5cXX\u5c0f\u533a\uff5c09-06 18:00"

    .line 462
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$13$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    .line 0
    const-string p5, "dedup"

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, p5, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p5

    const-string v1, "todo_custom"

    const-string v2, "\ud83d\udce6 \u53d6\u4ef6\u7801 {code}\uff5c{source}\uff5c{place}\uff5c{time}"

    .line 471
    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 470
    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 473
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p1, 0x8

    .line 474
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreate$14$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 477
    invoke-direct/range {p0 .. p5}, Lio/github/okaidev/pickupcode/LauncherActivity;->exitTplEdit(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$15$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 5

    .line 480
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 481
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "todo_custom"

    const-string v2, "dedup"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0, v2, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    const-string v0, "\ud83d\udce6 \u53d6\u4ef6\u7801 {code}\uff5c{source}\uff5c{place}\uff5c{time}"

    .line 483
    invoke-interface {p6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p6, "\u5185\u5bb9\u4e3a\u7a7a\uff0c\u5df2\u6062\u590d\u9ed8\u8ba4\u6a21\u677f"

    .line 484
    invoke-static {p0, p6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/Toast;->show()V

    .line 485
    invoke-direct/range {p0 .. p5}, Lio/github/okaidev/pickupcode/LauncherActivity;->exitTplEdit(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void

    .line 488
    :cond_0
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1f4

    if-le v0, v4, :cond_1

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6a21\u677f\u8fc7\u957f\uff08"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/500 \u5b57\uff09\uff0c\u8bf7\u7cbe\u7b80"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string v0, "{code}"

    .line 493
    invoke-virtual {p6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "\u6a21\u677f\u5fc5\u987b\u5305\u542b {code} \u5360\u4f4d\u7b26\uff08\u5426\u5219\u5f85\u529e\u91cc\u770b\u4e0d\u5230\u53d6\u4ef6\u7801\uff09"

    const/4 p2, 0x1

    .line 494
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 498
    :cond_2
    invoke-virtual {p0, v2, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p6, "\u81ea\u5b9a\u4e49\u6a21\u677f\u5df2\u4fdd\u5b58\u5e76\u751f\u6548 \u2713"

    .line 499
    invoke-static {p0, p6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/Toast;->show()V

    .line 500
    invoke-direct/range {p0 .. p5}, Lio/github/okaidev/pickupcode/LauncherActivity;->exitTplEdit(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$16$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 0
    const-string p6, "\ud83d\udce6 \u53d6\u4ef6\u7801 {code}\uff5c{source}\uff5c{place}\uff5c{time}"

    .line 503
    invoke-virtual {p1, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 504
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "todo_custom"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p6, "\u5df2\u6062\u590d\u9ed8\u8ba4\u6a21\u677f"

    .line 505
    invoke-static {p0, p6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/Toast;->show()V

    .line 506
    invoke-direct/range {p0 .. p5}, Lio/github/okaidev/pickupcode/LauncherActivity;->exitTplEdit(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$17$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 2

    .line 570
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lio/github/okaidev/pickupcode/UserRulesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$18$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 594
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->precheckThenOpenChainTest()V

    return-void
.end method

.method synthetic lambda$onCreate$2$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->copyQqGroup()V

    return-void
.end method

.method synthetic lambda$onCreate$20$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 0
    const-string p2, "12306,\u9a8c\u8bc1\u7801,\u4f59\u989d,\u5145\u503c,\u8d26\u5355,\u94f6\u884c,\u4f18\u60e0\u5238,\u9000\u8ba2"

    .line 667
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    const-string p1, "\u5df2\u586b\u5165\u9ed8\u8ba4\u5173\u952e\u8bcd\uff0c\u70b9\u300c\u4fdd\u5b58\u300d\u751f\u6548"

    const/4 p2, 0x0

    .line 669
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$21$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 672
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 673
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u9ed1\u540d\u5355\u5df2\u6e05\u7a7a\uff08\u6240\u6709\u77ed\u4fe1\u4e0d\u518d\u88ab\u5173\u952e\u8bcd\u8fc7\u6ee4\uff09"

    .line 675
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string v0, "dedup"

    .line 677
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "blacklist"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 678
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    const-string p6, "\u9ed1\u540d\u5355\u5df2\u4fdd\u5b58"

    .line 679
    invoke-static {p0, p6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/Toast;->show()V

    :cond_1
    const/16 p6, 0x8

    .line 681
    invoke-virtual {p1, p6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 682
    invoke-virtual {p2, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    aget-object p1, p5, v1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method synthetic lambda$onCreate$23$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;[Ljava/lang/Runnable;Landroid/widget/TextView;)V
    .locals 11

    .line 0
    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "blacklist"

    const-string v2, "12306,\u9a8c\u8bc1\u7801,\u4f59\u989d,\u5145\u503c,\u8d26\u5355,\u94f6\u884c,\u4f18\u60e0\u5238,\u9000\u8ba2"

    .line 654
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\uff1a\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    const-string v3, "\uff0c"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    new-instance v6, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda46;

    move-object v0, v6

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda46;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    move-object v0, p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p3}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda47;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;)V

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    new-instance v10, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda48;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda48;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Ljava/lang/Runnable;)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda49;

    move-object v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, p3, p4, v2, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda49;-><init>(Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onCreate$24$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 2

    .line 738
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickup_todo"

    .line 739
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "r5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 743
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    invoke-direct {p0, p1, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->updateSdwDisplay(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 740
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreate$25$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->toggleSysDirectWrite(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 1

    .line 0
    const-string p1, "\u79bb\u7ebf\u7248\uff1a\u65e0\u8054\u7f51\u6743\u9650\uff0c\u4e0d\u4f1a\u81ea\u52a8\u66f4\u65b0\uff0c\u4e5f\u4e0d\u4f1a\u88ab\u5176\u4ed6\u7248\u672c\u8986\u76d6\u3002\n\u89c4\u5219\u56fa\u5b9a\u4f7f\u7528\u5b89\u88c5\u5305\u5185\u7f6e\u7248\u672c\uff0c\u914d\u5957\u300c\u53d6\u4ef6\u67dc\u300d\u957f\u671f\u7a33\u5b9a\u3002"

    const/4 v0, 0x1

    .line 222
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$4$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->showBackendPicker(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic lambda$onCreate$5$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 280
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->isNotiHookFlagOn()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 281
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->toggleNotiHookFlag(Z)V

    if-eqz p2, :cond_0

    const-string v1, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5df2\u5173\u95ed"

    .line 282
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const-string v1, "#0FA968"

    goto :goto_1

    :cond_1
    const-string v1, "#9AA4B2"

    .line 283
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    const-string p1, "\u901a\u77e5\u53d6\u4ef6\u63d0\u53d6\u5df2\u5f00\u542f \u2713\uff08\u91cd\u542f\u624b\u673a\u540e\u751f\u6548\uff09\n\u5c06\u62e6\u622a\u83dc\u9e1f/\u4eac\u4e1c/\u6dd8\u5b9d/\u62fc\u591a\u591a\u7b49 App \u7684\u53d6\u4ef6\u901a\u77e5"

    goto :goto_2

    :cond_2
    const-string p1, "\u901a\u77e5\u53d6\u4ef6\u63d0\u53d6\u5df2\u5173\u95ed\uff08\u91cd\u542f\u624b\u673a\u540e\u7cfb\u7edf\u4fa7\u540c\u6b65\u751f\u6548\uff09"

    .line 284
    :goto_2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$6$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    .line 305
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    .line 306
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->applyHealthCollapse()V

    return-void
.end method

.method synthetic lambda$onCreate$7$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/View;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runTroubleshoot()V

    return-void
.end method

.method synthetic lambda$onCreate$8$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const-string v2, "\ud83d\ude80 \u4e00\u952e\u90e8\u7f72 sqlite3\uff08\u81ea\u52a8\u5b8c\u6210\uff0c\u65e0\u9700 adb/Termux\uff09"

    .line 348
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 350
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    return-void
.end method

.method synthetic lambda$onCreate$9$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 3

    .line 341
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Repair;->deploySqlite3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u90e8\u7f72\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda54;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$precheckThenOpenChainTest$53$io-github-okaidev-pickupcode-LauncherActivity(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1382
    invoke-direct {p0, p1, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->showPrecheckResult(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$precheckThenOpenChainTest$54$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 7

    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->healthCheck(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    .line 1371
    iget-boolean v4, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1373
    :cond_0
    iget-object v4, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-direct {p0, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->isBlockingCheck(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\uff1a"

    if-eqz v4, :cond_1

    .line 1374
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u274c "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1376
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u26a0\ufe0f "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1380
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u274c \u4f53\u68c0\u6267\u884c\u5f02\u5e38\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    :cond_2
    new-instance v2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda58;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$refreshHealth$57$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;ZZ)V
    .locals 3

    .line 0
    iput-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->lastHealthText:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 1481
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x1

    .line 1482
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    :cond_1
    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->healthExpanded:Ljava/lang/Boolean;

    .line 1483
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 1484
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const v1, 0x7fffffff

    .line 1485
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u2705 \u4e00\u5207\u6b63\u5e38 \u00b7 \u516d\u9879\u4f53\u68c0\u5168\u90e8\u901a\u8fc7\uff08\u89c4\u5219\u96c6: v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u70b9\u5f00\u770b\u8be6\u60c5\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 1488
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, v1

    .line 1490
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    move v0, v1

    .line 1494
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method synthetic lambda$refreshHealth$58$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 9

    .line 0
    const/4 v0, 0x0

    .line 1458
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ud83e\ude7a \u90e8\u7f72\u4f53\u68c0\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1459
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->healthCheck(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    move v4, v0

    move v5, v3

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;

    .line 1460
    iget-boolean v7, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-eqz v7, :cond_1

    const-string v7, "\u2705 "

    goto :goto_1

    :cond_1
    const-string v7, "\u274c "

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff1a"

    .line 1461
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    iget-boolean v7, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v7, :cond_2

    move v5, v0

    :cond_2
    const-string v7, "sqlite3 \u90e8\u7f72"

    .line 1463
    iget-object v8, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v7, :cond_0

    iget-object v7, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v6, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    const-string v7, "\u4e00\u952e\u90e8\u7f72"

    .line 1464
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_0

    .line 1470
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move v4, v0

    .line 1473
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4f53\u68c0\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v5, v0

    move-object v0, v1

    .line 1478
    :goto_3
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, v0, v5, v4}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda56;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$35$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 2

    .line 0
    const-string v0, "\u68c0\u6d4b\u5230 sqlite3 \u672a\u90e8\u7f72 \u2192 \u81ea\u52a8\u5b89\u88c5\u4e2d\uff08\u5982\u5f39\u51fa\u6388\u6743\u8bf7\u5141\u8bb8\uff09\u2026"

    const/4 v1, 0x0

    .line 1157
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$36$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 1169
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1170
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$37$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 3

    .line 1163
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Repair;->deploySqlite3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u90e8\u7f72\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$38$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1192
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->exportDiag()V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$39$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1193
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showFeedbackChannels()V

    return-void
.end method

.method synthetic lambda$runTroubleshoot$40$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 3

    .line 1183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u2705 \u6392\u67e5\u5b8c\u6210"

    .line 1184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e00\u5207 OK\uff01\u516d\u9879\u68c0\u67e5\u5168\u90e8\u901a\u8fc7\u3002\n\n\u5f53\u524d\u89c4\u5219\u96c6\uff1av"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lio/github/okaidev/pickupcode/PickupExtractor;->getActiveRulesVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u5982\u679c\u8fd8\u662f\u6536\u4e0d\u5230\u53d6\u4ef6\u7801\uff1a\n1. \u70b9\u300c\ud83e\uddea \u4e00\u952e\u6d4b\u8bd5\u300d\u9a8c\u8bc1\u5199\u5165\u94fe\u8def\n2. \u67e5\u770b\u53f3\u4e0a\u89d2\u300c\u22ee -> \u7591\u4f3c\u6f0f\u6293\u9519\u9898\u672c\u300d\u4e00\u952e\u4e0a\u62a5\u672a\u8bc6\u522b\u77ed\u4fe1\n3. \u4ecd\u5f02\u5e38 \u2192 \u5bfc\u51fa\u8bca\u65ad\u62a5\u544a + QQ \u7fa4 901543676\uff08\u5907\u6ce8\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    .line 1191
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda44;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v2, "\ud83d\udce4 \u5bfc\u51fa\u8bca\u65ad\u62a5\u544a"

    .line 1192
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda55;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v2, "\ud83d\udcac \u53cd\u9988\u7ed9\u4f5c\u8005"

    .line 1193
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$runTroubleshoot$41$io-github-okaidev-pickupcode-LauncherActivity()V
    .locals 8

    .line 0
    const/4 v0, 0x0

    .line 1100
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/Diagnostics;->healthCheck(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "LSPosed \u6ce8\u5165"

    .line 1105
    invoke-direct {p0, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v2

    const-string v3, "root \u6388\u6743"

    .line 1106
    invoke-direct {p0, v1, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v3

    const-string v4, "LSPosed \u4f5c\u7528\u57df"

    .line 1107
    invoke-direct {p0, v1, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v4

    const-string v5, "\u901a\u77e5\u6743\u9650"

    .line 1108
    invoke-direct {p0, v1, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v5

    const-string v6, "sqlite3 \u90e8\u7f72"

    .line 1109
    invoke-direct {p0, v1, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v6

    const-string v7, "\u5f85\u529e\u5e93\u8bbf\u95ee"

    .line 1110
    invoke-direct {p0, v1, v7}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "\u53d6\u4ef6\u67dc App"

    .line 1113
    invoke-direct {p0, v1, v7}, Lio/github/okaidev/pickupcode/LauncherActivity;->findCheck(Ljava/util/List;Ljava/lang/String;)Lio/github/okaidev/pickupcode/Diagnostics$Check;

    move-result-object v7

    :cond_0
    if-eqz v2, :cond_8

    .line 1115
    iget-boolean v1, v2, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v3, :cond_7

    .line 1129
    iget-boolean v1, v3, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 1140
    iget-boolean v1, v4, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_3

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010\u7b2c 3 \u6b65\uff1a\u8865\u9f50\u4f5c\u7528\u57df\u3011\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    .line 1142
    invoke-static {v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u26a0\ufe0f \u7279\u522b\u63d0\u9192\uff1a\u300cAndroid \u7cfb\u7edf\uff08android\uff09\u300d\u5728\u5217\u8868\u5e95\u90e8\uff0c\u3010\u4e0d\u5e26\"\u63a8\u8350\u5e94\u7528\"\u89d2\u6807\u3011\u4e5f\u5fc5\u987b\u52fe\u9009\uff08\u5e26\u89d2\u6807\u7684 5 \u4e2a\u63a8\u8350\u5e94\u7528\u4e0d\u542b\u5b83\uff09\uff1b\u522b\u52fe\u6210\u4e2d\u90e8\u7684\u300c\u7cfb\u7edf\u6846\u67b6\uff08system\uff09\u300d\u2014\u2014\u52fe\u4e86\u65e0\u6548\uff01\n\u8865\u52fe\u540e\u52a1\u5fc5\u3010\u91cd\u542f\u624b\u673a\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-direct {p0, v1, v0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v5, :cond_4

    .line 1149
    iget-boolean v1, v5, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_4

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u3010\u7b2c 4 \u6b65\uff1a\u6253\u5f00\u901a\u77e5\u6743\u9650\u3011\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    .line 1151
    invoke-static {v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\uff08\u4e0d\u5904\u7406\u4e0d\u5f71\u54cd\u5199\u5f85\u529e\uff0c\u4f46\u6536\u4e0d\u5230\u53d6\u4ef6\u7801\u5f39\u7a97\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-direct {p0, v1, v0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v6, :cond_5

    .line 1155
    iget-boolean v1, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_5

    iget-object v1, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    const-string v2, "\u4e00\u952e\u90e8\u7f72"

    .line 1156
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1157
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda59;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda1;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_5
    if-eqz v7, :cond_6

    .line 1175
    iget-boolean v1, v7, Lio/github/okaidev/pickupcode/Diagnostics$Check;->ok:Z

    if-nez v1, :cond_6

    .line 1176
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3010\u7b2c 5 \u6b65\uff1a\u5f85\u529e\u5e93\u8bbf\u95ee\u5f02\u5e38\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09\u3011\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lio/github/okaidev/pickupcode/Diagnostics$Check;->detail:Ljava/lang/String;

    .line 1178
    invoke-static {v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u5148\u70b9\u300c\ud83e\uddea \u4e00\u952e\u6d4b\u8bd5\u300d\u89e6\u53d1\u4e00\u6b21\u81ea\u52a8\u4fee\u590d\uff1b\u4ecd\u5931\u8d25 \u2192 \u5bfc\u51fa\u8bca\u65ad\u62a5\u544a + \u52a0 QQ \u7fa4 901543676 \u53cd\u9988\u7ed9\u4f5c\u8005"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    invoke-direct {p0, v1, v0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1183
    :cond_6
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_0
    const-string v0, "\u6253\u5f00 Magisk"

    const-string v1, "com.topjohnwu.magisk"

    const-string v2, "\u3010\u7b2c 2 \u6b65\uff1a\u628a root \u6388\u6743\u7ed9\u672c\u6a21\u5757\u3011\n\n\u6ce8\u5165\u5df2\u6210\u529f \u2713\uff0c\u4f46 root \u6388\u6743\u8fd8\u6ca1\u901a\u8fc7\uff08\u4f53\u68c0\u7ea2\u8272\u53c9\u7684\u539f\u56e0\uff09\u3002\n\n1. \u6253\u5f00 Magisk \u2192 \u8d85\u7ea7\u7528\u6237 \u2192 \u627e\u5230\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\u2192 \u6253\u5f00\u5f00\u5173\n   \uff08\u5217\u8868\u91cc\u6ca1\u6709\u7684\u8bdd\uff1a\u70b9\u4e00\u6b21\u672c\u9875\u4efb\u610f\u6309\u94ae\u89e6\u53d1\u6388\u6743\u5f39\u7a97\uff0c\u5f39\u7a97\u9009\u3010\u5141\u8bb8\u3011\u5e76\u52fe\u9009\"\u4e0d\u518d\u8be2\u95ee\"\uff09\n2. \u6388\u6743\u540e\u5173\u6389\u672c\u5f39\u7a97\uff0c\u9875\u9762\u4f1a\u81ea\u52a8\u91cd\u65b0\u6838\u67e5 \u2192 \u518d\u70b9\u300c\u6392\u67e5\u95ee\u9898\u300d\u7ee7\u7eed"

    .line 1130
    invoke-direct {p0, v2, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_1
    const-string v1, "xiaomi"

    .line 1116
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\uff08\u5c0f\u7c73\u4fa7\u542b com.miui.notes\uff1b\u5199\u5165\u76ee\u6807 App \u65e0\u9700\u52fe\u9009\uff09"

    goto :goto_2

    :cond_9
    const-string v1, "\uff08\u52fe 3 \u9879\u5373\u53ef\uff1b\u5199\u5165\u76ee\u6807 App \u65e0\u9700\u52fe\u9009\uff09"

    .line 1119
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3010\u7b2c 1 \u6b65\uff1a\u8ba9\u6a21\u5757\u751f\u6548\u3011\n\n1. \u6253\u5f00 LSPosed \u7ba1\u7406\u5668 \u2192 \u6a21\u5757 \u2192 \u53d6\u4ef6\u7801\u52a9\u624b\n2. \u6253\u5f00\u300c\u542f\u7528\u6a21\u5757\u300d\u5f00\u5173\n3. \u52fe\u9009\u4f5c\u7528\u57df\uff1a\u26a0\ufe0f \u5fc5\u987b\u5305\u542b\u300cAndroid \u7cfb\u7edf\u300d\uff0c\u518d\u52a0 \u7535\u8bdd\u3001\u77ed\u4fe1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n4. \u91cd\u542f\u624b\u673a\uff08\u5fc5\u987b\uff09\n5. \u91cd\u542f\u540e\u6253\u5f00\u672c App\uff0c\u518d\u70b9\u4e00\u6b21\u300c\ud83d\udd0d \u6392\u67e5\u95ee\u9898\u300d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6392\u67e5\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showTroubleshootDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showBackendPicker$30$io-github-okaidev-pickupcode-LauncherActivity([Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 958
    aget-object p1, p1, p3

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->applyBackend(Ljava/lang/String;)V

    .line 959
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$showFeedbackChannels$47$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    if-nez p2, :cond_0

    .line 1246
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->copyQqGroup()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const-string p1, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber/issues"

    .line 1248
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "https://www.coolapk.com/feed/73558591"

    .line 1250
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showMainMenu$26$io-github-okaidev-pickupcode-LauncherActivity(Landroid/view/MenuItem;)Z
    .locals 3

    .line 842
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber"

    .line 843
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 845
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83d\udd12 \u79bb\u7ebf\u7248"

    .line 846
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "\u672c\u7248\u672c\u4e3a\u300c\u53d6\u4ef6\u67dc\u300d\u914d\u5957\u5b9a\u5236\u79bb\u7ebf\u7248\uff1a\n\n\u00b7 \u5df2\u79fb\u9664\u8054\u7f51\u6743\u9650\uff0c\u4e0d\u4f1a\u81ea\u52a8\u66f4\u65b0\n\u00b7 \u89c4\u5219\u56fa\u5b9a\u4f7f\u7528\u5b89\u88c5\u5305\u5185\u7f6e\u7248\u672c\uff0c\u63d0\u53d6\u884c\u4e3a\u7a33\u5b9a\u53ef\u590d\u73b0\n\u00b7 \u4e0d\u4f1a\u56e0\u4e0a\u6e38\u6539\u52a8\u800c\u5931\u6548\uff0c\u914d\u5957\u5199\u5165\u957f\u671f\u53ef\u7528\n\n\u5982\u9700\u66f4\u65b0\uff0c\u8bf7\u76f4\u63a5\u5b89\u88c5\u65b0\u7684\u79bb\u7ebf\u5b89\u88c5\u5305\u3002"

    .line 847
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    .line 852
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 853
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 856
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showMissedSmsDialog()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 858
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lio/github/okaidev/pickupcode/DonateActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return v0
.end method

.method synthetic lambda$showMissedSmsDialog$27$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 872
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openGithubIssueManual()V

    return-void
.end method

.method synthetic lambda$showMissedSmsDialog$28$io-github-okaidev-pickupcode-LauncherActivity(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 887
    invoke-static {p1}, Lio/github/okaidev/pickupcode/MissedSmsStore;->formatReport(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "clipboard"

    .line 889
    invoke-virtual {p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string p3, "missed_sms_report"

    .line 890
    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u5df2\u590d\u5236\u8131\u654f\u4e0a\u62a5\u6587\u672c \u2713\n\u53ef\u76f4\u63a5\u7c98\u8d34\u81f3 QQ \u7fa4\u6216\u70b9\u51fb\u624b\u52a8\u4e0a\u62a5\u53cd\u9988"

    const/4 p2, 0x1

    .line 891
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 893
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u590d\u5236\u5931\u8d25: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showMissedSmsDialog$29$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 896
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openGithubIssueManual()V

    return-void
.end method

.method synthetic lambda$showParseResult$51$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1336
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "sender"

    const-string v0, "manual-test"

    .line 1337
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "body"

    .line 1338
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    .line 1339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1340
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://io.github.okaidev.pickupcode.provider"

    .line 1341
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "onSms"

    const/4 v1, 0x0

    .line 1340
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p1, "\u5df2\u8d70\u771f\u5b9e\u94fe\u8def\u5199\u5165\uff08\u5982\u6709\u63d0\u793a\u91cd\u590d\uff0c\u8bf4\u660e\u6307\u7eb9\u53bb\u91cd\u5df2\u751f\u6548\uff09"

    const/4 p2, 0x1

    .line 1343
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1344
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1346
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5199\u5165\u5931\u8d25\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showParseResult$52$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1350
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openGithubIssueManual()V

    return-void
.end method

.method synthetic lambda$showPrecheckResult$55$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1410
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->openChainTest()V

    return-void
.end method

.method synthetic lambda$showPrecheckResult$56$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1413
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runTroubleshoot()V

    return-void
.end method

.method synthetic lambda$showTroubleshootDialog$42$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1205
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->exportDiag()V

    return-void
.end method

.method synthetic lambda$showTroubleshootDialog$43$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const-string p2, "https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber"

    .line 1209
    :try_start_0
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1211
    :cond_0
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1213
    :catchall_0
    invoke-direct {p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity;->openUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showTroubleshootDialog$44$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1217
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->showFeedbackChannels()V

    return-void
.end method

.method synthetic lambda$showTroubleshootDialog$45$io-github-okaidev-pickupcode-LauncherActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1220
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    return-void
.end method

.method synthetic lambda$showTroubleshootDialog$46$io-github-okaidev-pickupcode-LauncherActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83d\udd0d \u6392\u67e5\u7ed3\u679c"

    .line 1202
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1203
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u77e5\u9053\u4e86"

    const/4 v1, 0x0

    .line 1204
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda19;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string v1, "\ud83d\udce4 \u5bfc\u51fa\u8bca\u65ad\u62a5\u544a"

    .line 1205
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1207
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda20;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1217
    :cond_0
    new-instance p2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda21;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    const-string p3, "\ud83d\udc1b \u53cd\u9988\u7ed9\u4f5c\u8005"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1219
    :goto_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1220
    new-instance p2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda23;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1221
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$toggleSysDirectWrite$31$io-github-okaidev-pickupcode-LauncherActivity(Landroid/widget/TextView;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    .line 1010
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const-string v0, "#0FA968"

    goto :goto_1

    :cond_1
    const-string v0, "#9AA4B2"

    .line 1011
    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    const-string p1, "\u5df2\u5f00\u542f\u51bb\u7ed3\u514d\u75ab\u76f4\u5199 \u2713\n\u8fd8\u9700\u4e24\u6b65\uff1a\n1. Magisk/KernelSU \u7ed9\u300ccom.android.providers.telephony\u300d\uff08\u77ed\u4fe1\u5b58\u50a8\uff09\u6388\u6743 root\n2. \u91cd\u542f\u624b\u673a\u751f\u6548"

    const/4 p2, 0x1

    .line 1013
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1015
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    const-string p1, "\u5df2\u5173\u95ed\u51bb\u7ed3\u514d\u75ab\u76f4\u5199\uff08\u91cd\u542f\u624b\u673a\u540e\u7cfb\u7edf\u8fdb\u7a0b\u4fa7\u540c\u6b65\u751f\u6548\uff09"

    const/4 p2, 0x0

    .line 1017
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1018
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method synthetic lambda$toggleSysDirectWrite$32$io-github-okaidev-pickupcode-LauncherActivity(ZLandroid/widget/TextView;)V
    .locals 3

    .line 0
    const-string v0, " > /data/local/tmp/pickup_sqlite/enable_sys_direct_write; chmod 644 /data/local/tmp/pickup_sqlite/enable_sys_direct_write"

    const-string v1, "mkdir -p /data/local/tmp/pickup_sqlite; echo "

    .line 1005
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 1006
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    .line 1005
    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :catchall_0
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda5;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;Z)V

    invoke-virtual {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v11, p0

    .line 78
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->init(Landroid/content/Context;)V

    .line 82
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/NetPolicy;->enforceOffline(Landroid/content/Context;)V

    .line 83
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/RulesUpdater;->maybeCheck(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 85
    invoke-virtual {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v11, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    const-string v0, "dedup"

    const/4 v12, 0x0

    .line 90
    invoke-virtual {v11, v0, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "todo_mode"

    const/4 v13, 0x1

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->currentMode:I

    .line 94
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, -0x1

    .line 96
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 98
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v0, 0x12

    .line 101
    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    const/16 v9, 0x10

    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    const/16 v8, 0x8

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v0

    const/16 v6, 0xe

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-virtual {v7, v1, v12, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 109
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 110
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    const/4 v5, 0x3

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 112
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\ud83d\udce6 \u53d6\u4ef6\u7801\u52a9\u624b"

    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41b00000    # 22.0f

    const/4 v6, 0x2

    .line 114
    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#1A1A1A"

    .line 115
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v2, v3, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 119
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u22ee"

    .line 120
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 121
    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v16, "#666666"

    .line 122
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0xa

    .line 123
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    invoke-virtual {v3, v8, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    new-instance v8, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda24;

    invoke-direct {v8, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda24;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v8, 0x41c80000    # 25.0f

    .line 128
    invoke-virtual {v2, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v8, "#111111"

    .line 129
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 131
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 132
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "design by "

    .line 137
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 138
    invoke-virtual {v8, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "#C4C4C4"

    .line 139
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v15, "\u6b27\u9534\uff08O-kai\uff09"

    .line 141
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41200000    # 10.0f

    .line 142
    invoke-virtual {v4, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v15, "#A8C0E8"

    .line 143
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    new-instance v15, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda36;

    invoke-direct {v15, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda36;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v13, 0x800055

    .line 148
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    invoke-virtual {v15, v12, v12, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 157
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v2, v12, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->appVersionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 LSPosed \u6a21\u5757 \u00b7 \u81ea\u52a8\u63d0\u53d6\u53d6\u4ef6\u7801\u5199\u5165 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41400000    # 12.0f

    .line 169
    invoke-virtual {v2, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#888888"

    .line 170
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->subTitleView:Landroid/widget/TextView;

    .line 172
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 179
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v12, v3, v12, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud83d\udcac \u5f00\u53d1\u8005 QQ \u7fa4\uff1a901543676\uff08\u8fdb\u7fa4\u5907\u6ce8\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\uff09"

    .line 182
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v3, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "#1E6FE8"

    .line 184
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x8

    .line 185
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v15

    invoke-virtual {v3, v12, v12, v15, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud83d\udccb \u590d\u5236\u7fa4\u53f7"

    .line 189
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41300000    # 11.0f

    .line 190
    invoke-virtual {v3, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x1

    .line 191
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v4, 0xa

    .line 193
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v15

    const/4 v8, 0x4

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v15, v13, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    new-instance v4, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda37;

    invoke-direct {v4, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda37;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x2

    .line 206
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v12, v4, v12, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\ud83d\udd12 \u79bb\u7ebf\u7248\uff08\u65e0\u8054\u7f51\u6743\u9650\uff09"

    .line 209
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41500000    # 13.0f

    .line 210
    invoke-virtual {v4, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v15, "#333333"

    .line 211
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x8

    .line 212
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v4, v12, v12, v6, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    invoke-direct {v3, v12, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u5df2\u9501\u5b9a"

    .line 217
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41300000    # 11.0f

    const/4 v6, 0x2

    .line 218
    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x1

    .line 219
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "#5A6570"

    .line 220
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v4, 0xa

    .line 221
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v9

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v6, v13, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    new-instance v4, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda38;

    invoke-direct {v4, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda38;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 233
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x2

    .line 234
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v9

    invoke-virtual {v3, v12, v6, v12, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 236
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "\ud83c\udfaf \u5199\u5165\u76ee\u6807\uff1a"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41500000    # 13.0f

    .line 238
    invoke-virtual {v6, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 239
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x8

    .line 240
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v9

    invoke-virtual {v6, v12, v12, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iput-object v6, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->backendLabelView:Landroid/widget/TextView;

    .line 242
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    invoke-direct {v4, v12, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u5207\u6362"

    .line 246
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41300000    # 11.0f

    const/4 v13, 0x2

    .line 247
    invoke-virtual {v4, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, -0x1

    .line 248
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v9, 0xa

    .line 250
    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v12

    move-object/from16 v19, v5

    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v9

    invoke-virtual {v4, v13, v12, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    new-instance v5, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda39;

    invoke-direct {v5, v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda39;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 260
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    .line 261
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x2

    .line 262
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v9

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v12

    invoke-virtual {v4, v5, v9, v5, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 264
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\ud83d\udd14 \u901a\u77e5\u53d6\u4ef6\u63d0\u53d6\uff08\u591a\u5e73\u53f0\uff09"

    .line 265
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41500000    # 13.0f

    .line 266
    invoke-virtual {v9, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 267
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x8

    .line 268
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v12

    invoke-virtual {v9, v5, v5, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    invoke-direct {v6, v5, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->isNotiHookFlagOn()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v9, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_1
    const-string v9, "\u5df2\u5173\u95ed"

    .line 274
    :goto_0
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41300000    # 11.0f

    const/4 v12, 0x2

    .line 275
    invoke-virtual {v5, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, -0x1

    .line 276
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v9, "#0FA968"

    const-string v12, "#9AA4B2"

    if-eqz v6, :cond_2

    move-object v6, v9

    goto :goto_1

    :cond_2
    move-object v6, v12

    .line 277
    :goto_1
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v6, 0xa

    .line 278
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    move-object/from16 v20, v10

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    move-object/from16 v21, v14

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v5, v13, v10, v14, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    new-instance v6, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda40;

    invoke-direct {v6, v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda40;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v5, "\u2699\ufe0f \u57fa\u7840\u8bbe\u7f6e"

    .line 291
    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->cardTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x2

    .line 298
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 299
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const/16 v3, 0xe

    .line 300
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v6, v10, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const-string v3, "#F7F8FA"

    .line 301
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    const-string v3, "\u23f3 \u6b63\u5728\u4f53\u68c0\uff08root \u68c0\u6d4b\u7ea6\u9700 2-5 \u79d2\uff09\u2026"

    .line 302
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 304
    new-instance v3, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda41;

    invoke-direct {v3, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda41;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->statusCard:Landroid/widget/TextView;

    .line 308
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const-string v3, "\ud83d\udd0d \u6392\u67e5\u95ee\u9898\uff08\u70b9\u4e0d\u4e86 / \u6536\u4e0d\u5230\uff1f\u70b9\u8fd9\u91cc\uff09"

    .line 312
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v4, 0x2

    .line 313
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const-string v3, "#F0A020"

    .line 315
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const/16 v3, 0x10

    .line 316
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    const/16 v3, 0xb

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    const/16 v3, 0x11

    .line 317
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    .line 318
    new-instance v3, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda42;

    invoke-direct {v3, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda42;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 321
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-virtual {v2, v4, v6, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    .line 322
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->troubleshootBtn:Landroid/widget/TextView;

    .line 323
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const-string v3, "\ud83d\ude80 \u4e00\u952e\u90e8\u7f72 sqlite3\uff08\u81ea\u52a8\u5b8c\u6210\uff0c\u65e0\u9700 adb/Termux\uff09"

    .line 327
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v4, 0x2

    .line 328
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    .line 329
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    .line 330
    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/16 v3, 0x10

    .line 331
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/16 v6, 0xb

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    const/16 v3, 0xb

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v6, v10, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/16 v3, 0x11

    .line 332
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 333
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    .line 334
    new-instance v4, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda43;

    invoke-direct {v4, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda43;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x1

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    .line 356
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v6, v10, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    .line 357
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->deployBtn:Landroid/widget/TextView;

    .line 358
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    .line 374
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v10

    const/16 v6, 0xe

    .line 375
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v0, "\ud83d\udcdd \u5f85\u529e\u6a21\u677f"

    .line 377
    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->cardTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6781\u7b80\uff1a\u53ea\u5199\u53d6\u4ef6\u7801\uff5c\u5b8c\u6574\uff1a\u7801+\u6765\u6e90+\u5730\u70b9+\u65f6\u95f4\uff5c\u81ea\u5b9a\u4e49\uff1a\u6a21\u677f\u5360\u4f4d\u7b26 {code} {source} {place} {time}"

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    .line 381
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#999999"

    .line 382
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "\u5b8c\u6574"

    const-string v2, "\u81ea\u5b9a\u4e49"

    const-string v3, "\u6781\u7b80"

    .line 389
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v13, 0x3

    :goto_2
    if-ge v2, v13, :cond_3

    .line 391
    aget-object v3, v1, v2

    iget-object v4, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->modeIds:[I

    aget v4, v4, v2

    invoke-direct {v11, v3, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->modeButton(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->modeBtns:Ljava/util/List;

    .line 392
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 396
    :cond_3
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda45;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    iput-object v1, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->restyleModes:Ljava/lang/Runnable;

    .line 404
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 411
    invoke-virtual {v14, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0xc

    .line 413
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    invoke-virtual {v14, v0, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v0, "#F0F3F8"

    .line 414
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iput-object v14, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->tplPreviewCard:Landroid/widget/TextView;

    .line 416
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "\u270f\ufe0f \u7f16\u8f91\u6a21\u677f"

    const-string v1, "#F0A020"

    .line 419
    invoke-direct {v11, v0, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    .line 420
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 422
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v2, v3, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 423
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 424
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    new-instance v13, Landroid/widget/EditText;

    invoke-direct {v13, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setVisibility(I)V

    const v1, 0x20001

    .line 430
    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v6, 0x2

    .line 431
    invoke-virtual {v13, v6, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 432
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v2

    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    const-string v0, "#FFFFFF"

    .line 433
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const-string v0, "\u81ea\u5b9a\u4e49\u6a21\u677f\uff0c\u5360\u4f4d\u7b26\uff1a{code} {source} {place} {time}"

    .line 434
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-object v13, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->tplEditor:Landroid/widget/EditText;

    .line 436
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 439
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    .line 440
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\ud83d\udcbe \u4fdd\u5b58\u8bbe\u7f6e"

    .line 441
    invoke-direct {v11, v0, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    const-string v0, "\u21a9\ufe0f \u6062\u590d\u9ed8\u8ba4"

    .line 442
    invoke-direct {v11, v0, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const-string v0, "\u53d6\u6d88"

    .line 443
    invoke-direct {v11, v0, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 444
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v4, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->tplEditorBtnRow:Landroid/widget/LinearLayout;

    .line 448
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, v11, v14, v5}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda25;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshTplPreview:Ljava/lang/Runnable;

    .line 467
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 469
    new-instance v6, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda26;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v9

    move-object v9, v2

    move-object v2, v13

    move-object/from16 v24, v15

    move-object v15, v3

    move-object v3, v4

    move-object/from16 v17, v4

    move-object/from16 v18, v12

    const/16 v12, 0xa

    move-object v4, v5

    move-object v12, v5

    move-object/from16 v25, v19

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda26;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    new-instance v6, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda27;

    move-object v0, v6

    move-object/from16 v3, v17

    move-object v4, v12

    move-object v11, v6

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda27;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    new-instance v8, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda28;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda28;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    new-instance v8, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda29;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda29;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    const/4 v1, 0x0

    .line 522
    :goto_3
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v11, p0

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 523
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v0, :cond_4

    const-string v3, "#F0EDFF"

    goto :goto_4

    :cond_4
    const-string v3, "#F7F8FA"

    .line 524
    :goto_4
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0xe

    .line 525
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 527
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 528
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 529
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 530
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 531
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v6, "\ud83e\udde9 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219\uff08\u9ad8\u7ea7\u9009\u9879\uff09"

    .line 533
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->cardTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    .line 534
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v13, 0x2

    .line 537
    invoke-virtual {v6, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    .line 538
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    .line 539
    invoke-direct {v11, v13}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    .line 540
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const-string v6, "\u5df2\u542f\u7528"

    goto :goto_5

    :cond_5
    const-string v6, "\u672a\u542f\u7528"

    .line 545
    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    const/high16 v6, 0x41300000    # 11.0f

    .line 546
    invoke-virtual {v5, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    const/4 v6, -0x1

    .line 547
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move-object/from16 v9, v23

    goto :goto_6

    :cond_6
    move-object/from16 v9, v18

    .line 548
    :goto_6
    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    const/16 v6, 0xa

    .line 549
    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v14

    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v5, v8, v10, v14, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urBadgeView:Landroid/widget/TextView;

    .line 550
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_7

    iget-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    .line 555
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->userRuleSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 556
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_7
    iget-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    if-lez v1, :cond_8

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5df2\u5199 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u6761\u89c4\u5219\u4f46\u672a\u542f\u7528\uff0c\u70b9\u6b64\u5f00\u542f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    const-string v1, "\u5b98\u65b9\u89c4\u5219\u6ca1\u8986\u76d6\u5230\u7684\u77ed\u4fe1\uff1f\u53ef\u4e3a\u81ea\u5bb6\u9a7f\u7ad9\u5355\u72ec\u5199\u4e00\u6761"

    .line 558
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->urSubView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 561
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    :goto_8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 566
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 567
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    new-instance v0, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda30;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83e\uddea \u4e00\u952e\u94fe\u8def\u6d4b\u8bd5\uff08\u4e0d\u6d88\u8017\u77ed\u4fe1 \u00b7 \u5206\u6b65\u9a8c\u8bc1\uff09"

    .line 582
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 583
    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 584
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v2, v25

    .line 585
    invoke-direct {v11, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0x10

    .line 586
    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v4, v6, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    .line 587
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 588
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 590
    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 591
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, v11}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda31;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    invoke-direct/range {p0 .. p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 602
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v11, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v12}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v1, "\ud83d\udeab \u9ed1\u540d\u5355\u5173\u952e\u8bcd"

    .line 604
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->cardTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 607
    invoke-virtual {v3, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 608
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xc

    .line 609
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-virtual {v3, v4, v6, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v4, "#FFFFFF"

    .line 610
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 615
    invoke-virtual {v4, v13, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 616
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v8

    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-direct {v11, v5}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v10

    invoke-virtual {v4, v6, v8, v1, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    const-string v1, "#FFFFFF"

    .line 617
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->roundRect(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "\u9017\u53f7\u5206\u9694\uff0c\u5982\uff1a12306,\u9a8c\u8bc1\u7801,\u94f6\u884c"

    .line 618
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 619
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x4

    .line 621
    invoke-direct {v11, v8}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 622
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 626
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x8

    .line 627
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x6

    .line 628
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v5, v6, v1, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v1, "\ud83d\udcbe \u4fdd\u5b58"

    .line 630
    invoke-direct {v11, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v14

    const-string v1, "\u21a9\ufe0f \u6062\u590d\u9ed8\u8ba4"

    move-object/from16 v2, v18

    .line 631
    invoke-direct {v11, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v15

    const-string v1, "\u53d6\u6d88"

    .line 632
    invoke-direct {v11, v1, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 633
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    invoke-direct {v1, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 643
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x6

    .line 644
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    invoke-virtual {v8, v6, v1, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v1, "\u270f\ufe0f \u4fee\u6539"

    const-string v9, "#F0A020"

    .line 645
    invoke-direct {v11, v1, v9}, Lio/github/okaidev/pickupcode/LauncherActivity;->smallButton(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    .line 646
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v1, v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Runnable;

    .line 652
    new-instance v16, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda32;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v3

    move-object v3, v9

    move-object v6, v8

    move-object v9, v7

    move-object v7, v15

    const/16 v15, 0x8

    move-object v8, v14

    move-object v14, v9

    const/16 v15, 0x10

    move-object v9, v12

    move-object/from16 v26, v20

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda32;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;[Ljava/lang/Runnable;Landroid/widget/TextView;)V

    const/4 v0, 0x0

    aput-object v16, v12, v0

    aget-object v1, v12, v0

    .line 694
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 701
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 702
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 704
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 705
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 706
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 707
    invoke-direct {v11, v13}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v13}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 709
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\ud83d\udee1 \u51bb\u7ed3\u514d\u75ab\u76f4\u5199\uff08ColorOS \u5212\u6389\u540e\u53f0\u4ecd\u53ef\u5199\u5165\uff09"

    .line 710
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 711
    invoke-virtual {v3, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 712
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x8

    .line 713
    invoke-direct {v11, v4}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 714
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v4, v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 718
    invoke-virtual {v0, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 719
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0xa

    .line 720
    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v4

    const/4 v6, 0x4

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v7

    invoke-direct {v11, v3}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    invoke-direct {v11, v6}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v4, v7, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 721
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u26a0\ufe0f \u5f00\u542f\u540e\u9700\u5728 Magisk/KernelSU \u91cc\u7ed9\u300c\u77ed\u4fe1\u5b58\u50a8\uff08com.android.providers.telephony\uff09\u300d\u6388\u6743 root\u2014\u2014\u7ed9\u5e38\u9a7b\u7cfb\u7edf\u8fdb\u7a0b\u6388\u6743 root \u4f1a\u6269\u5927\u98ce\u9669\u9762\uff0c\u8bf7\u81ea\u884c\u8bc4\u4f30\u3002\u5c0f\u7c73\u7cfb\u7edf\u4e0d\u9700\u8981\u6b64\u529f\u80fd\uff0cColorOS \u4e0b\u5212\u6389\u540e\u53f0\u65f6\u751f\u6548\u3002"

    .line 725
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 728
    invoke-virtual {v2, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#999999"

    .line 729
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    invoke-direct {v11, v13}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 731
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    new-instance v2, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, v11, v1, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda34;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    iput-object v2, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshSdwUi:Ljava/lang/Runnable;

    .line 746
    new-instance v1, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity$$ExternalSyntheticLambda35;-><init>(Lio/github/okaidev/pickupcode/LauncherActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v11, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshSdwUi:Ljava/lang/Runnable;

    .line 747
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 750
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\ud83d\udcd6 \u4f7f\u7528\u8bf4\u660e\n1. LSPosed \u6fc0\u6d3b\u6a21\u5757\uff1b\u4f5c\u7528\u57df\u5fc5\u52fe\u300cAndroid \u7cfb\u7edf\u300d\uff08android\uff0c\u5217\u8868\u5e95\u90e8\u3001\u4e0d\u5e26\u63a8\u8350\u89d2\u6807\u2014\u2014\u4e0d\u662f\u300c\u7cfb\u7edf\u6846\u67b6\u300dsystem\uff01\uff09\uff0c\u518d\u52a0 \u7535\u8bdd\u3001\u77ed\u4fe1\u3001com.android.providers.telephony\uff1b\u5c0f\u7c73\u8bbe\u5907\u53e6\u52fe\u300c\u5c0f\u7c73\u7b14\u8bb0\u300d\n2. \u5199\u5165\u76ee\u6807\u81ea\u52a8\u8bc6\u522b\uff08\u5c0f\u7c73\u7b14\u8bb0\u5f85\u529e / ColorOS \u65e5\u5386\u5f85\u529e\uff09\uff0c\u4e5f\u53ef\u70b9\u4e0a\u65b9\u300c\u5207\u6362\u300d\u624b\u52a8\u6307\u5b9a\n3. \u6536\u5230\u53d6\u4ef6\u77ed\u4fe1\u540e\u81ea\u52a8\u5199\u5165\u5f85\u529e\uff08\u4e00\u7801\u4e00\u6761\uff0c\u65b0\u7801\u7f6e\u9876\uff09\uff1b\u5f00\u542f\u300c\ud83d\udd14 \u901a\u77e5\u53d6\u4ef6\u63d0\u53d6\u300d\u540e\n   \u83dc\u9e1f/\u4eac\u4e1c/\u6dd8\u5b9d/\u62fc\u591a\u591a\u7b49 App \u7684\u53d6\u4ef6\u901a\u77e5\u4e5f\u80fd\u63d0\u53d6\uff08\u53cc\u901a\u9053\u81ea\u52a8\u53bb\u91cd\uff09\n4. \u901a\u77e5\u53ef\u70b9\u51fb\uff1a\u590d\u5236\u53d6\u4ef6\u7801\uff1b\u901a\u77e5\u4e0a\u300c\u5df2\u53d6\u4ef6\u300d\uff1a\u4e00\u952e\u52fe\u9009\n5. \u9700\u8981 root\uff08Magisk/KernelSU\uff09\u6388\u6743\u4e00\u6b21\uff1bsqlite3 \u7f3a\u5931\u65f6\u70b9\u300c\u4e00\u952e\u90e8\u7f72\u300d\n6. \u9047\u5230\u95ee\u9898\uff1a\u70b9\u4e0a\u65b9\u300c\ud83d\udd0d \u6392\u67e5\u95ee\u9898\u300d\u9010\u6b65\u5b9a\u4f4d\uff1b\u5411\u5bfc\u91cc\u53ef\u987a\u8def\u300c\u5bfc\u51fa\u8bca\u65ad\u62a5\u544a\u300d\u53d1\u7ed9\u4f5c\u8005\n7. \u77ed\u4fe1\u6f0f\u6293\u53cd\u9988\uff1a\u53f3\u4e0a\u89d2\u300c\u22ee\u300d\u53ef\u6253\u5f00\u300c\u7591\u4f3c\u6f0f\u6293\u9519\u9898\u672c\u300d\u4e00\u952e\u8131\u654f\u590d\u5236\u4e0a\u62a5\n8. \u4ea4\u6d41\u5b66\u4e60 / \u53cd\u9988\u95ee\u9898\uff1aQQ \u7fa4 901543676\uff08\u8fdb\u7fa4\u5907\u6ce8\u300c\u53d6\u4ef6\u7801\u52a9\u624b\u300d\uff09"

    .line 751
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 768
    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#888888"

    .line 769
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x3

    .line 770
    invoke-direct {v11, v1}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 771
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "#EEEEEE"

    .line 776
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 777
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    .line 778
    invoke-direct {v11, v2}, Lio/github/okaidev/pickupcode/LauncherActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v3, v26

    .line 777
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v21

    .line 779
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v11}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 783
    invoke-virtual {v1, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 784
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {v11, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1514
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1515
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->handleCopy(Landroid/content/Intent;)V

    .line 1516
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/LauncherActivity;->handleDone(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1521
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1522
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->handleCopy(Landroid/content/Intent;)V

    .line 1523
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/okaidev/pickupcode/LauncherActivity;->handleDone(Landroid/content/Intent;)V

    .line 1524
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshHealth()V

    const/4 v0, 0x0

    .line 1525
    invoke-static {p0, v0}, Lio/github/okaidev/pickupcode/Updater;->maybeCheck(Landroid/app/Activity;Z)V

    .line 1528
    invoke-direct {p0}, Lio/github/okaidev/pickupcode/LauncherActivity;->refreshUserRuleCard()V

    return-void
.end method
