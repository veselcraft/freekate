.class public final Lcom/inmobi/commons/core/configs/g$b;
.super Ljava/lang/Object;
.source "RootConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->a:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/inmobi/commons/a/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/g$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/commons/core/configs/g$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/configs/g$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/g$b;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g$b;->b:Ljava/lang/String;

    return-object v0
.end method
