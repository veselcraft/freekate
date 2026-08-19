.class Lcom/perm/kate/AttachmentsHelper$1;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$1;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 479
    iget-wide v1, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v3, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object v5, v0, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$1;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v6, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    const v0, 0x7f090008

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09000b

    .line 482
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f090016

    .line 483
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 484
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    invoke-static {v0, v1, p1}, Lcom/perm/utils/AdEvents;->reportVideoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
