.class public final Lio/github/okaidev/pickupcode/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final H:Landroid/os/Handler;

.field private static final PLAY_MS:J = 0x5dcL

.field private static sCurrent:Landroid/media/Ringtone;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsCurrent()Landroid/media/Ringtone;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/SoundPlayer;->sCurrent:Landroid/media/Ringtone;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsCurrent(Landroid/media/Ringtone;)V
    .locals 0

    sput-object p0, Lio/github/okaidev/pickupcode/SoundPlayer;->sCurrent:Landroid/media/Ringtone;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/github/okaidev/pickupcode/SoundPlayer;->H:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beep()V
    .locals 5

    .line 93
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x19

    const/16 v2, 0xc8

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    sget-object v1, Lio/github/okaidev/pickupcode/SoundPlayer;->H:Landroid/os/Handler;

    .line 96
    new-instance v2, Lio/github/okaidev/pickupcode/SoundPlayer$3;

    invoke-direct {v2, v0}, Lio/github/okaidev/pickupcode/SoundPlayer$3;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static play(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 43
    new-instance v3, Lio/github/okaidev/pickupcode/SoundPlayer$1;

    invoke-direct {v3, v1, p1}, Lio/github/okaidev/pickupcode/SoundPlayer$1;-><init>([ZLjava/lang/Runnable;)V

    const/4 p1, 0x2

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 57
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sput-object p1, Lio/github/okaidev/pickupcode/SoundPlayer;->sCurrent:Landroid/media/Ringtone;

    .line 61
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lio/github/okaidev/pickupcode/SoundPlayer;->H:Landroid/os/Handler;

    .line 63
    new-instance v2, Lio/github/okaidev/pickupcode/SoundPlayer$2;

    invoke-direct {v2, p1, v3}, Lio/github/okaidev/pickupcode/SoundPlayer$2;-><init>(Landroid/media/Ringtone;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 72
    :cond_2
    :try_start_2
    invoke-static {}, Lio/github/okaidev/pickupcode/SoundPlayer;->beep()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_1

    :catchall_0
    move v0, v2

    .line 75
    :catchall_1
    invoke-static {}, Lio/github/okaidev/pickupcode/SoundPlayer;->beep()V

    .line 78
    :goto_1
    invoke-static {p0}, Lio/github/okaidev/pickupcode/SoundPlayer;->vibrate(Landroid/content/Context;)V

    if-nez v0, :cond_3

    .line 81
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private static vibrate(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "vibrator"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3c
    .end array-data
.end method
