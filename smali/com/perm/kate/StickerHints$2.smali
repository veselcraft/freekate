.class final Lcom/perm/kate/StickerHints$2;
.super Lcom/perm/kate/session/Callback;
.source "StickerHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StickerHints;->refresh(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account_id:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    iput-wide p2, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 65
    sget-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/StickersKeywords;

    .line 56
    .local v0, "sk":Lcom/perm/kate/api/StickersKeywords;
    sget-object v1, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, v0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/StickerHints;->access$200(Ljava/util/HashMap;J)V

    .line 60
    :cond_0
    return-void
.end method
