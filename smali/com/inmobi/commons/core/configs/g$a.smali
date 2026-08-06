.class final Lcom/inmobi/commons/core/configs/g$a;
.super Ljava/lang/Object;
.source "RootConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g$a;J)J
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/g$a;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/g$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/commons/core/configs/g$a;)J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/g$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/g$a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/g$a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/g$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$a;->d:Ljava/lang/String;

    return-object v0
.end method
