.class public Lcom/inmobi/commons/core/utilities/a/a;
.super Ljava/lang/Object;
.source "EncryptionDao.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "aes_key_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/a/a;->a:Lcom/inmobi/commons/core/b/c;

    .line 22
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "aes_key_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "aes_public_key"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "last_generated_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;J)V

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "aes_public_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "last_generated_ts"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
