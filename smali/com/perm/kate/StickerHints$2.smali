.class Lcom/perm/kate/StickerHints$2;
.super Lcom/perm/kate/session/Callback;
.source "StickerHints.java"


# instance fields
.field final synthetic val$account_id:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .line 52
    iput-wide p2, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 66
    sget-object p1, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v0, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v0, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 55
    check-cast p1, Lcom/perm/kate/api/StickersKeywords;

    .line 56
    sget-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p1, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p1, p1, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    iget-wide v0, p0, Lcom/perm/kate/StickerHints$2;->val$account_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/StickerHints;->access$200(Ljava/util/HashMap;J)V

    :cond_0
    return-void
.end method
