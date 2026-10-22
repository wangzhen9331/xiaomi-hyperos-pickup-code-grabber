.class public Lio/github/okaidev/pickupcode/PickupExtractor;
.super Ljava/lang/Object;
.source "PickupExtractor.java"


# static fields
.field private static final P_PHONE:Ljava/util/regex/Pattern;

.field private static final P_TIME:Ljava/util/regex/Pattern;

.field private static final RULES_FILE_NAME:Ljava/lang/String; = "rules_active.json"

.field private static final SMOKE_TEST_CASES:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PICKUPDEBUG"

.field private static volatile activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

.field private static volatile userRuleCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    invoke-static {}, Lio/github/okaidev/pickupcode/ExtractorRules;->createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    const-string v0, "\\d{1,2}:\\d{2}"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->P_TIME:Ljava/util/regex/Pattern;

    const-string v0, "1[3-9]\\d{9}"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->P_PHONE:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "\u3010\u83dc\u9e1f\u9a7f\u7ad9\u3011\u60a8\u67093\u4e2a\u5305\u88f9\u5230\u7ad9\uff0c\u53d6\u4ef6\u7801\u4e3a16-4-9626, 15-3-2194, 16-3-0906\uff0c\u51ed\u7801\u53d6\u4ef6"

    const-string v2, "16-4-9626;15-3-2194;16-3-0906"

    .line 44
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u3010\u4e30\u5de2\u3011\u51ed22-2-3579\u5230\u534e\u6da6\u4e07\u5bb6\u65c1\u4e30\u5de2\u67dc\u53d6\u4ef6"

    const-string v2, "22-2-3579"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u3010\u5988\u5988\u9a7f\u7ad9\u3011\u53d6\u8d27\u78012-2-7508\uff0c\u60a8\u6709\u6781\u5154\u5feb\u9012\u5305\u88f9\uff0c\u5df2\u5230\u65b0\u521b\u6751\u6c99\u5480\u91cc132\u53f7"

    const-string v2, "2-2-7508"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u3010\u5154\u559c\u751f\u6d3b\u3011\u60a8\u6709\u5305\u88f9\u5df2\u5230\u8fbe\u5174\u9f99\u6e7e30\u680b\u5154\u559c\u5e97\uff0c\u53d6\u4ef6\u7801\u4e3a2-3-05025\uff0c\u5730\u5740:\u5174\u9f99\u6e7e30\u53f7\u697c102"

    const-string v2, "2-3-05025"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u3010\u83dc\u9e1f\u9a7f\u7ad9\u3011\u8bf723:59\u524d\u5230\u7ad9\u51ed\"72778\"\u5230\u4f5b\u5c71\u6842\u57ce\u5357\u7ea6\u516d\u533a185\u53f7\u5e97\u7ad9\u70b9\u9886\u53d6\u60a8\u7684\u987a\u4e30*72778\u5305\u88f9"

    const-string v2, "72778"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "\u3010\u4e2d\u90ae\u9a7f\u7ad9\u3011\u60a8\u7684\u90ae\u653f\u5305\u88f9\u5df2\u5230\uff0c\u53d6\u4ef6\u7801A88123\uff0c\u8bf7\u53ca\u65f6\u9886\u53d6"

    const-string v2, "A88123"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\u3010\u5988\u5988\u9a7f\u7ad9\u3011\u53d6\u8d27\u78015-5-9-13\uff0c\u60a8\u6709\u5305\u88f9YT764306505052\u5df2\u5230\u82cd\u5c71\u4e0b\u5761\u5706\u901a\u5feb\u9012"

    const-string v2, "5-5-9-13"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\u3010\u7533\u901a\u5feb\u9012\u3011\u8bf7\u51ed9-7-0993\u5230\u82cd\u5c71\u8001\u83dc\u573a\u659c\u5bf9\u9762\u7533\u901a\u5feb\u9012\u53d6\u60a8\u7684\u5feb\u9012\uff0c\u8be6\u8be2\u4ee3\u6536\u9a7f\u7ad9"

    const-string v2, "9-7-0993"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "\u3010\u94f6\u884c\u3011\u60a8\u7684\u9a8c\u8bc1\u7801 858822\uff0c\u8bf7\u52ff\u6cc4\u9732"

    const-string v2, "-"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "\u3010\u67d0App\u3011\u52a8\u6001\u9a8c\u8bc1\u7801 33-3-0444 \u8bf7\u57285\u5206\u949f\u5185\u8f93\u5165"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "\u3010\u62fc\u591a\u591a\u3011\u60a8\u7684\u5546\u54c1\u5728\u4ee3\u6536\u70b9\u5df2\u8d856\u5c0f\u65f6\u672a\u53d6\uff0c\u4e3a\u907f\u514d\u9c9c\u6d3b\u5546\u54c1\u635f\u574f\uff0c\u8bf7\u5c3d\u5feb\u53d6\u4ef6\u3002"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "\u3010\u5706\u901a\u5feb\u9012\u3011\u51ed1-2-21003\u5230\u68ee\u6cf0\u9996\u5e9c\u5feb\u9012\u9a7f\u7ad9\u53d6\u5c3e\u53f70236\u5305\u88f9"

    const-string v3, "1-2-21003"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "\u3010\u4e2d\u901a\u5feb\u9012\u3011\u51ed9-1-21006\u5230\u68ee\u6cf0\u9996\u5e9c\u5feb\u9012\u9a7f\u7ad9\u53d6\u5c3e\u53f70107\u5305\u88f9"

    const-string v3, "9-1-21006"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "\u3010\u5988\u5988\u9a7f\u7ad9\u30113\u4e2a\u5305\u88f9\uff0c\u53d6\u8d27\u78012-5-7077\uff0c2-5-7075\uff0c2-3-4346\uff0c\u4e2d\u5cf0\u4e61\u4fe1\u7528\u793e\u659c\u5bf9\u9762\u5706\u901a\u901f\u9012\u5988\u5988\u9a7f\u7ad9"

    const-string v3, "2-5-7077;2-5-7075;2-3-4346"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "[\u5154\u559c\u751f\u6d3b]\u8bf7\u51ed552577\u81f3\u540c\u5174\u51a0\u5bd33\u53f7\u697c1\u53f7\u5154\u559c\u5feb\u9012\u67dc\u53d6\u4ef6\uff0c\u514d\u8d39\u5b5824\u5c0f\u65f6\uff0c\u8d85\u65f6\u65360.50\u51433.00\u5143\u5c01\u9876"

    const-string v3, "552577"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "\u3010\u5357\u4eac\u767e\u7c73\u9700\u3011\u60a8\u7684\u4e2d\u901a\u5305\u88f9\u5df2\u5230x\u9547x\u6751xx\u53f7\u83dc\u9e1f\u9a7f\u7ad93\u53f7\u67dc284\u53f7\u683c\u53e3\uff0c\u53d6\u4ef6\u78014869-9777"

    const-string v3, "4869-9777"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "\u3010\u90ae\u4fa0\u3011\u51ed\u53d6\u4ef6\u78011681-5191\u5230x\u9547x\u6751xx\u53f7\u83dc\u9e1f\u9a7f\u7ad92\u53f7\u67dc365\u53f7\u683c\u53e3,\u8be2\u3002"

    const-string v3, "1681-5191"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "\u5c0a\u656c\u7684\u5ba2\u6237\uff0c\u60a8\u5728\u79ef\u5206\u5546\u57ce\u5151\u6362\u7684\u8ba2\u53551064\u5df1\u53d1\u8d27\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536\u3002\u7269\u6d41\u5c0f\u53ef\u90ae\u653f\u5feb\u9012\u5305\u88f9\uff0c\u5355\u53f7123123123\u4e5f\u53ef\u767b\u5f55\u79ef\u5206\u5546\u57ce\u5728\u201c\u6211\u7684\u8ba2\u5355\u201d\u5904\u67e5\u770b\u7269\u6d41\u4fe1\u606f\uff1ahttp://if.189.cn/AFXQLl\u3010\u4e2d\u56fd\u7535\u4fe1\u79ef\u5206\u5546\u57ce\u3011"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "\u3010\u4e2d\u56fd\u79fb\u52a8\u5361\u5238\u63d0\u9192\u3011\uff08\u5361\u5238\u5230\u8d26\u63d0\u9192\uff09\u5c0a\u656c\u7684159****6739\u5ba2\u6237\uff0c\u60a8\u7684\u4e00\u5f20\u201c\u8bdd\u8d39\u5238\u201d\u5df2\u5230\u8d26\uff0c\u8bf7\u524d\u5f80\u4e2d\u56fd\u79fb\u52a8APP-\u6211\u7684-\u5361\u5238\u67e5\u770b\u4f7f\u7528\uff0c\u6216\u6233\u6211\u76f4\u8fbe\uff1ahttps://dx.10086.cn/A/3Oa0Hw\uff08\u62d2\u6536\u8bf7\u56de\u590dR\uff09"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "\u3010\u8702\u9e1f\u914d\u9001\u3011\u60a8\u7684\u8ba2\u5355\u5df2\u7ecf\u9001\u8fbe\u5df2\u9001\u8fbe\uff0c\u5bbf\u820d\u697c\u4e0b\u5916\u5356\u67b6\u4f4d\u7f6e\uff0c\u6dd8\u5b9d\u95ea\u8d2d\u641c\u7d22719987\uff0c\u9886\u5b66\u751f\u4e13\u5c5e\u514d\u5355\u5361\uff0c\u518d\u641c94666\u8fd8\u53ef\u9886\u53e0\u52a0\u7ea2\u5305\uff0c\u5982\u6709\u95ee\u9898\u8bf7\u53bb\u8ba2\u5355\u8be6\u60c5\u9875\u8054\u7cfb\u9a91\u624b.\u8c22\u8c22\uff5e"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "[e\u6d4b\u8bd5]\u53cc\u8282\u7279\u60e0:\u751f\u7269SEM\u3001\u6fc0\u5149\u5171\u805a\u7126\u3001Tunel\u8367\u5149\u7b49\u4f4e\u81f36\u6298\u5238\u5df2\u5230\u60a8\u8d26\u6237\uff0c\u8282\u524d\u63d0\u524d\u9501\u4f18\u60e0\uff0c\u62d2\u6536\u8bf7\u56de\u590dR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->SMOKE_TEST_CASES:[[Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeRules()Lio/github/okaidev/pickupcode/ExtractorRules;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    return-object v0
