.class public Lio/github/okaidev/pickupcode/SmsBridge;
.super Ljava/lang/Object;
.source "SmsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;
    }
.end annotation


# static fields
.field private static final FRESH_WINDOW_MS:J = 0x927c0L

.field private static final MAX_PARTS:I = 0x4

.field private static final PART_WINDOW_MS:J = 0x1f40L

.field private static final PENDING:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENT:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENT_MAX:I = 0xc8

.field private static argDumpCounter:I

.field private static volatile lastContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->RECENT:Ljava/util/LinkedHashSet;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->PENDING:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    sput v0, Lio/github/okaidev/pickupcode/SmsBridge;->argDumpCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanupPending(J)V
    .locals 6

    sget-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->PENDING:Ljava/util/LinkedHashMap;

    .line 350
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;

    iget-wide v2, v2, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->firstSeen:J

    sub-long v2, p0, v2

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 354
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/github/okaidev/pickupcode/SmsBridge;->flush(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static flush(Ljava/lang/String;)V
    .locals 8

    const-string v0, "EVENT dispatched (provider), result="

    const-string v1, "dup skip: sender="

    sget-object v2, Lio/github/okaidev/pickupcode/SmsBridge;->PENDING:Ljava/util/LinkedHashMap;

    .line 283
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;

    if-nez v2, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v3, v2, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->body:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 288
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/github/okaidev/pickupcode/SmsBridge;->RECENT:Ljava/util/LinkedHashSet;

    .line 289
    monitor-enter v5

    .line 290
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    .line 292
    monitor-exit v5

    return-void

    .line 294
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/16 v4, 0xc8

    if-le v1, v4, :cond_3

    .line 296
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 300
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x12c

    if-le v1, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 304
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SMS: sender="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | parts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->parts:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | body="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 311
    :try_start_1
    invoke-static {}, Lio/github/okaidev/pickupcode/SmsBridge;->obtainContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 313
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "sender"

    .line 314
    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "body"

    .line 315
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ts"

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "content://io.github.okaidev.pickupcode.provider"

    .line 318
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "onSms"

    .line 317
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "EVENT dispatch skipped: no app context"

    .line 322
    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EVENT provider dispatch err: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    .line 328
    :try_start_2
    invoke-static {}, Lio/github/okaidev/pickupcode/SmsBridge;->obtainContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v2, "io.github.okaidev.pickupcode.action.ON_SMS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "io.github.okaidev.pickupcode"

    .line 331
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sender"

    .line 332
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "body"

    .line 333
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ts"

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "EVENT dispatched (broadcast fallback)"

    .line 336
    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EVENT broadcast fallback err: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 344
    invoke-static {v1, p0, v3}, Lio/github/okaidev/pickupcode/SystemDirectWriter;->fallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :catchall_2
    move-exception p0

    .line 300
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method private static handleContentValues(Landroid/content/ContentValues;)V
    .locals 6

    const-string v0, "body"

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "address"

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {p0}, Lio/github/okaidev/pickupcode/SmsBridge;->smsDateOf(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 171
    invoke-static {v2, v3}, Lio/github/okaidev/pickupcode/SmsBridge;->isStale(J)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PROVIDER-INSERT skipped (stale sms): date="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " age="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "s sender="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 178
    invoke-static {v1, v0, p0, p0}, Lio/github/okaidev/pickupcode/SmsBridge;->pushParts(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PROVIDER-INSERT: date="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " sender="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static handleIntent(Landroid/content/Intent;)V
    .locals 9

    .line 204
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "pdus"

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 211
    instance-of v1, v0, [Ljava/lang/Object;

    if-nez v1, :cond_1

    return-void

    .line 212
    :cond_1
    check-cast v0, [Ljava/lang/Object;

    .line 213
    array-length v1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "format"

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "3gpp"

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_9

    aget-object v6, v0, v5

    .line 221
    instance-of v7, v6, [B

    if-nez v7, :cond_4

    goto :goto_2

    .line 223
    :cond_4
    :try_start_0
    check-cast v6, [B

    invoke-static {v6, p0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    .line 225
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    .line 226
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 227
    :cond_7
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    const-string v6, ""

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pdu decode err: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    array-length v0, v0

    invoke-static {v4, p0, v0, v3}, Lio/github/okaidev/pickupcode/SmsBridge;->pushParts(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_a
    :goto_3
    return-void
.end method

.method private static handlePdu([B)V
    .locals 3

    :try_start_0
    const-string v0, "3gpp"

    .line 237
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lio/github/okaidev/pickupcode/SmsBridge;->pushParts(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pdu decode err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static handleSmsMessage(Landroid/telephony/SmsMessage;)V
    .locals 3

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lio/github/okaidev/pickupcode/SmsBridge;->pushParts(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static isSmsUri(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    .line 143
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sms"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "inbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isStale(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    .line 197
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    const-wide/32 p0, -0x5265c00

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    return v1

    :cond_1
    const-wide/32 p0, 0x927c0

    cmp-long p0, v2, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static obtainContext()Landroid/content/Context;
    .locals 3

    sget-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->lastContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->lastContext:Landroid/content/Context;

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Landroid/content/Context;

    sput-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->lastContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    sget-object v0, Lio/github/okaidev/pickupcode/SmsBridge;->lastContext:Landroid/content/Context;

    return-object v0
.end method

.method public static processArguments(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .line 62
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 63
    instance-of v5, v4, Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 64
    check-cast v4, Landroid/content/Context;

    sput-object v4, Lio/github/okaidev/pickupcode/SmsBridge;->lastContext:Landroid/content/Context;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 69
    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 70
    check-cast v4, Landroid/content/Intent;

    invoke-static {v4}, Lio/github/okaidev/pickupcode/SmsBridge;->handleIntent(Landroid/content/Intent;)V

    return-void

    .line 73
    :cond_2
    instance-of v5, v4, Landroid/telephony/SmsMessage;

    if-eqz v5, :cond_3

    .line 74
    check-cast v4, Landroid/telephony/SmsMessage;

    invoke-static {v4}, Lio/github/okaidev/pickupcode/SmsBridge;->handleSmsMessage(Landroid/telephony/SmsMessage;)V

    return-void

    .line 77
    :cond_3
    instance-of v5, v4, [B

    if-eqz v5, :cond_4

    .line 78
    check-cast v4, [B

    invoke-static {v4}, Lio/github/okaidev/pickupcode/SmsBridge;->handlePdu([B)V

    return-void

    .line 81
    :cond_4
    instance-of v5, v4, Landroid/os/Message;

    if-eqz v5, :cond_6

    .line 82
    check-cast v4, Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    instance-of v5, v4, Landroid/telephony/SmsMessage;

    if-eqz v5, :cond_5

    .line 84
    check-cast v4, Landroid/telephony/SmsMessage;

    invoke-static {v4}, Lio/github/okaidev/pickupcode/SmsBridge;->handleSmsMessage(Landroid/telephony/SmsMessage;)V

    return-void

    .line 87
    :cond_5
    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_6

    .line 88
    check-cast v4, Landroid/content/Intent;

    invoke-static {v4}, Lio/github/okaidev/pickupcode/SmsBridge;->handleIntent(Landroid/content/Intent;)V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    sget v0, Lio/github/okaidev/pickupcode/SmsBridge;->argDumpCounter:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/github/okaidev/pickupcode/SmsBridge;->argDumpCounter:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ARGDUMP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 97
    :goto_2
    iget-object v3, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_c

    .line 98
    iget-object v3, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v3, v3, v1

    const-string v4, "null"

    if-nez v3, :cond_8

    move-object v5, v4

    goto :goto_3

    .line 99
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-nez v3, :cond_9

    goto :goto_4

    .line 101
    :cond_9
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    goto :goto_4

    .line 102
    :cond_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x78

    if-le v4, v6, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v3, " #"

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/XposedEntry;->log(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static processProviderBulkInsert(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 130
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    .line 131
    invoke-static {v0}, Lio/github/okaidev/pickupcode/SmsBridge;->isSmsUri(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 132
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 133
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 134
    instance-of v3, v2, Landroid/content/ContentValues;

    if-eqz v3, :cond_2

    .line 135
    check-cast v2, Landroid/content/ContentValues;

    invoke-static {v2}, Lio/github/okaidev/pickupcode/SmsBridge;->handleContentValues(Landroid/content/ContentValues;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static processProviderInsert(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 118
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    .line 119
    instance-of v1, p0, Landroid/content/ContentValues;

    if-nez v1, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-static {v0}, Lio/github/okaidev/pickupcode/SmsBridge;->isSmsUri(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 121
    :cond_2
    check-cast p0, Landroid/content/ContentValues;

    invoke-static {p0}, Lio/github/okaidev/pickupcode/SmsBridge;->handleContentValues(Landroid/content/ContentValues;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static pushParts(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    if-eqz p1, :cond_5

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "unknown"

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 262
    invoke-static {v0, v1}, Lio/github/okaidev/pickupcode/SmsBridge;->cleanupPending(J)V

    sget-object v2, Lio/github/okaidev/pickupcode/SmsBridge;->PENDING:Ljava/util/LinkedHashMap;

    .line 264
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;

    const-wide/16 v4, 0x1f40

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 265
    iget-wide v7, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->firstSeen:J

    sub-long v7, v0, v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->body:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->body:Ljava/lang/String;

    .line 273
    iget p1, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->parts:I

    add-int/2addr p1, v6

    iput p1, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->parts:I

    goto :goto_1

    .line 266
    :cond_3
    :goto_0
    new-instance v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;-><init>(Lio/github/okaidev/pickupcode/SmsBridge$PendingPart-IA;)V

    .line 267
    iput-wide v0, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->firstSeen:J

    .line 268
    iput-object p1, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->body:Ljava/lang/String;

    .line 269
    iput v6, v3, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->parts:I

    .line 270
    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :goto_1
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;

    if-nez p3, :cond_4

    if-gt p2, v6, :cond_4

    .line 277
    iget p2, p1, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->parts:I

    const/4 p3, 0x4

    if-ge p2, p3, :cond_4

    iget-wide p1, p1, Lio/github/okaidev/pickupcode/SmsBridge$PendingPart;->firstSeen:J

    sub-long/2addr v0, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_5

    .line 278
    :cond_4
    invoke-static {p0}, Lio/github/okaidev/pickupcode/SmsBridge;->flush(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static smsDateOf(Landroid/content/ContentValues;)J
    .locals 5

    const-string v0, "date"

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "date_sent"

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "sent_date"

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 156
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method
