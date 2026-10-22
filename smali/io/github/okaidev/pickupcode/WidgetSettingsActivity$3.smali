.class Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;
.super Ljava/lang/Object;
.source "WidgetSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 65
    invoke-static {p1}, Lio/github/okaidev/pickupcode/WidgetPrefs;->reset(Landroid/content/Context;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 66
    invoke-static {p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$fgetsbFont(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 67
    invoke-static {p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$fgetetTpl(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "{carrier}\uff5c{place}"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    const/16 v0, 0x14

    .line 68
    invoke-static {p1, v0}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$mupdateFontLabel(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;I)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 69
    invoke-static {p1}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$3;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    const-string v0, "\u5df2\u6062\u590d\u9ed8\u8ba4"

    const/4 v1, 0x0

    .line 70
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
