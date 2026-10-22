.class public Lio/github/okaidev/pickupcode/ExtractorRules;
.super Ljava/lang/Object;
.source "ExtractorRules.java"


# instance fields
.field public actionWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public alnumPatternStr:Ljava/lang/String;

.field public byLookaheadWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public byWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dashPatternStr:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public excludeHeadWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public excludeTailWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extraFeatureWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public featureWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keywordAnchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minAppVersionCode:I

.field public negativeKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient patternAction:Ljava/util/regex/Pattern;

.field public transient patternAlnumShape:Ljava/util/regex/Pattern;

.field public transient patternAnyToken:Ljava/util/regex/Pattern;

.field public transient patternBy:Ljava/util/regex/Pattern;

.field public transient patternCodeToTake:Ljava/util/regex/Pattern;

.field public transient patternDashShape:Ljava/util/regex/Pattern;

.field public transient patternFeature:Ljava/util/regex/Pattern;

.field public transient patternKeyword:Ljava/util/regex/Pattern;

.field public transient patternMaskedPhone:Ljava/util/regex/Pattern;

.field public transient patternNegative:Ljava/util/regex/Pattern;

.field public transient patternPlace:Ljava/util/regex/Pattern;

.field public transient patternPlaceFallback:Ljava/util/regex/Pattern;

.field public transient patternUrl:Ljava/util/regex/Pattern;

.field public placePrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public placeSuffixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    const/16 v0, 0x118

    iput v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->minAppVersionCode:I

    const-string v0, "\u5185\u7f6e\u9ed8\u8ba4\u89c4\u5219\u96c6"

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->description:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    const-string v0, "(?:[A-Za-z]-\\d{1,6}|[A-Za-z]?\\d{1,6})(?:-[A-Za-z]?\\d{1,6}){1,3}"

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->dashPatternStr:Ljava/lang/String;

    const-string v0, "[A-Za-z]?\\d{3,9}"

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->alnumPatternStr:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->extraFeatureWords:Ljava/util/List;

    return-void
.end method

