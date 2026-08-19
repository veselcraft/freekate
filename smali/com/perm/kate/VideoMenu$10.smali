.class Lcom/perm/kate/VideoMenu$10;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;JJ)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$10;->this$0:Lcom/perm/kate/VideoMenu;

    iput-wide p3, p0, Lcom/perm/kate/VideoMenu$10;->val$video_id:J

    iput-wide p5, p0, Lcom/perm/kate/VideoMenu$10;->val$owner_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 388
    check-cast p1, Ljava/lang/Boolean;

    .line 389
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$10;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, p1, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v0, :cond_1

    .line 392
    iget-wide v1, p0, Lcom/perm/kate/VideoMenu$10;->val$video_id:J

    iget-wide v3, p0, Lcom/perm/kate/VideoMenu$10;->val$owner_id:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/perm/kate/VideoMenuCallback;->faveChanged(JJZ)V

    :cond_1
    return-void
.end method
