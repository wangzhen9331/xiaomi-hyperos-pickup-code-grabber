.class public Lio/github/okaidev/pickupcode/WidgetSettingsActivity;
.super Landroid/app/Activity;
.source "WidgetSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/WidgetSettingsActivity$SimpleSeekListener;
    }
.end annotation


# instance fields
.field private etTpl:Landroid/widget/EditText;

.field private sbFont:Landroid/widget/SeekBar;

.field private tvFont:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetetTpl(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->etTpl:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsbFont(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateFontLabel(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->updateFontLabel(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateFontLabel(I)V
    .locals 2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->tvFont:Landroid/widget/TextView;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sp"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lio/github/okaidev/pickupcode/R$layout;->activity_widget_settings:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->setContentView(I)V

    .line 30
    sget p1, Lio/github/okaidev/pickupcode/R$id;->sb_font:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    .line 31
    sget p1, Lio/github/okaidev/pickupcode/R$id;->tv_font:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->tvFont:Landroid/widget/TextView;

    .line 32
    sget p1, Lio/github/okaidev/pickupcode/R$id;->et_tpl:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->etTpl:Landroid/widget/EditText;

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    const/16 v0, 0x14

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    .line 36
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->fontSp(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    .line 37
    new-instance v0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$1;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$1;-><init>(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->sbFont:Landroid/widget/SeekBar;

    .line 43
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->updateFontLabel(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->etTpl:Landroid/widget/EditText;

    .line 45
    invoke-static {p0}, Lio/github/okaidev/pickupcode/WidgetPrefs;->template(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->etTpl:Landroid/widget/EditText;

    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 48
    sget p1, Lio/github/okaidev/pickupcode/R$id;->btn_save:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 49
    new-instance v0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;-><init>(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lio/github/okaidev/pickupcode/R$id;->btn_reset:I

    invoke-virtual {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 62
    new-instance v0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;

    invoke-direct {v0, p0}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;-><init>(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