.method public static createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;
    .locals 9

    .line 66
    new-instance v0, Lio/github/okaidev/pickupcode/ExtractorRules;

    invoke-direct {v0}, Lio/github/okaidev/pickupcode/ExtractorRules;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    const/16 v1, 0x125

    iput v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->minAppVersionCode:I

    const-string v1, "\u5185\u7f6e\u9ed8\u8ba4\u63d0\u53d6\u89c4\u5219\u96c6 v4\uff08\u4e25\u683c\u7801\u5f62 + \u6b63\u53cd\u53cc\u5411\u95f8\u95e8 + \u4e09\u5c42\u5224\u5b9a + \u6392\u9664\u8bed\u4e49\u4e0a\u4e0b\u6587\uff09"

    iput-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->description:Ljava/lang/String;

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v2, "\u9a7f\u7ad9"

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v3, "\u5feb\u9012\u67dc"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v3, "\u4e30\u5de2"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v3, "\u83dc\u9e1f"

    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v3, "\u5305\u88f9"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v3, "\u53d6\u4ef6"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v4, "\u53d6\u8d27"

    .line 74
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v5, "\u81ea\u63d0"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u5230\u7ad9"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u9001\u8fbe"

    .line 75
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u5154\u559c"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u5988\u5988\u9a7f\u7ad9"

    .line 76
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u4e2d\u90ae"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u718a\u732b\u5feb\u6536"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u6536\u53d1\u5ba4"

    .line 77
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v6, "\u5feb\u9012"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v7, "\u4ee3\u6536"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v7, "\u6b22\u732b\u9a7f\u7ad9"

    .line 78
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v7, "\u9886\u53d6"

    .line 82
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v7, "\u53d6\u51fa"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v7, "\u51ed"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v3, "\u53ca\u65f6"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v3, "\u5c3d\u5feb"

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v3, "\u901f\u53d6"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v3, "\u51ed\u7801"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v4, "\u51fa\u793a"

    .line 85
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v8, "\u53d6\u4ef6\u7801"

    .line 88
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v8, "\u53d6\u8d27\u7801"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v8, "\u63d0\u53d6\u7801"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v8, "\u81ea\u63d0\u7801"

    .line 89
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v3, "\u52a8\u6001\u53d6\u4ef6\u7801"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v3, "\u53d6\u4ef6\u53f7"

    .line 90
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v3, "\u51ed\u53d6\u4ef6\u7801"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    .line 93
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v3, "\u5230"

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v4, "\u81f3"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v7, "\u53bb"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v7, "\u53d6"

    .line 95
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v7, "\u9886"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v7, "\u7968"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v7, "\u5df2\u5230\u7ad9[\uff0c,\u5305\u5230\u81f3\\s]*"

    .line 98
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v7, "\u5df2\u5230\u8fbe"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v7, "\u5230\u8fbe"

    .line 99
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v7, "\u5df2\u5230"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v3, "\u5728"

    .line 100
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u5e97"

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u7ad9"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u67dc"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u70b9"

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u95e8\u9762\u623f"

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u5c0f\u5e73\u623f"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v3, "\u4e2d\u5fc3"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v2, "\u670d\u52a1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v2, "\u5e7f\u573a"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v2, "\u901f\u9012"

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v2, "\u683c\u53e3"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v2, "\u95e8\u5e97"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5361\u5238"

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u8bdd\u8d39\u5238"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u7ea2\u5305"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u79ef\u5206"

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5546\u57ce"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5151\u6362"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5145\u503c"

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u8bdd\u8d39"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u6d41\u91cf"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u8d26\u6237"

    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u4f59\u989d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u9a8c\u8bc1\u7801"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u94f6\u884c"

    .line 113
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u4fe1\u7528\u5361"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u8d37\u6b3e"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u9a91\u624b"

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5916\u5356"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u95ea\u8d2d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u514d\u5355"

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5ba2\u670d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u9000\u8ba2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5b9e\u9a8c\u5ba4"

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u6fc0\u5149\u5171\u805a\u7126"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u751f\u7269"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5df2\u8d85"

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u6ede\u7559"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u635f\u574f"

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u5ef6\u671f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v2, "\u4fdd\u7ba1\u8d39"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u53f7"

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u680b"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u697c"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5ba4"

    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5c42"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u683c"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5143"

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u6298"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5929"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5c0f\u65f6"

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5206\u949f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u79d2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5c81"

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u6b21"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u4e2a"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u4ef6"

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u5355"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u7c73"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v2, "\u6298\u5238"

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8d85"

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u6ee1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8fc7"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u4f4e\u81f3"

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u9ad8\u8fbe"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u7b2c"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u5171"

    .line 132
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8ba1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u7ea6"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8fd1"

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u4f59"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u5269"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u5355\u53f7"

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8ba2\u5355\u53f7"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8ba2\u5355"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u8fd0\u5355"

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u5feb\u9012\u5355"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v2, "\u5c3e\u53f7"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0}, Lio/github/okaidev/pickupcode/ExtractorRules;->compile()V

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lio/github/okaidev/pickupcode/ExtractorRules;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance p0, Lio/github/okaidev/pickupcode/ExtractorRules;

    invoke-direct {p0}, Lio/github/okaidev/pickupcode/ExtractorRules;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    const-string v1, "minAppVersionCode"

    const/16 v2, 0x118

    .line 145
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->minAppVersionCode:I

    const-string v1, "description"

    const-string v2, ""

    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->description:Ljava/lang/String;

    const-string v1, "featureWords"

    .line 148
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    const-string v1, "actionWords"

    .line 149
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    const-string v1, "keywordAnchors"

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v1, "byWords"

    .line 151
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    const-string v1, "dashPattern"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->dashPatternStr:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->dashPatternStr:Ljava/lang/String;

    const-string v1, "alnumPattern"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->alnumPatternStr:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->alnumPatternStr:Ljava/lang/String;

    const-string v1, "placePrefixes"

    .line 156
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    const-string v1, "placeSuffixes"

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    const-string v1, "negativeKeywords"

    .line 158
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    const-string v1, "excludeTailWords"

    .line 161
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/github/okaidev/pickupcode/ExtractorRules;->createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v1

    iget-object v1, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    :cond_0
    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    const-string v1, "excludeHeadWords"

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lio/github/okaidev/pickupcode/ExtractorRules;->createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v1

    iget-object v1, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    :cond_1
    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    const-string v1, "byLookaheadWords"

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lio/github/okaidev/pickupcode/ExtractorRules;->createDefault()Lio/github/okaidev/pickupcode/ExtractorRules;

    move-result-object v1

    iget-object v1, v1, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    :cond_2
    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    const-string v1, "extraFeatureWords"

    .line 167
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lio/github/okaidev/pickupcode/ExtractorRules;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->extraFeatureWords:Ljava/util/List;

    .line 169
    invoke-virtual {p0}, Lio/github/okaidev/pickupcode/ExtractorRules;->compile()V

    return-object p0
