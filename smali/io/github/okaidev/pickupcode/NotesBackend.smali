.class public Lio/github/okaidev/pickupcode/NotesBackend;
.super Ljava/lang/Object;
.source "NotesBackend.java"


# static fields
.field public static final BACKEND_COLOROS_NOTE:Ljava/lang/String; = "coloros_note"

.field public static final BACKEND_COLOROS_TODO:Ljava/lang/String; = "coloros_todo"

.field public static final BACKEND_PICKUP_TODO:Ljava/lang/String; = "pickup_todo"

.field public static final BACKEND_R5:Ljava/lang/String; = "r5"

.field public static final BACKEND_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static final KEY_OVERRIDE:Ljava/lang/String; = "backend_override"

.field public static final PKG_COLOROS_CALENDAR:Ljava/lang/String; = "com.coloros.calendar"

.field public static final PKG_COLOROS_NOTE:Ljava/lang/String; = "com.coloros.note"

.field public static final PKG_PICKUP_TODO:Ljava/lang/String; = "io.github.okaidev.pickuptodo"

.field public static final PKG_R5:Ljava/lang/String; = "com.pickup.assistant"

.field public static final PKG_XIAOMI:Ljava/lang/String; = "com.miui.notes"

.field private static final PREFS:Ljava/lang/String; = "dedup"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static final UUID_SQL:Ljava/lang/String; = "lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6)))"

