.class Lio/github/okaidev/pickupcode/XposedEntry$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/okaidev/pickupcode/XposedEntry;->hookMmsApp(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/okaidev/pickupcode/XposedEntry;


# direct methods
.method constructor <init>(Lio/github/okaidev/pickupcode/XposedEntry;)V
    .locals 0

    iput-object p1, p0, Lio/github/okaidev/pickupcode/XposedEntry$5;->this$0:Lio/github/okaidev/pickupcode/XposedEntry;

    .line 142
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 145
    :try_start_0
    invoke-static {p1}, Lio/github/okaidev/pickupcode/SmsBridge;->processArguments(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S7 err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
