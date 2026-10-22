.class public Lio/github/okaidev/pickupcode/UserRules;
.super Ljava/lang/Object;
.source "UserRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/okaidev/pickupcode/UserRules$Rule;,
        Lio/github/okaidev/pickupcode/UserRules$VerifyResult;,
        Lio/github/okaidev/pickupcode/UserRules$TestCase;
    }
.end annotation


# static fields
.field private static final DANGEROUS_PATTERNS:[[Ljava/lang/String;

.field private static final KEY_ENABLED:Ljava/lang/String; = "user_rules_enabled"

.field private static final KEY_JSON:Ljava/lang/String; = "user_rules_json"

.field private static final KEY_SEQ:Ljava/lang/String; = "user_rules_seq"

.field private static final MAX_PATTERN_LEN:I = 0x12c

.field public static final MAX_RULES:I = 0x14

.field public static final MODE_ANY:Ljava/lang/String; = "ANY"

.field public static final MODE_CONTAINS:Ljava/lang/String; = "CONTAINS"

.field public static final MODE_EXACT:Ljava/lang/String; = "EXACT"

.field public static final MODE_PREFIX:Ljava/lang/String; = "PREFIX"

.field private static final PREFS:Ljava/lang/String; = "dedup"

.field public static final SAMPLE_TIME_LIMIT_MS:J = 0x32L

.field public static final SYNC_DIR:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite"

.field public static final SYNC_FILE:Ljava/lang/String; = "/data/local/tmp/pickup_sqlite/user_rules.json"

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile lastHitRule:Lio/github/okaidev/pickupcode/UserRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "\\((?!(?:\\?[:=!]|\\s*[,\uff0c\u3001;\uff1b/\u3001]))[^()]{0,80}[+*]\\)[+*]"

    const-string v2, "\u5b58\u5728\u5d4c\u5957\u91cf\u8bcd\uff08\u5982 (x+)\uff09\uff0c\u53ef\u80fd\u5bfc\u81f4\u6307\u6570\u7ea7\u56de\u6eaf\u4f7f\u77ed\u4fe1\u5904\u7406\u5361\u6b7b"

    .line 315
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(?<!\\?)[+*](?<!\\\\)[+*]"

    const-string v2, "\u91cf\u8bcd\u91cd\u590d\u53e0\u52a0\uff08\u5982 a+*\uff09\uff0c\u53ef\u80fd\u5bfc\u81f4\u707e\u96be\u6027\u56de\u6eaf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\\.\\*[^)]{0,4}\\.\\*"

    const-string v2, "\u76f8\u90bb\u7684 .* \u53ef\u80fd\u5bfc\u81f4\u707e\u96be\u6027\u56de\u6eaf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lio/github/okaidev/pickupcode/UserRules;->DANGEROUS_PATTERNS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLastHit()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/github/okaidev/pickupcode/UserRules;->lastHitRule:Lio/github/okaidev/pickupcode/UserRules$Rule;

    return-void
.end method

.method static compileRule(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "\u89c4\u5219\u4e3a\u7a7a"

    return-object p0

    .line 485
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    .line 486
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pPlace:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->compiledOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 491
    iput-boolean v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->compiledOk:Z

    .line 492
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5219\u7f16\u8bd1\u5931\u8d25\uff1a"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dryRun(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2}, Lio/github/okaidev/pickupcode/UserRules;->tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "\u672a\u547d\u4e2d\u4efb\u4f55\u89c4\u5219\u3002\n\n\u53ef\u80fd\u539f\u56e0\uff1a\n\u00b7 \u8be5\u89c4\u5219\u9650\u5b9a\u4e86\u53d1\u9001\u65b9\uff0c\u4f46\u8fd9\u6761\u77ed\u4fe1\u7684\u53d1\u9001\u65b9\u4e0d\u5339\u914d\n\u00b7 \u6b63\u5219\u6ca1\u5339\u914d\u5230\u5185\u5bb9\uff08\u53ef\u7528\u66f4\u5bbd\u677e\u7684\u5199\u6cd5\u6216\u6539\u6355\u83b7\u7ec4\uff09\n\u00b7 \u89c4\u5219\u5df2\u505c\u7528\uff0c\u6216\u603b\u5f00\u5173\u300c\u542f\u7528\u6211\u7684\u89c4\u5219\u300d\u5904\u4e8e\u5173\u95ed\u72b6\u6001"

    return-object p0

    .line 624
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u65b9\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "(\u7a7a)"

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\u547d\u4e2d\u7801\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 626
    aget-object p1, p0, p1

    if-nez p1, :cond_3

    const-string p1, "(\u65e0)"

    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\u6765\u6e90\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 627
    aget-object p1, p0, p1

    if-nez p1, :cond_4

    const-string p1, "(\u6cbf\u7528\u9ed8\u8ba4\u8bc6\u522b)"

    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\u5730\u70b9\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 628
    aget-object p0, p0, p1

    if-nez p0, :cond_5

    const-string p0, "(\u6cbf\u7528\u9ed8\u8ba4\u63d0\u53d6)"

    :cond_5
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportForShare(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "# \u53d6\u4ef6\u7801\u52a9\u624b \u00b7 \u7528\u6237\u81ea\u5b9a\u4e49\u89c4\u5219 v1\n# \u683c\u5f0f\uff1auser-rules-v1 | \u5bfc\u5165\u65f6\u53ef\u76f4\u63a5\u7c98\u8d34\u5230\u300c\u6211\u7684\u89c4\u5219 \u2192 \u5bfc\u5165\u300d\n# \u6ce8\u610f\uff1a\u8bf7\u52a1\u5fc5\u81ea\u884c\u8131\u654f\u77ed\u4fe1\u6837\u672c\u4e2d\u7684\u59d3\u540d/\u624b\u673a\u53f7/\u4f4f\u5740\u7b49\u9690\u79c1\u4fe1\u606f\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    const-string v2, "\n## "

    .line 738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    const-string v3, "\uff08\u5df2\u505c\u7528\uff09"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ncodeRegex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ncodeGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "senderMode: "

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "ANY"

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nsenderValue: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 744
    :cond_3
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "senderMode: CONTAINS\nsenderValue: "

    .line 745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_4
    :goto_2
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_5
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "place: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_6
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "placeRegex: "

    .line 751
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nplaceGroup: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_7
    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 755
    iget-object v1, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    const-string v4, "test: "

    .line 756
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  <=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 760
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importFromShare(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\n"

    .line 768
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_f

    aget-object v5, p0, v4

    .line 769
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 770
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v6, "## "

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 774
    new-instance v3, Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-direct {v3}, Lio/github/okaidev/pickupcode/UserRules$Rule;-><init>()V

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "u_imp_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->id:Ljava/lang/String;

    const/4 v6, 0x3

    .line 776
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, "\uff08\u5df2\u505c\u7528\uff09"

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    .line 777
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v7

    iput-boolean v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    .line 778
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    .line 779
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const-string v6, "#"

    .line 782
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_1

    :cond_3
    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v6, "codeRegex:"

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0xa

    if-eqz v6, :cond_5

    .line 785
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v6, "codeGroup:"

    .line 786
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 787
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lio/github/okaidev/pickupcode/UserRules;->safeInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    goto/16 :goto_1

    :cond_6
    const-string v6, "senderMode:"

    .line 788
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0xb

    if-eqz v6, :cond_7

    .line 789
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v6, "senderValue:"

    .line 790
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0xc

    .line 791
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v6, "senderContains:"

    .line 792
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0xf

    .line 793
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v6, "source:"

    .line 794
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x7

    .line 795
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v6, "place:"

    .line 796
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x6

    .line 797
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v6, "placeRegex:"

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 799
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const-string v6, "placeGroup:"

    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 801
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lio/github/okaidev/pickupcode/UserRules;->safeInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    goto :goto_1

    :cond_d
    const-string v6, "test:"

    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x5

    .line 803
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "<="

    .line 804
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    .line 806
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x2

    .line 807
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 808
    iget-object v6, v3, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    new-instance v8, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    invoke-direct {v8, v5, v7}, Lio/github/okaidev/pickupcode/UserRules$TestCase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method

.method private static interpolate(Ljava/lang/String;Ljava/lang/String;Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    const-string v1, "$0"

    .line 646
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 647
    iget-object p1, p2, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_3

    .line 649
    :try_start_0
    iget-object p1, p2, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 650
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 651
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p3

    if-gt p2, p3, :cond_3

    .line 652
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    return-object p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 210
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "user_rules_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$syncToSystemProcess$0(ZLjava/util/List;)V
    .locals 2

    const-string v0, "\nPICKUP_EOF\nchmod 644 /data/local/tmp/pickup_sqlite/user_rules.json"

    const-string v1, "mkdir -p /data/local/tmp/pickup_sqlite; cat > /data/local/tmp/pickup_sqlite/user_rules.json << \'PICKUP_EOF\'\n"

    if-eqz p0, :cond_0

    .line 273
    :try_start_0
    invoke-static {p1}, Lio/github/okaidev/pickupcode/UserRules;->serialize(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "[]"

    .line 274
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/Diagnostics;->suExecPublic(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sync to system process failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PICKUPDEBUG"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static lastHitRuleName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/UserRules;->lastHitRule:Lio/github/okaidev/pickupcode/UserRules$Rule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {v0}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static loadAll(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "user_rules_json"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 225
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 226
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lio/github/okaidev/pickupcode/UserRules;->parseRule(Lorg/json/JSONObject;)Lio/github/okaidev/pickupcode/UserRules$Rule;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PICKUPDEBUG"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static loadForSystemProcess()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/pickup_sqlite/user_rules.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 289
    :cond_0
    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 292
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 293
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/github/okaidev/pickupcode/UserRules;->parseRule(Lorg/json/JSONObject;)Lio/github/okaidev/pickupcode/UserRules$Rule;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 294
    invoke-static {v3}, Lio/github/okaidev/pickupcode/UserRules;->compileRule(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :catchall_0
    move-exception v1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadForSystemProcess failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PICKUPDEBUG"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method static matchCode(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 498
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 499
    :cond_0
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 501
    :cond_1
    iget p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    if-ltz p0, :cond_5

    .line 502
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-le p0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    .line 503
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    .line 504
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    return-object v0
.end method

.method static matchCodes(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_7

    .line 591
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 593
    :cond_0
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 594
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 595
    iget v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    if-ltz v1, :cond_2

    .line 596
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_0

    .line 598
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "[,\uff0c\u3001;\uff1b\\s]+"

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 602
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 606
    :cond_6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static modeHint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "EXACT"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u9a7f\u7ad9\u56fa\u5b9a\u53f7\u7801\u65f6\u7528\uff1a\u77ed\u4fe1\u6765\u81ea\u8fd9\u4e2a\u53f7\u7801\u624d\u751f\u6548\u3002\u4f8b\uff1a1069888877"

    return-object p0

    :cond_0
    const-string v0, "PREFIX"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u865a\u62df\u53f7\u540e\u51e0\u4f4d\u968f\u673a\u65f6\u7528\uff1a\u53ea\u770b\u5f00\u5934\u51e0\u4f4d\u3002\u4f8b\uff1a1069 \u5339\u914d 1069888877\u30011069123456"

    return-object p0

    :cond_1
    const-string v0, "CONTAINS"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u53f7\u7801\u8bb0\u4e0d\u4f4f\u65f6\u7528\uff1a\u53d1\u9001\u65b9\u91cc\u542b\u8fd9\u6bb5\u6587\u5b57\u5373\u53ef\u3002\u4f8b\uff1a\u83dc\u9e1f\u9a7f\u7ad9"

    return-object p0

    :cond_2
    const-string p0, "\u4efb\u4f55\u77ed\u4fe1\u90fd\u5c1d\u8bd5\u8fd9\u6761\u89c4\u5219\uff08\u5b98\u65b9\u89c4\u5219\u6ca1\u8986\u76d6\u5230\u7684\u573a\u666f\uff0c\u7528\u5b83\u515c\u5e95\uff09"

    return-object p0
.end method

.method public static modeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "EXACT"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u7cbe\u786e\u5339\u914d\uff08\u6574\u4e2a\u53f7\u7801\u4e00\u81f4\uff09"

    return-object p0

    :cond_0
    const-string v0, "PREFIX"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u524d\u7f00\u5339\u914d\uff08\u5f00\u5934\u51e0\u4f4d\u4e00\u81f4\uff09"

    return-object p0

    :cond_1
    const-string v0, "CONTAINS"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u5305\u542b\u5339\u914d\uff08\u542b\u6709\u8be5\u6587\u5b57\uff09"

    return-object p0

    :cond_2
    const-string p0, "\u4e0d\u9650\u6765\u6e90\uff08\u5168\u5c40\u89c4\u5219\uff09"

    return-object p0
.end method

.method public static nextId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 253
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "user_rules_seq"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 254
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "u_"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    mul-int/lit16 v0, v0, 0x1eef

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseRule(Lorg/json/JSONObject;)Lio/github/okaidev/pickupcode/UserRules$Rule;
    .locals 8

    const-string v0, ""

    const-string v1, "u_"

    .line 698
    :try_start_0
    new-instance v2, Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-direct {v2}, Lio/github/okaidev/pickupcode/UserRules$Rule;-><init>()V

    const-string v3, "id"

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->id:Ljava/lang/String;

    const-string v1, "name"

    const-string v3, "\u672a\u547d\u540d\u89c4\u5219"

    .line 700
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    const-string v1, "enabled"

    const/4 v3, 0x1

    .line 701
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    const-string v1, "senderContains"

    .line 702
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    const-string v1, "senderMode"

    const-string v4, "ANY"

    .line 703
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v1, "senderValue"

    .line 704
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    const-string v1, "codeRegex"

    .line 705
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    const-string v1, "codeGroup"

    .line 706
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    const-string v1, "source"

    .line 707
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    const-string v1, "place"

    .line 708
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    const-string v1, "placeRegex"

    .line 709
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    const-string v1, "placeGroup"

    .line 710
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    const-string v1, "testCases"

    .line 711
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 713
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 714
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 715
    iget-object v4, v2, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    new-instance v5, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    const-string v6, "sms"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "expectCode"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lio/github/okaidev/pickupcode/UserRules$TestCase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_0
    invoke-static {v2}, Lio/github/okaidev/pickupcode/UserRules;->compileRule(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static quickValidate(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "\u5730\u70b9\u5f15\u7528\u4e86\u7b2c "

    const-string v2, "\u53d6\u4ef6\u7801\u5f15\u7528\u4e86\u7b2c "

    if-nez p0, :cond_0

    const-string p0, "\u89c4\u5219\u4e3a\u7a7a"

    return-object p0

    .line 345
    :cond_0
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 347
    :cond_1
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->validateSender(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    .line 349
    :cond_2
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 352
    :cond_3
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-static {v3}, Lio/github/okaidev/pickupcode/UserRules;->scanDangerous(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 353
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u6b63\u5219\u5b58\u5728\u98ce\u9669\uff1a"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 354
    :cond_4
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 355
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-static {v3}, Lio/github/okaidev/pickupcode/UserRules;->scanDangerous(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5730\u70b9\u6b63\u5219\u5b58\u5728\u98ce\u9669\uff1a"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_5
    :try_start_0
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    .line 361
    iget v4, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, " \u4e2a\u6355\u83b7\u7ec4\uff0c\u4f46\u6b63\u5219\u53ea\u6709 "

    if-le v4, v3, :cond_6

    .line 362
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u4e2a\uff08\u7528\u5c0f\u62ec\u53f7 () \u5305\u56f4\u7684\u90e8\u5206\u624d\u7b97\u6355\u83b7\u7ec4\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 368
    :cond_6
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 370
    :try_start_2
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 371
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    .line 372
    iget v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    if-le v2, v0, :cond_7

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u4e2a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5730\u70b9\u6b63\u5219\u8bed\u6cd5\u9519\u8bef\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception p0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5219\u8bed\u6cd5\u9519\u8bef\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    const-string p0, "\u8bf7\u586b\u5199\u300c\u53d6\u4ef6\u7801\u6b63\u5219\u300d"

    return-object p0

    :cond_9
    :goto_1
    const-string p0, "\u8bf7\u586b\u5199\u89c4\u5219\u540d\u79f0"

    return-object p0
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 825
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 828
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 829
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 824
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static safeInt(Ljava/lang/String;I)I
    .locals 0

    .line 816
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p1
.end method

.method static safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 820
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "\u672a\u547d\u540d\u89c4\u5219"

    :goto_0
    return-object p0
.end method

.method public static saveAll(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "\u89c4\u5219\u5217\u8868\u4e3a\u7a7a"

    return-object p0

    .line 238
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u89c4\u5219\u6570\u91cf\u8d85\u51fa\u4e0a\u9650\uff08\u6700\u591a 20 \u6761\uff0c\u5f53\u524d "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u6761\uff09"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    .line 243
    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->quickValidate(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u89c4\u5219\u300c"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->safeName(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u300d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_2
    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->toJson(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 247
    :cond_3
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "user_rules_json"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->syncToSystemProcess(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static scanDangerous(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "\u6b63\u5219\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    .line 329
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5219\u8fc7\u957f\uff08"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/300 \u5b57\u7b26\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lio/github/okaidev/pickupcode/UserRules;->DANGEROUS_PATTERNS:[[Ljava/lang/String;

    .line 332
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 334
    :try_start_0
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 335
    aget-object p0, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static senderMatches(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Z
    .locals 5

    .line 107
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v1, "ANY"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 108
    :goto_1
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 110
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "CONTAINS"

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    iget-object p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v4

    .line 114
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    if-nez p1, :cond_5

    return p0

    .line 116
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "EXACT"

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    const-string v3, "PREFIX"

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 124
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v1, p0

    :cond_9
    :goto_3
    return v1
.end method

.method private static serialize(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 726
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 727
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    invoke-static {v1}, Lio/github/okaidev/pickupcode/UserRules;->toJson(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 214
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_rules_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    invoke-static {p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->syncToSystemProcess(Landroid/content/Context;Z)V

    return-void
.end method

.method static sortedBySpecificity(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;)",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    new-instance p0, Lio/github/okaidev/pickupcode/UserRules$1;

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/UserRules$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "dedup"

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static specificity(Lio/github/okaidev/pickupcode/UserRules$Rule;)I
    .locals 4

    .line 133
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v1, "ANY"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 134
    :goto_1
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    iget-object p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 138
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "EXACT"

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const-string p0, "PREFIX"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method private static syncToSystemProcess(Landroid/content/Context;Z)V
    .locals 3

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    .line 269
    iget-boolean v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->compiledOk:Z

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_1
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lio/github/okaidev/pickupcode/UserRules$$ExternalSyntheticLambda0;-><init>(ZLjava/util/List;)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static toJson(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lorg/json/JSONObject;
    .locals 6

    .line 665
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 666
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 667
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enabled"

    .line 668
    iget-boolean v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 669
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "senderMode"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    :cond_0
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "senderValue"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    :cond_1
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "senderContains"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "codeRegex"

    .line 672
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeRegex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "codeGroup"

    .line 673
    iget v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->codeGroup:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "source"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    :cond_3
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "place"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    :cond_4
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "placeRegex"

    .line 677
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placeGroup"

    .line 678
    iget v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 680
    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 681
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 682
    iget-object p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    .line 683
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sms"

    .line 684
    iget-object v5, v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "expectCode"

    .line 685
    iget-object v2, v2, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_6
    const-string p0, "testCases"

    .line 689
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 692
    :catchall_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 523
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 524
    :cond_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->sortedBySpecificity(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/okaidev/pickupcode/UserRules$Rule;

    .line 525
    iget-boolean v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->enabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->compiledOk:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->pCode:Ljava/util/regex/Pattern;

    if-nez v2, :cond_2

    goto :goto_0

    .line 526
    :cond_2
    invoke-static {v1, p1}, Lio/github/okaidev/pickupcode/UserRules;->senderMatches(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 530
    :cond_3
    :try_start_0
    invoke-static {v1, p2}, Lio/github/okaidev/pickupcode/UserRules;->matchCodes(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 532
    :catchall_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 536
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 539
    iget-object p1, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 540
    iget-object p1, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->source:Ljava/lang/String;

    invoke-static {p1, p0, v1, p2}, Lio/github/okaidev/pickupcode/UserRules;->interpolate(Ljava/lang/String;Ljava/lang/String;Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 542
    :goto_2
    iget-object v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeRegex:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->pPlace:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_7

    .line 544
    :try_start_1
    iget-object v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->pPlace:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 546
    iget v4, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->placeGroup:I

    if-ltz v4, :cond_7

    .line 547
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v4, v5, :cond_7

    if-nez v4, :cond_6

    .line 548
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 554
    iget-object v0, v1, Lio/github/okaidev/pickupcode/UserRules$Rule;->place:Ljava/lang/String;

    invoke-static {v0, p0, v1, p2}, Lio/github/okaidev/pickupcode/UserRules;->interpolate(Ljava/lang/String;Ljava/lang/String;Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    sput-object v1, Lio/github/okaidev/pickupcode/UserRules;->lastHitRule:Lio/github/okaidev/pickupcode/UserRules$Rule;

    const-string p0, ";"

    .line 557
    invoke-static {p0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sput-object v0, Lio/github/okaidev/pickupcode/UserRules;->lastHitRule:Lio/github/okaidev/pickupcode/UserRules$Rule;

    :cond_b
    :goto_4
    return-object v0
.end method

.method static validateSender(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;
    .locals 4

    .line 459
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    const-string v1, "ANY"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderMode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 460
    :goto_1
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 461
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 462
    iget-object p0, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->senderContains:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 464
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    .line 465
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v3, 0x1e

    if-le p0, v3, :cond_5

    .line 466
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u65b9\u5339\u914d\u503c\u8fc7\u957f\uff08"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u5b57\u7b26\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "EXACT"

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "[0-9]{4,15}"

    .line 469
    invoke-virtual {v2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u7cbe\u786e\u5339\u914d\u8981\u6c42\u586b\u5199\u7eaf\u6570\u5b57\u53f7\u7801\uff08\u6536\u5230\u7684\u662f "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09\u3002\u82e5\u53f7\u7801\u542b\u6587\u5b57\uff0c\u8bf7\u6539\u7528\u300c\u5305\u542b\u5339\u914d\u300d\uff1b\u82e5\u53ea\u6709\u524d\u51e0\u4f4d\u56fa\u5b9a\uff0c\u8bf7\u6539\u7528\u300c\u524d\u7f00\u5339\u914d\u300d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "PREFIX"

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "[0-9]{2,15}"

    .line 474
    invoke-virtual {v2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 475
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u524d\u7f00\u5339\u914d\u8981\u6c42\u586b\u5199 2-15 \u4f4d\u7eaf\u6570\u5b57\uff08\u6536\u5230\u7684\u662f "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v1
.end method

.method public static verify(Lio/github/okaidev/pickupcode/UserRules$Rule;)Lio/github/okaidev/pickupcode/UserRules$VerifyResult;
    .locals 13

    .line 387
    new-instance v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;-><init>()V

    .line 388
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->quickValidate(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 390
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    .line 391
    iput-object v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    return-object v0

    .line 394
    :cond_0
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 400
    :cond_1
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_2

    .line 401
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    const-string p0, "\u6d4b\u8bd5\u6837\u672c\u8fc7\u591a\uff08\u6700\u591a 20 \u6761\uff09"

    .line 402
    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    return-object v0

    .line 405
    :cond_2
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->compileRule(Lio/github/okaidev/pickupcode/UserRules$Rule;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 406
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    const-string p0, "\u6b63\u5219\u7f16\u8bd1\u5931\u8d25"

    .line 407
    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    return-object v0

    .line 410
    :cond_3
    iget-object v1, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->total:I

    move v1, v2

    .line 411
    :goto_0
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_c

    .line 412
    iget-object v3, p0, Lio/github/okaidev/pickupcode/UserRules$Rule;->testCases:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;

    .line 413
    iget-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    const-string v6, "\u7b2c "

    if-eqz v5, :cond_b

    iget-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_4

    .line 417
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 421
    :try_start_0
    iget-object v5, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->sms:Ljava/lang/String;

    invoke-static {p0, v5}, Lio/github/okaidev/pickupcode/UserRules;->matchCodes(Lio/github/okaidev/pickupcode/UserRules$Rule;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 422
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-eqz v9, :cond_5

    move-object v5, v10

    goto :goto_1

    :cond_5
    :try_start_1
    const-string v9, ";"

    invoke-static {v9, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v11, v7

    const-wide/16 v7, 0x32

    cmp-long v7, v11, v7

    if-lez v7, :cond_6

    .line 429
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " \u6761\u6837\u672c\u8017\u65f6 "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "ms\uff0c\u8d85\u8fc7 50ms \u7194\u65ad\u9608\u503c\u2014\u2014\u8be5\u6b63\u5219\u53ef\u80fd\u5f15\u53d1\u707e\u96be\u6027\u56de\u6eaf\uff0c\u5728\u771f\u5b9e\u77ed\u4fe1\u4e0a\u4f1a\u5361\u4f4f\u77ed\u4fe1\u5904\u7406\u6d41\u7a0b\uff0c\u5df2\u62d2\u7edd\u542f\u7528\u3002\u8bf7\u7b80\u5316\u6b63\u5219\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    .line 433
    iput v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->total:I

    return-object v0

    .line 436
    :cond_6
    iget-object v7, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    if-nez v7, :cond_7

    move-object v3, v10

    goto :goto_2

    :cond_7
    iget-object v3, v3, Lio/github/okaidev/pickupcode/UserRules$TestCase;->expectCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-nez v5, :cond_8

    goto :goto_3

    .line 437
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 438
    iget-object v4, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u6761\u6837\u672c\u4e0d\u5339\u914d\uff1a\u671f\u671b\u300c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u300d\uff0c\u5b9e\u9645\u300c"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v5, :cond_9

    const-string v5, "(\u65e0\u5339\u914d)"

    .line 439
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u300d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 441
    :cond_a
    iget v3, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->passed:I

    add-int/2addr v3, v4

    iput v3, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->passed:I

    goto :goto_5

    :catchall_0
    move-exception v3

    .line 424
    iget-object v4, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u6761\u6837\u672c\uff1a\u6267\u884c\u5f02\u5e38 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 414
    :cond_b
    :goto_4
    iget-object v3, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6761\u6837\u672c\uff1a\u77ed\u4fe1\u5185\u5bb9\u4e3a\u7a7a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 444
    :cond_c
    iget-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    iget p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->passed:I

    iget v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->total:I

    if-ne p0, v1, :cond_d

    move v2, v4

    :cond_d
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    .line 445
    iget-boolean p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    const-string v1, "/"

    if-nez p0, :cond_f

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u81ea\u6d4b\u672a\u901a\u8fc7\uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->passed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u901a\u8fc7\uff09\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->details:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\u00b7 "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    const-string v1, "\n\u8bf7\u5bf9\u7167\u4fee\u6b63\u6b63\u5219\u6216\u671f\u671b\u503c\u540e\u91cd\u8bd5\u3002"

    .line 448
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    goto :goto_7

    .line 451
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "\u81ea\u6d4b\u901a\u8fc7\uff08"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->passed:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->total:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\uff09\uff0c\u8017\u65f6\u5747\u4f4e\u4e8e 50ms \u7194\u65ad\u9608\u503c"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    :goto_7
    return-object v0

    .line 395
    :cond_10
    :goto_8
    iput-boolean v2, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->ok:Z

    const-string p0, "\u5fc5\u987b\u81f3\u5c11\u6dfb\u52a0 1 \u6761\u6d4b\u8bd5\u6837\u672c\uff1a\u7c98\u8d34\u4e00\u6761\u771f\u5b9e\u77ed\u4fe1\u3001\u586b\u5199\u671f\u671b\u63d0\u53d6\u5230\u7684\u53d6\u4ef6\u7801\uff0c\u81ea\u6d4b\u901a\u8fc7\u540e\u624d\u80fd\u542f\u7528\uff08\u8fd9\u662f\u9632\u6b62\u89c4\u5219\u5728\u771f\u5b9e\u4f7f\u7528\u4e2d\u51fa\u9519\u7684\u5fc5\u8981\u6b65\u9aa4\uff09"

    .line 396
    iput-object p0, v0, Lio/github/okaidev/pickupcode/UserRules$VerifyResult;->message:Ljava/lang/String;

    return-object v0
.end method
