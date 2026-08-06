.class public final Lcom/yandex/metrica/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->m:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->u:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->v:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/q;->a:Ljava/util/EnumSet;

    .line 118
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->k:Lcom/yandex/metrica/impl/q$a;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->l:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->r:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->b:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->p:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/q;->b:Ljava/util/EnumSet;

    .line 135
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->e:Lcom/yandex/metrica/impl/q$a;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->k:Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->l:Lcom/yandex/metrica/impl/q$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/q;->c:Ljava/util/EnumSet;

    .line 142
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->u:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->v:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->p:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/q;->d:Ljava/util/EnumSet;

    .line 156
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->f:Lcom/yandex/metrica/impl/q$a;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->y:Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->g:Lcom/yandex/metrica/impl/q$a;

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->o:Lcom/yandex/metrica/impl/q$a;

    sget-object v4, Lcom/yandex/metrica/impl/q$a;->c:Lcom/yandex/metrica/impl/q$a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/q;->e:Ljava/util/EnumSet;

    return-void
.end method

.method static a()Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/g;
    .locals 4

    .prologue
    .line 234
    if-nez p0, :cond_0

    const-string v0, ""

    .line 235
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/e;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ak;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/yandex/metrica/impl/q$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->c:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->c:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/yandex/metrica/impl/q;->c:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/q$a;->a(I)Lcom/yandex/metrica/impl/q$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/yandex/metrica/impl/g;)Z
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->k:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->l:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/yandex/metrica/impl/q$a;)Z
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/yandex/metrica/impl/q;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->B:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->g:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(I)Z
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/yandex/metrica/impl/q;->e:Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/yandex/metrica/impl/q$a;->a(I)Lcom/yandex/metrica/impl/q$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/yandex/metrica/impl/q$a;)Z
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/yandex/metrica/impl/q;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->e:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/yandex/metrica/impl/e;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->y:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Lcom/yandex/metrica/impl/q$a;)Z
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/yandex/metrica/impl/q;->d:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/yandex/metrica/impl/e;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/yandex/metrica/impl/e;

    const-string v1, ""

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