.field private static volatile cached:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chmodCmd(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->chmodCmdOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chmodCmdOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "xiaomi"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "chmod 711 /data/user/0/com.miui.notes; chmod 771 /data/user/0/com.miui.notes/databases; chmod 666 /data/user/0/com.miui.notes/databases/todo.db; "

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static countProbeSql(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 270
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->countProbeSqlOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static countProbeSqlOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "coloros_note"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SELECT COUNT(*) FROM rich_notes;"

    return-object p0

    :cond_0
    const-string v0, "coloros_todo"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "SELECT COUNT(*) FROM Tasks;"

    return-object p0

    :cond_1
    const-string p0, "SELECT COUNT(*) FROM todo;"

    return-object p0
.end method

.method public static dbPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->dbPathOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dbPathOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "coloros_note"

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/data/user/0/com.coloros.note/databases/nearme_note.db"

    return-object p0

    :cond_0
    const-string v0, "coloros_todo"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/data/user/0/com.android.providers.calendar/databases/tasks.db"

    return-object p0

    :cond_1
    const-string p0, "/data/user/0/com.miui.notes/databases/todo.db"

    return-object p0
.end method

.method public static detect(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "NotesBackend detect: "

    sget-object v1, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-class v1, Lio/github/okaidev/pickupcode/NotesBackend;

    .line 94
    monitor-enter v1

    :try_start_0
    sget-object v2, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object p0, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    .line 95
    monitor-exit v1

    return-object p0

    .line 96
    :cond_1
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->resolve(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    const-string p0, "PICKUPDEBUG"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    .line 98
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static existsSqlOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 257
    invoke-static {p1}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "coloros_todo"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "%\';"

    if-eqz v0, :cond_0

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SELECT COUNT(*) FROM Tasks WHERE deleted=0 AND finish_time IS NULL AND content LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "coloros_note"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SELECT COUNT(*) FROM rich_notes WHERE deleted=0 AND text LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%\' AND text NOT LIKE \'%\u5df2\u53d6\u4ef6%\';"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SELECT COUNT(*) FROM todo WHERE is_finish=0 AND content LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static insertSql(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 189
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/github/okaidev/pickupcode/NotesBackend;->insertSqlOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static insertSqlOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 193
    invoke-static {p1}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coloros_note"

    .line 195
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\', \'"

    if-eqz v1, :cond_0

    .line 196
    invoke-static {p2}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<head><meta name=\"feature_list\" content=\"\"></head><div>"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "<br></div>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO rich_notes (local_id, global_id, text, raw_text, html_text, folder_id, timestamp, create_time, update_time, top_time, recycle_time, alarm_time, state, deleted, skin_id, skin_id_pre, recycle_time_pre, alarm_time_pre, extra, version, is_local, is_preset, from_package, web_notes, sysVersion, encrypted, encrypted_pre, encryptSysVersion, attachment_extra, summary_title, summary_content, summary_phone_name, summary_phone_number, summary_attachment, summary_attachment_size, summary_speech_flag, summary_speech_type, summary_show_icon, summary_note_type_flag, is_cover_paint_not_char_count, is_summary_edit, is_paint_pic, summary_version, all_attachment_file_name, attachment_lrc, sys_protocol_version, file_download_time)\nVALUES (lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6))), lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6))), \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\', \'\', \'00000000_0000_0000_0000_000000000000\', (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000), 0, 0, 0, 0, \'color_skin_white\', \'color_skin_white\', 0, 0, \'{\"encryptStatus\":-1,\"featureList\":[],\"moveOutFromPaintFolder\":0,\"pageResults\":[]}\', 0, 1, 0, NULL, NULL, NULL, 0, 0, NULL, \'[]\', \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\', \'\', \'\', \'[]\', 0, 0, 0, 0, 0, 0, 0, 0, 3, \'\', \'\', 0, 0);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "coloros_todo"

    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "INSERT INTO Tasks (local_id, global_id, local_global_id, dirty, content, allDay, star, mutators, create_package, create_time, update_time, sort_time, color, timezone, sys_version, force_reminder, canPartiallyUpdate, deleted)\nVALUES (lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6))), lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6))), lower(hex(randomblob(4))) || \'-\' || lower(hex(randomblob(2))) || \'-4\' || substr(lower(hex(randomblob(2))),2) || \'-\' || substr(\'89ab\', abs(random()) % 4 + 1, 1) || substr(lower(hex(randomblob(2))),2) || \'-\' || lower(hex(randomblob(6))), 1, \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\', 1, 0, \'com.coloros.calendar\', \'com.coloros.calendar_10325_7e18a2f30df7f24934d856fca0ba721bc94c728898f30cccbbab398606c921ac\', (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000), 2, \'UTC\', 1, 0, 0, 0);\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "INSERT INTO todo (content, plain_text, is_finish, list_type, type, category, folder_id, source, input_type, remind_type, priority, hide_type, custom_sort_id, sort_id, version, local_status, server_status, words_count, create_time, last_modified_time)\nVALUES (\'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (SELECT COALESCE(MAX(custom_sort_id), 0) FROM todo) + 1048576, 0, 1, 0, 0, 0, (strftime(\'%s\',\'now\')*1000), (strftime(\'%s\',\'now\')*1000));\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/github/okaidev/pickupcode/NotesBackend;->cached:Ljava/lang/String;

    return-void
.end method

.method public static isApiBackend(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "r5"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLocalDbBackend(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static isMiuiRom()Z
    .locals 8

    const-string v0, "get"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 298
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 299
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ro.miui.ui.version.name"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Class;

    .line 300
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "ro.mi.os.version.name"

    aput-object v5, v2, v1

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    move v1, v3

    :catchall_0
    :cond_2
    return v1
.end method

.method public static markDoneSql(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 235
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/NotesBackend;->markDoneSqlOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static markDoneSqlOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-static {p1}, Lio/github/okaidev/pickupcode/TodoWriter;->sqlEscapePub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "coloros_note"

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE rich_notes SET text = text || \'\uff08\u2705 \u5df2\u53d6\u4ef6\uff09\', summary_content = summary_content || \'\uff08\u2705 \u5df2\u53d6\u4ef6\uff09\', top_time = 0, update_time = strftime(\'%s\',\'now\')*1000 WHERE deleted = 0 AND text LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%\' AND text NOT LIKE \'%\u5df2\u53d6\u4ef6%\';\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "coloros_todo"

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE Tasks SET finish_time = strftime(\'%s\',\'now\')*1000, update_time = strftime(\'%s\',\'now\')*1000 WHERE deleted = 0 AND finish_time IS NULL AND content LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%\';\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE todo SET is_finish=1, mark_finish_time=strftime(\'%s\',\'now\')*1000 WHERE is_finish=0 AND content LIKE \'%"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "%\';"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propsBackend()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->isMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xiaomi"

    goto :goto_0

    :cond_0
    const-string v0, "coloros_todo"

    :goto_0
    return-object v0
.end method

.method private static resolve(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backend_override"

    const-string v2, ""

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "coloros_todo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "coloros_note"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pickup_todo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    .line 119
    :catchall_0
    :cond_1
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->resolveByPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static resolveByPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "io.github.okaidev.pickuptodo"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "pickup_todo"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 144
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.miui.notes"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_0

    .line 146
    :catchall_1
    :cond_1
    invoke-static {}, Lio/github/okaidev/pickupcode/NotesBackend;->isMiuiRom()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const-string p0, "xiaomi"

    goto :goto_1

    :cond_2
    const-string p0, "coloros_todo"

    :goto_1
    return-object p0
.end method

.method public static targetAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 279
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetAppNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static targetAppNameOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "pickup_todo"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u53d6\u4ef6\u67dc\uff08\u914d\u5957 App\uff09"

    return-object p0

    :cond_0
    const-string v0, "r5"

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u53d6\u4ef6\u7801\u52a9\u624b R5"

    return-object p0

    :cond_1
    const-string v0, "coloros_note"

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "ColorOS \u4fbf\u7b7e"

    return-object p0

    :cond_2
    const-string v0, "coloros_todo"

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "\u65e5\u5386\u5f85\u529e\uff08com.android.providers.calendar\uff09"

    return-object p0

    :cond_3
    const-string p0, "\u5c0f\u7c73\u7b14\u8bb0"

    return-object p0
.end method

.method public static targetPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->detect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/okaidev/pickupcode/NotesBackend;->targetPkgOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static targetPkgOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "pickup_todo"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "io.github.okaidev.pickuptodo"

    return-object p0

    :cond_0
    const-string v0, "r5"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "com.pickup.assistant"

    return-object p0

    :cond_1
    const-string v0, "coloros_note"

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "com.coloros.note"

    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "coloros"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "com.coloros.calendar"

    return-object p0

    :cond_3
    const-string p0, "com.miui.notes"

    return-object p0
.end method
