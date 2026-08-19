.class Lcom/perm/kate/StickerHints$1;
.super Ljava/lang/Thread;
.source "StickerHints.java"


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(JLandroid/app/Activity;)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    iput-object p3, p0, Lcom/perm/kate/StickerHints$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/StickerHints;->access$000(J)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StickerHints$1;->val$activity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v0, v1, v2}, Lcom/perm/kate/StickerHints;->access$100(Landroid/app/Activity;J)V

    return-void
.end method
