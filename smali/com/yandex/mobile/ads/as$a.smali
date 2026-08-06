.class Lcom/yandex/mobile/ads/as$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/yandex/mobile/ads/as$a;->a:Ljava/lang/String;

    .line 311
    iput-wide p2, p0, Lcom/yandex/mobile/ads/as$a;->b:J

    .line 312
    iput p4, p0, Lcom/yandex/mobile/ads/as$a;->c:I

    .line 313
    return-void
.end method
