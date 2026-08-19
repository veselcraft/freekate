.class Lcom/perm/kate/StickerHints$3;
.super Ljava/lang/Thread;
.source "StickerHints.java"


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/perm/kate/StickerHints$3;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/perm/kate/StickerHints$3;->val$account_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/perm/kate/StickerHints$3;->val$activity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/perm/kate/StickerHints$3;->val$account_id:J

    invoke-static {v0, v1, v2}, Lcom/perm/kate/StickerHints;->access$100(Landroid/app/Activity;J)V

    return-void
.end method
