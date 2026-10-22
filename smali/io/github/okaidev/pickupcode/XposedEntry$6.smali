.class Lio/github/okaidev/pickupcode/XposedEntry$6;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/XposedEntry;->hookReceiver(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/okaidev/pickupcode/XposedEntry;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/XposedEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/github/okaidev/pickupcode/XposedEntry$6;->this$0:Lio/github/okaidev/pickupcode/XposedEntry;

    iput-object p2, p0, Lio/github/okaidev/pickupcode/XposedEntry$6;->val$tag:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 165
    :try_start_0
    invoke-static {p1}, Lio/github/okaidev/pickupcode/SmsBridge;->processArguments(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/okaidev/pickupcode/XposedEntry$6;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
