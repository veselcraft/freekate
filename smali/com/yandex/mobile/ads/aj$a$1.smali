.class Lcom/yandex/mobile/ads/aj$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/aj$a;->onAdRender(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yandex/mobile/ads/aj$a;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/aj$a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yandex/mobile/ads/aj$a$1;->c:Lcom/yandex/mobile/ads/aj$a;

    iput p2, p0, Lcom/yandex/mobile/ads/aj$a$1;->a:I

    iput-object p3, p0, Lcom/yandex/mobile/ads/aj$a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdRender, height = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/mobile/ads/aj$a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/aj$a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj$a$1;->c:Lcom/yandex/mobile/ads/aj$a;

    iget-object v0, v0, Lcom/yandex/mobile/ads/aj$a;->b:Lcom/yandex/mobile/ads/aj;

    iget v1, p0, Lcom/yandex/mobile/ads/aj$a$1;->a:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/aj$a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/aj;->a(ILjava/lang/String;)V

    .line 141
    return-void
.end method
