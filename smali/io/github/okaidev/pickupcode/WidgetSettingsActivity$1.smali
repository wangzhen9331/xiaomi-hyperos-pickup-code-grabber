.class Lio/github/okaidev/pickupcode/WidgetSettingsActivity$1;
.super Lio/github/okaidev/pickupcode/WidgetSettingsActivity$SimpleSeekListener;
.source "WidgetSettingsActivity.java"


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

    iput-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$1;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$SimpleSeekListener;-><init>(Lio/github/okaidev/pickupcode/WidgetSettingsActivity$SimpleSeekListener-IA;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lio/github/okaidev/pickupcode/WidgetSettingsActivity$1;->this$0:Lio/github/okaidev/pickupcode/WidgetSettingsActivity;

    add-int/lit8 p2, p2, 0xa

    .line 40
    invoke-static {p1, p2}, Lio/github/okaidev/pickupcode/WidgetSettingsActivity;->-$$Nest$mupdateFontLabel(Lio/github/okaidev/pickupcode/WidgetSettingsActivity;I)V

    return-void
.end method
