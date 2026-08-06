.class final Lcom/perm/kate/StickerHints$3;
.super Ljava/lang/Thread;
.source "StickerHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StickerHints;->refreshInThread(JLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/StickerHints$3;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/perm/kate/StickerHints$3;->val$account_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/perm/kate/StickerHints$3;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/perm/kate/StickerHints$3;->val$account_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/StickerHints;->access$100(Landroid/app/Activity;J)V

    .line 75
    return-void
.end method
