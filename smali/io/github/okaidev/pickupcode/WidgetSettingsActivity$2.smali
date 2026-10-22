.class Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;
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

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 52
    invoke-static {p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$fgetsbFont(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    invoke-static {v1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$fgetetTpl(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {p1, v0, v1}, Lio/github/okaidev/pickupcode/WidgetPrefs;->save(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 55
    invoke-static {p1}, Lio/github/okaidev/pickupcode/PickupWidgetProvider;->refresh(Landroid/content/Context;)V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    const-string v0, "\u5df2\u4fdd\u5b58\uff0c\u5c0f\u90e8\u4ef6\u5df2\u5237\u65b0"

    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$2;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    .line 57
    invoke-virtual {p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->finish()V

    return-void
.end method
