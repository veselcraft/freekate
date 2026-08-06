.class public final Lcom/my/target/core/net/a;
.super Ljava/lang/Object;
.source "Hosts.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Lcom/my/target/core/utils/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/my/target/core/net/a;->a:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/my/target/core/net/a;->b:Ljava/lang/String;

    .line 46
    const-string v0, "https://r.my.com/mobile/"

    sput-object v0, Lcom/my/target/core/net/a;->d:Ljava/lang/String;

    .line 47
    const-string v0, "https://ad.mail.ru/mobile/"

    sput-object v0, Lcom/my/target/core/net/a;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/my/target/core/utils/g;

    const-string v1, "https"

    const-string v2, "8b2824c2cb184ce0ac78b82dba46b78a"

    const-string v3, "c4d6345aac3a40b58c75761ab14a9ce8"

    const-string v4, "r.my.com"

    const-string v5, "6"

    invoke-direct/range {v0 .. v5}, Lcom/my/target/core/utils/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/my/target/core/net/a;->e:Lcom/my/target/core/utils/g;

    .line 54
    return-void
.end method

.method public static a()Lcom/my/target/core/utils/g;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/my/target/core/net/a;->e:Lcom/my/target/core/utils/g;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "appwall"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/my/target/core/net/a;->d:Ljava/lang/String;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/my/target/core/net/a;->c:Ljava/lang/String;

    goto :goto_0
.end method
