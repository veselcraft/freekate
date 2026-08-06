.class final Lcom/perm/kate/StickerHints$1;
.super Ljava/lang/Thread;
.source "StickerHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StickerHints;->initIfRequired(JLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(JLandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    iput-object p3, p0, Lcom/perm/kate/StickerHints$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-wide v2, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/StickerHints;->access$000(J)Ljava/util/HashMap;

    move-result-object v0

    .line 40
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/StickerHints$1;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$1;->val$account_id:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/StickerHints;->access$100(Landroid/app/Activity;J)V

    goto :goto_0
.end method
