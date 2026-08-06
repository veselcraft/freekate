.class final Lcom/yandex/mobile/ads/utils/d$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6211abc03d1fdb1eL


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/utils/d$2;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/utils/d$2;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method
