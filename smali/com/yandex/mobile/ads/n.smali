.class public Lcom/yandex/mobile/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/Integer;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/r;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/mobile/ads/AdSize;

.field private final e:I

.field private final f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/n;->a:Ljava/lang/Integer;

    .line 267
    new-instance v0, Lcom/yandex/mobile/ads/n$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/n$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->b:Lcom/yandex/mobile/ads/r;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->c:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/AdSize;

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->d:Lcom/yandex/mobile/ads/AdSize;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->e:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->g:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->h:Ljava/util/List;

    .line 255
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->h:Ljava/util/List;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->i:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->i:Ljava/util/List;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->j:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->l:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->m:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 264
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/n;->n:Ljava/lang/Object;

    .line 265
    return-void

    .line 248
    :cond_1
    invoke-static {}, Lcom/yandex/mobile/ads/r;->values()[Lcom/yandex/mobile/ads/r;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/n$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/n$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->a(Lcom/yandex/mobile/ads/n$a;)Lcom/yandex/mobile/ads/r;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->b:Lcom/yandex/mobile/ads/r;

    .line 37
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->b(Lcom/yandex/mobile/ads/n$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->c:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->c(Lcom/yandex/mobile/ads/n$a;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->e:I

    .line 40
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->d(Lcom/yandex/mobile/ads/n$a;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    .line 41
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    iget v1, p0, Lcom/yandex/mobile/ads/n;->e:I

    iget v2, p0, Lcom/yandex/mobile/ads/n;->f:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->e(Lcom/yandex/mobile/ads/n$a;)Lcom/yandex/mobile/ads/v$a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->d:Lcom/yandex/mobile/ads/AdSize;

    .line 43
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->f(Lcom/yandex/mobile/ads/n$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->g:Ljava/util/List;

    .line 44
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->g(Lcom/yandex/mobile/ads/n$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->h:Ljava/util/List;

    .line 45
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->h(Lcom/yandex/mobile/ads/n$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->i:Ljava/util/List;

    .line 47
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->i(Lcom/yandex/mobile/ads/n$a;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->j:I

    .line 48
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->j(Lcom/yandex/mobile/ads/n$a;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    .line 49
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->k(Lcom/yandex/mobile/ads/n$a;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/n;->l:I

    .line 51
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->l(Lcom/yandex/mobile/ads/n$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->m:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/yandex/mobile/ads/n$a;->m(Lcom/yandex/mobile/ads/n$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/n;->n:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/n$a;B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/n;-><init>(Lcom/yandex/mobile/ads/n$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/yandex/mobile/ads/n;->e:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public b()Lcom/yandex/mobile/ads/AdSize;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->d:Lcom/yandex/mobile/ads/AdSize;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/yandex/mobile/ads/n;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->h:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->i:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/yandex/mobile/ads/n;->j:I

    return v0
.end method

.method j()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/yandex/mobile/ads/n;->l:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 228
    .local p0, "this":Lcom/yandex/mobile/ads/n;, "Lcom/yandex/mobile/ads/n<TT;>;"
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->b:Lcom/yandex/mobile/ads/r;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->d:Lcom/yandex/mobile/ads/AdSize;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 231
    iget v0, p0, Lcom/yandex/mobile/ads/n;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/yandex/mobile/ads/n;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 236
    iget v0, p0, Lcom/yandex/mobile/ads/n;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/yandex/mobile/ads/n;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/yandex/mobile/ads/n;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 243
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 244
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/n;->b:Lcom/yandex/mobile/ads/r;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/r;->ordinal()I

    move-result v0

    goto :goto_0
.end method
