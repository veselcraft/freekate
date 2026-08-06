.class public Lcom/inmobi/signals/a;
.super Ljava/lang/Object;
.source "CarbDao.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "carb_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/b/c;

    .line 21
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "carb_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "carb_last_update_ts"

    invoke-virtual {v0, v1, p1, p2}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;J)V

    .line 29
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/b/c;

    const-string v1, "carb_last_update_ts"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
