.class Lcom/yandex/metrica/impl/NativeCrashesHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/NativeCrashesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ay;

.field private final c:Lcom/yandex/metrica/impl/NativeCrashesHelper;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/NativeCrashesHelper;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Lcom/yandex/metrica/impl/NativeCrashesHelper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->a:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->b:Lcom/yandex/metrica/impl/ay;

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    :try_start_0
    invoke-static {v3}, Lcom/yandex/metrica/impl/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Lcom/yandex/metrica/impl/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_0

    .line 153
    iget-object v5, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 160
    throw v0

    .line 162
    :cond_1
    return-void
.end method