.end method

.method private static addCluster(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/okaidev/pickupcode/ExtractorRules;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "[,\uff0c\u3001;\uff1b\\s]+"

    .line 413
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 414
    invoke-static {p0, p1, v2}, Lio/github/okaidev/pickupcode/PickupExtractor;->addIfValid(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addIfValid(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/okaidev/pickupcode/ExtractorRules;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 419
    invoke-static {p1, p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->validCode(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized applyNewRules(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "applyNewRules: successfully applied and persisted rules v"

    const-string v1, "applyNewRules: smoke test failed for candidate v"

    const-string v2, "applyNewRules failed: "

    const-class v3, Lio/github/okaidev/pickupcode/PickupExtractor;

    monitor-enter v3

    const/4 v4, 0x0

    .line 136
    :try_start_0
    invoke-static {p1}, Lio/github/okaidev/pickupcode/ExtractorRules;->fromJson(Ljava/lang/String;)Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v5

    .line 137
    invoke-static {v5}, Lio/github/okaidev/pickupcode/PickupExtractor;->runSmokeTest(Lio/github/okaidev/pickupcode/ExtractorRules;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string p0, "PICKUPDEBUG"

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    monitor-exit v3

    return v4

    :cond_0
    if-eqz p0, :cond_1

    .line 144
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v6, "rules_active.json"

    invoke-direct {v1, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    :try_start_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 145
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    sput-object v5, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    const-string p0, "PICKUPDEBUG"

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 153
    monitor-exit v3

    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p0

    :try_start_6
    const-string p1, "PICKUPDEBUG"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 156
    monitor-exit v3

    return v4

    :catchall_3
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public static extract(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    const/4 v1, 0x0

    .line 236
    invoke-static {v0, v1, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    .line 241
    invoke-static {v0, p0, p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static extractPlace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-static {v0, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractPlace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\u2014"

    if-eqz p1, :cond_7

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v2, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 263
    invoke-static {v2, p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    if-eqz p0, :cond_2

    .line 264
    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_2
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlace:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    .line 270
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlace:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_3

    .line 272
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :cond_3
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlaceFallback:Ljava/util/regex/Pattern;

    if-eqz p0, :cond_4

    .line 277
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlaceFallback:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 279
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_4
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    if-eqz p0, :cond_7

    .line 284
    iget-object p0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v4, -0x1

    .line 286
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 287
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/github/okaidev/pickupcode/PickupExtractor;->validCode(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_0

    :cond_6
    if-lez v4, :cond_7

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v4, p0, :cond_7

    .line 290
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^[\uff0c,\u3002\uff1b;\u3001\\s]+"

    const-string v3, ""

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x28

    if-gt p1, v2, :cond_7

    invoke-static {v1, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->looksLikePlace(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/okaidev/pickupcode/ExtractorRules;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    invoke-static {p0, v0, p1}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/okaidev/pickupcode/ExtractorRules;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p2, :cond_13

    .line 340
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    if-nez p0, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 344
    invoke-static {v1, p1, p2}, Lio/github/okaidev/pickupcode/UserRules;->tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 345
    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 346
    aget-object p1, p1, v1

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 347
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 354
    :cond_3
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_7

    .line 359
    :cond_4
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternKeyword:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 360
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternKeyword:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 361
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lio/github/okaidev/pickupcode/PickupExtractor;->addCluster(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_5
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternBy:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_6

    .line 368
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternBy:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 369
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lio/github/okaidev/pickupcode/PickupExtractor;->addIfValid(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V

    goto :goto_2

    .line 375
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternCodeToTake:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_7

    .line 376
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternCodeToTake:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 377
    :goto_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 378
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lio/github/okaidev/pickupcode/PickupExtractor;->addIfValid(Ljava/util/Set;Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)V

    goto :goto_3

    .line 383
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_11

    .line 386
    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternNegative:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternNegative:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 387
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 389
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v3, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 391
    :cond_9
    :goto_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 392
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-static {p0, v4}, Lio/github/okaidev/pickupcode/PickupExtractor;->validCode(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_4

    .line 394
    :cond_a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-static {p0, v4, v5, v6, p2}, Lio/github/okaidev/pickupcode/PickupExtractor;->isExcludedToken(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    .line 397
    :cond_b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/16 v7, 0x18

    invoke-static {p2, v5, v6, v7}, Lio/github/okaidev/pickupcode/PickupExtractor;->window(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    .line 398
    iget-object v6, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x2

    goto :goto_5

    :cond_c
    move v6, v1

    .line 399
    :goto_5
    iget-object v7, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAction:Ljava/util/regex/Pattern;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAction:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_d

    add-int/lit8 v6, v6, 0x2

    .line 400
    :cond_d
    iget-object v5, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternDashShape:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternDashShape:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v6, v6, 0x1

    :cond_e
    const-string v5, "\\d{6,9}"

    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    add-int/lit8 v6, v6, 0x1

    :cond_f
    const/4 v5, 0x4

    if-lt v6, v5, :cond_9

    .line 403
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 405
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 408
    :cond_11
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 355
    :cond_12
    :goto_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 340
    :cond_13
    :goto_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static getActiveRulesDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    .line 167
    iget-object v0, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\u9ed8\u8ba4\u5185\u7f6e\u89c4\u5219"

    :goto_0
    return-object v0
.end method

.method public static getActiveRulesVersion()I
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    .line 162
    iget v0, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getLastHitUserRuleName()Ljava/lang/String;
    .locals 1

    .line 507
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->lastHitRuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasFeatureWords(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-static {v0, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->hasFeatureWords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasFeatureWords(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 229
    invoke-static {v1, p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    if-eqz p0, :cond_2

    .line 231
    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static hitUserRule()Z
    .locals 1

    .line 504
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->lastHitRuleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8

    const-string v0, "PickupExtractor: loaded asset rules v"

    const-string v1, "PickupExtractor: loaded custom rules v"

    const-string v2, "PickupExtractor init rules err: "

    const-string v3, "init user rules err: "

    const-class v4, Lio/github/okaidev/pickupcode/PickupExtractor;

    monitor-enter v4

    if-nez p0, :cond_0

    .line 71
    monitor-exit v4

    return-void

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->loadUserRulesInternal(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    const-string v6, "PICKUPDEBUG"

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 79
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "rules_active.json"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-static {v3}, Lio/github/okaidev/pickupcode/PickupExtractor;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v5}, Lio/github/okaidev/pickupcode/ExtractorRules;->fromJson(Ljava/lang/String;)Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v5

    .line 83
    invoke-static {v5}, Lio/github/okaidev/pickupcode/PickupExtractor;->runSmokeTest(Lio/github/okaidev/pickupcode/ExtractorRules;)Z

    move-result v6

    if-eqz v6, :cond_1

    sput-object v5, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    const-string p0, "PICKUPDEBUG"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v5, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 86
    monitor-exit v4

    return-void

    :cond_1
    :try_start_3
    const-string v1, "PICKUPDEBUG"

    const-string v5, "PickupExtractor: cached rules failed smoke test, fallback to default"

    .line 88
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 94
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "rules/rules.json"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 95
    :try_start_5
    invoke-static {p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->fromJson(Ljava/lang/String;)Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v1

    .line 97
    invoke-static {v1}, Lio/github/okaidev/pickupcode/PickupExtractor;->runSmokeTest(Lio/github/okaidev/pickupcode/ExtractorRules;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    const-string v2, "PICKUPDEBUG"

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_3

    .line 102
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 100
    :cond_3
    monitor-exit v4

    return-void

    :cond_4
    if-eqz p0, :cond_6

    .line 102
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_5

    .line 94
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_3
    move-exception p0

    :try_start_a
    const-string v0, "PICKUPDEBUG"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :catchall_4
    :cond_6
    :goto_2
    invoke-static {}, Lio/github/okaidev/pickupcode/ExtractorRules;->createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object p0

    sput-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 108
    monitor-exit v4

    return-void

    :catchall_5
    move-exception p0

    monitor-exit v4

    throw p0
.end method

.method private static isExcludedToken(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 429
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternUrl:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternUrl:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 431
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-ge p2, v2, :cond_0

    return v0

    :cond_1
    if-eqz p0, :cond_3

    .line 436
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternMaskedPhone:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    .line 437
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternMaskedPhone:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 438
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt p2, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    if-gt p2, v2, :cond_2

    return v0

    .line 443
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p3, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p4, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_5

    .line 444
    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 445
    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 446
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    :cond_5
    add-int/lit8 v1, p2, -0x6

    const/4 v2, 0x0

    .line 450
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p4, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_7

    .line 451
    iget-object v3, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 452
    iget-object p0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v0

    .line 457
    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p3, p0, :cond_8

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p3, 0x3a

    if-ne p0, p3, :cond_8

    return v0

    :cond_8
    sget-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->P_PHONE:Ljava/util/regex/Pattern;

    .line 459
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_9

    return v0

    :cond_9
    if-lez p2, :cond_a

    sub-int/2addr p2, v0

    .line 461
    invoke-virtual {p4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2a

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    return v2
.end method

.method public static loadUserRules(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/github/okaidev/pickupcode/UserRules$Rule;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 494
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    sput-object p1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    return-void
.end method

.method private static loadUserRulesInternal(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PICKUPDEBUG"

    const-string v1, "PickupExtractor: loaded "

    .line 117
    :try_start_0
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {p0}, Lio/github/okaidev/pickupcode/UserRules;->loadAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lio/github/okaidev/pickupcode/UserRules;->loadForSystemProcess()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 123
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    sput-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    sget-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 124
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " user rule(s)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadUserRules failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static lookLikePickupSms(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-static {v0, p0}, Lio/github/okaidev/pickupcode/PickupExtractor;->lookLikePickupSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static lookLikePickupSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 208
    invoke-static {v1, p0, p1}, Lio/github/okaidev/pickupcode/UserRules;->tryMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lio/github/okaidev/pickupcode/PickupExtractor;->activeRules:Lio/github/okaidev/pickupcode/ExtractorRules;

    if-eqz p0, :cond_4

    .line 210
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 212
    :cond_3
    iget-object p0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private static looksLikePlace(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 301
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u7ea2\u5305"

    .line 305
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "\u514d\u5355"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "\u5238"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "\u8be6\u60c5\u9875"

    .line 306
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "\u5ba2\u670d"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 511
    :try_start_0
    invoke-static {v0}, Lio/github/okaidev/pickupcode/PickupExtractor;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 510
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 519
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 520
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 522
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static runSmokeTest(Lio/github/okaidev/pickupcode/ExtractorRules;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lio/github/okaidev/pickupcode/PickupExtractor;->SMOKE_TEST_CASES:[[Ljava/lang/String;

    .line 174
    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 175
    aget-object v6, v5, v0

    .line 176
    aget-object v4, v5, v4

    .line 178
    invoke-static {p0, v6}, Lio/github/okaidev/pickupcode/PickupExtractor;->extractWithRules(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v6, "-"

    .line 179
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_1
    const-string v6, ";"

    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 183
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :catchall_0
    return v0
.end method

.method public static userRuleCount()I
    .locals 1

    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/github/okaidev/pickupcode/PickupExtractor;->userRuleCache:Ljava/util/List;

    .line 498
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static validCode(Lio/github/okaidev/pickupcode/ExtractorRules;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternDashShape:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternDashShape:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 472
    :cond_1
    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAlnumShape:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAlnumShape:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method private static window(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sub-int/2addr p1, p3

    .line 477
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 479
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
