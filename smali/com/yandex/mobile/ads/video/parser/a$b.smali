.class Lcom/yandex/mobile/ads/video/parser/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/parser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

.field private b:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/parser/a$b;->a:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    .line 635
    iput-object p2, p0, Lcom/yandex/mobile/ads/video/parser/a$b;->b:Lorg/xmlpull/v1/XmlPullParser;

    .line 636
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lorg/xmlpull/v1/XmlPullParser;B)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/video/parser/a$b;-><init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/video/parser/a$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/parser/a$b;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/video/parser/a;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/parser/a$b;->a:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/mobile/ads/video/parser/a$b;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/yandex/mobile/ads/video/parser/a;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p2, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
