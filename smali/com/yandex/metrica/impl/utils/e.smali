.class public final Lcom/yandex/metrica/impl/utils/e;
.super Lcom/yandex/metrica/impl/utils/a;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:Lcom/yandex/metrica/impl/utils/e;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yandex/metrica/impl/utils/e;->a:[I

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/utils/e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/e;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/utils/e;->b:Lcom/yandex/metrica/impl/utils/e;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/yandex/metrica/impl/utils/e;->c:Ljava/lang/String;

    return-void

    .line 28
    :array_0
    .array-data 4
        0x3
        0x6
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/utils/a;-><init>(Z)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 45
    const-string v0, "[%s] : "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/utils/e;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static e()Lcom/yandex/metrica/impl/utils/e;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/utils/e;->b:Lcom/yandex/metrica/impl/utils/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/c$a$f$a;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget-object v3, Lcom/yandex/metrica/impl/utils/e;->a:[I

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget v5, v3, v0

    iget v6, p1, Lcom/yandex/metrica/c$a$f$a;->d:I

    if-ne v6, v5, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 71
    const-string v3, "%s: %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    iget v0, p1, Lcom/yandex/metrica/c$a$f$a;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yandex/metrica/impl/q$a;->o:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public a(Lcom/yandex/metrica/c$a$f;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p1, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 91
    invoke-virtual {p0, v3, p2}, Lcom/yandex/metrica/impl/utils/e;->a(Lcom/yandex/metrica/c$a$f$a;Ljava/lang/String;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/g;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "AppMetrica"

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/utils/e;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