.end method

.method private static jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 262
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 271
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    .line 273
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compile()V
    .locals 8

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->dashPatternStr:Ljava/lang/String;

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->alnumPatternStr:Ljava/lang/String;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    const-string v3, "|"

    .line 207
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(?:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")[\u4e3a\u662f\uff1a:\\s]*[\"\'\u201c\u201d\u300c\u300d\u300a\u300b\u3010\u3011\\[\\]\\s]*([A-Za-z0-9-]{3,20}(?:\\s*[,\uff0c\u3001;\uff1b]\\s*[A-Za-z0-9-]{3,20})*)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternKeyword:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    .line 212
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 213
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ""

    iget-object v6, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    .line 215
    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "\u5230\u53bb\u53d6\u9886\u53d6\u7968\u81f3"

    .line 216
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")[\\s\"\'\u201c\u201d\u300c\u300d\u300a\u300b\u3010\u3011\\[\\]]*("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")(?=[\\s\"\'\u201c\u201d\u300c\u300d\u300a\u300b\u3010\u3011\\[\\]\uff0c\u3002,]|["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]|$)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternBy:Ljava/util/regex/Pattern;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "(?<![A-Za-z0-9-])("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")(?![A-Za-z0-9-])"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAnyToken:Ljava/util/regex/Pattern;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    invoke-static {v3, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->extraFeatureWords:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 226
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->extraFeatureWords:Ljava/util/List;

    invoke-static {v3, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternFeature:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    .line 230
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAction:Ljava/util/regex/Pattern;

    .line 232
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternDashShape:Ljava/util/regex/Pattern;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "$"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternAlnumShape:Ljava/util/regex/Pattern;

    const-string v2, "https?://\\S+"

    .line 236
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternUrl:Ljava/util/regex/Pattern;

    const-string v2, "1[3-9]\\d\\*{2,}\\d{2,4}"

    .line 237
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternMaskedPhone:Ljava/util/regex/Pattern;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(?![A-Za-z0-9-])[^\uff0c\u3002\uff1b]{0,4}?(?:\u5230|\u81f3)[^\uff0c\u3002\uff1b]{2,30}?\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternCodeToTake:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    .line 245
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    .line 246
    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")([\\u4e00-\\u9fa5A-Za-z0-9]{2,30}?(?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?:\u5df2\u5230\u8fbe|\u5230\u8fbe|\u5df2\u5230|\u5230|\u81f3)([\\u4e00-\\u9fa5A-Za-z0-9]{2,30}?)(?=\u53d6|\u9886\u53d6|\u53d6\u4ef6|\u53d6\u8d27|\uff0c|\u3002|,|$)"

    .line 249
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlace:Ljava/util/regex/Pattern;

    .line 250
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternPlaceFallback:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    .line 253
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternNegative:Ljava/util/regex/Pattern;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->patternNegative:Ljava/util/regex/Pattern;

    :goto_2
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    iget v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->version:I

    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "minAppVersionCode"

    iget v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->minAppVersionCode:I

    .line 177
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "description"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->description:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "featureWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->featureWords:Ljava/util/List;

    .line 180
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "actionWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->actionWords:Ljava/util/List;

    .line 181
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "keywordAnchors"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->keywordAnchors:Ljava/util/List;

    .line 182
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "byWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byWords:Ljava/util/List;

    .line 183
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dashPattern"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->dashPatternStr:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alnumPattern"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->alnumPatternStr:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placePrefixes"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placePrefixes:Ljava/util/List;

    .line 188
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placeSuffixes"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->placeSuffixes:Ljava/util/List;

    .line 189
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "negativeKeywords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->negativeKeywords:Ljava/util/List;

    .line 190
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "excludeTailWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeTailWords:Ljava/util/List;

    .line 191
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "excludeHeadWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->excludeHeadWords:Ljava/util/List;

    .line 192
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "byLookaheadWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->byLookaheadWords:Ljava/util/List;

    .line 193
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extraFeatureWords"

    iget-object v2, p0, Lio/github/okaidev/pickupcode/ExtractorRules;->extraFeatureWords:Ljava/util/List;

    .line 194
    invoke-static {v2}, Lio/github/okaidev/pickupcode/ExtractorRules;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 196
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "{}"

    return-object v0
.end method
