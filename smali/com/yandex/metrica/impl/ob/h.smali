.class public Lcom/yandex/metrica/impl/ob/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/h;->a:Z

    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/h;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/h;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 69
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-static {p0, p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v1, Lcom/yandex/metrica/impl/ob/h;

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/h;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p3

    .line 65
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/ob/h;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/impl/ob/h;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/h;->b:Ljava/lang/String;

    .line 45
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/h;->a:Z

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method
