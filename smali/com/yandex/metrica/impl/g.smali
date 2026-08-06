.class public Lcom/yandex/metrica/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/g$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Z

.field private e:Lcom/yandex/metrica/impl/g$a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/g$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/g$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    .line 60
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/g;->d:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/g;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/g$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/g$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    .line 60
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/g;->d:Z

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/g;->c:I

    .line 69
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->f:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->h:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->g:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->d()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/g$a;->a:Landroid/location/Location;

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/g$a;->b:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->g()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/g$a;->c:Ljava/lang/Integer;

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->i()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    .line 76
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/g;->d:Z

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/g$a;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/g$a;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    .line 60
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/g;->d:Z

    .line 87
    iput-object p2, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/yandex/metrica/impl/g;->c:I

    .line 89
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/yandex/metrica/impl/g;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/g;)V

    .line 265
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 266
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    .line 267
    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->m()Landroid/content/Context;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/yandex/metrica/impl/u;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/u;->a()Lcom/yandex/metrica/impl/u;

    move-result-object v1

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/u;->b(Landroid/content/Context;)Lcom/yandex/metrica/impl/u;

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/az;->D()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/u;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/u;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_1
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/g;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/g;)V

    .line 300
    sget-object v2, Lcom/yandex/metrica/impl/q$a;->r:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 301
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/g;
    .locals 4

    .prologue
    .line 247
    const-string v0, "CounterReport.Object"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CounterReport.Object"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 249
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/g;-><init>()V

    const-string v2, "CounterReport.Type"

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.GeoLocation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/z;->a([B)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->a(Landroid/location/Location;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.Value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.Environment"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.Wifi"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v2

    const-string v0, "CounterReport.CellId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.Event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.PackageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/g;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v2, "CounterReport.AppEnvironmentDiff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    const-string v2, "CounterReport.TRUNCATED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->a(Z)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v1, "CounterReport.Event"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "CounterReport.Value"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "CounterReport.Type"

    iget v2, p0, Lcom/yandex/metrica/impl/g;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "CounterReport.Wifi"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "CounterReport.GeoLocation"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/g$a;->a:Landroid/location/Location;

    invoke-static {v2}, Lcom/yandex/metrica/impl/z;->b(Landroid/location/Location;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 223
    const-string v1, "CounterReport.TRUNCATED"

    iget-boolean v2, p0, Lcom/yandex/metrica/impl/g;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/g$a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "CounterReport.CellId"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/g$a;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "CounterReport.Environment"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 232
    const-string v1, "CounterReport.UserInfo"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 235
    const-string v1, "CounterReport.PackageName"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 238
    const-string v1, "CounterReport.AppEnvironmentDiff"

    iget-object v2, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    :cond_4
    if-eqz p1, :cond_5

    .line 242
    :goto_0
    const-string v1, "CounterReport.Object"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 243
    return-object p1

    .line 241
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public a(I)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/yandex/metrica/impl/g;->c:I

    .line 116
    return-object p0
.end method

.method a(Landroid/location/Location;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/g$a;->a:Landroid/location/Location;

    .line 125
    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/g$a;->c:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->f:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object p0
.end method

.method protected a(Z)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/g;->d:Z

    .line 200
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/yandex/metrica/impl/g;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/g$a;->a:Landroid/location/Location;

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iput-object p1, v0, Lcom/yandex/metrica/impl/g$a;->b:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->g:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/g$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->h:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method f()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/g$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->e:Lcom/yandex/metrica/impl/g$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/g$a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/g;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/g;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 310
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[event: %s, type: %d, value: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yandex/metrica/impl/g;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yandex/metrica/impl/g;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
