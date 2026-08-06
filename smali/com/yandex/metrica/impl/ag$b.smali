.class Lcom/yandex/metrica/impl/ag$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ah;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ah;)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/yandex/metrica/impl/ag$b;->a:Lcom/yandex/metrica/impl/ah;

    .line 259
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag$b;->b:Ljava/lang/String;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ah;B)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ag$b;-><init>(Lcom/yandex/metrica/impl/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ag$b;)Lcom/yandex/metrica/impl/ah;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$b;->a:Lcom/yandex/metrica/impl/ah;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-ne p0, p1, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 274
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 268
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_2
    check-cast p1, Lcom/yandex/metrica/impl/ag$b;

    .line 274
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ag$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
