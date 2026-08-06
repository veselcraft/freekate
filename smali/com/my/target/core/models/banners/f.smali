.class public final Lcom/my/target/core/models/banners/f;
.super Lcom/my/target/core/models/banners/a;
.source "FSImageBanner.java"


# instance fields
.field private a:Lcom/my/target/nativeads/models/ImageData;

.field private b:Lcom/my/target/nativeads/models/ImageData;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/my/target/nativeads/models/ImageData;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/models/banners/f;->f:Z

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/my/target/core/models/banners/f;->e:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/my/target/core/models/banners/f;->e:Lcom/my/target/nativeads/models/ImageData;

    .line 67
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/my/target/core/models/banners/f;->c:Ljava/util/List;

    .line 82
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/f;->f:Z

    .line 49
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/my/target/core/models/banners/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/my/target/core/models/banners/f;->a:Lcom/my/target/nativeads/models/ImageData;

    .line 102
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/my/target/core/models/banners/f;->d:Ljava/util/List;

    .line 92
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/my/target/core/models/banners/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/my/target/core/models/banners/f;->b:Lcom/my/target/nativeads/models/ImageData;

    .line 112
    return-void
.end method

.method public final d()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/my/target/core/models/banners/f;->a:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final e()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/my/target/core/models/banners/f;->b:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method
