.class Lcom/perm/kate/AttachmentsHelper$1;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$1;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Video;

    .line 386
    .local v6, "video":Lcom/perm/kate/api/Video;
    iget-wide v0, v6, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v2, v6, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object v4, v6, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/AttachmentsHelper$1;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v5, v5, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 387
    return-void
.end method
